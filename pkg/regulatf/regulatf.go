package regulatf

import (
	"fmt"
	"os"

	"github.com/hashicorp/hcl/v2"
	"github.com/zclconf/go-cty/cty"

	"github.com/fugue/regula/pkg/terraform/configs"
	"github.com/fugue/regula/pkg/terraform/lang"

	"github.com/fugue/regula/pkg/topsort"
)

type Analysis struct {
	Modules     map[string]*ModuleMeta
	Resources   map[string]*configs.Resource
	Expressions map[string]hcl.Expression
}

func AnalyzeModuleTree(mtree *ModuleTree) *Analysis {
	analysis := &Analysis{
		Modules:     map[string]*ModuleMeta{},
		Resources:   map[string]*configs.Resource{},
		Expressions: map[string]hcl.Expression{},
	}
	mtree.Walk(analysis)
	return analysis
}

func (v *Analysis) VisitModule(name ModuleName, meta *ModuleMeta) {
	v.Modules[ModuleNameToString(name)] = meta
}

func (v *Analysis) VisitResource(name FullName, resource *configs.Resource) {
	v.Resources[name.ToString()] = resource
}

func (v *Analysis) VisitExpr(name FullName, expr hcl.Expression) {
	v.Expressions[name.ToString()] = expr
}

type dependency struct {
	destination FullName
	source      *FullName
	value       *cty.Value
}

// Iterate all dependencies of a the given expression with the given name.
func (v *Analysis) dependencies(name FullName, expr hcl.Expression) []dependency {
	deps := []dependency{}
	for _, traversal := range expr.Variables() {
		local, err := TraversalToLocalName(traversal)
		if err != nil {
			fmt.Fprintf(os.Stderr, "Skipping dependency with bad key: %s\n", err)
			continue
		}
		full := FullName{Module: name.Module, Local: local}
		fmt.Fprintf(os.Stderr, "- %s\n", full.ToString())
		_, exists := v.Expressions[full.ToString()]

		if exists {
			deps = append(deps, dependency{full, &full, nil})
		} else if moduleOutput := full.AsModuleOutput(); moduleOutput != nil {
			// Rewrite module outputs.
			fmt.Fprintf(os.Stderr, "-> %s\n", moduleOutput.ToString())
			deps = append(deps, dependency{full, moduleOutput, nil})
		} else if asDefault := full.AsDefault(); asDefault != nil {
			// Rewrite variables.
			fmt.Fprintf(os.Stderr, "-> %s\n", asDefault.ToString())
			deps = append(deps, dependency{full, asDefault, nil})
		} else if len(local) > 2 {
			resourceName := FullName{name.Module, local[:2]}
			resourceKey := resourceName.ToString()
			if _, ok := v.Resources[resourceKey]; ok {
				fmt.Fprintf(os.Stderr, "Found reference to resource %s\n", resourceName.ToString())
				val := cty.StringVal(resourceKey)
				deps = append(deps, dependency{full, nil, &val})
			}
		}
	}
	return deps
}

// Iterate all expressions to be evaluated in the "correct" order.
func (v *Analysis) order() ([]FullName, error) {
	graph := map[string][]string{}
	for key, expr := range v.Expressions {
		name, err := StringToFullName(key)
		if err != nil {
			fmt.Fprintf(os.Stderr, "Skipping expression with bad key %s: %s\n", key, err)
			continue
		}

		graph[key] = []string{}
		for _, dep := range v.dependencies(*name, expr) {
			if dep.source != nil {
				graph[key] = append(graph[key], dep.source.ToString())
			}
		}
	}

	sorted, err := topsort.Topsort(graph)
	if err != nil {
		return nil, err
	}

	sortedNames := []FullName{}
	for _, key := range sorted {
		name, err := StringToFullName(key)
		if err != nil {
			fmt.Fprintf(os.Stderr, "Skipping sorted with bad key: %s: %s\n", key, err)
			continue
		}
		sortedNames = append(sortedNames, *name)
	}
	return sortedNames, nil
}

type Evaluation struct {
	Analysis *Analysis
	Modules  map[string]ValTree
}

func EvaluateAnalysis(analysis *Analysis) (*Evaluation, error) {
	eval := &Evaluation{
		Analysis: analysis,
		Modules:  map[string]ValTree{},
	}

	for moduleKey, _ := range analysis.Modules {
		eval.Modules[moduleKey] = EmptyObjectValTree()
	}

	if err := eval.evaluate(); err != nil {
		return nil, err
	}

	return eval, nil
}

func (v *Evaluation) prepareVariables(name FullName, expr hcl.Expression) ValTree {
	sparse := EmptyObjectValTree()
	for _, dep := range v.Analysis.dependencies(name, expr) {
		var dependency ValTree
		if dep.source != nil {
			sourceModule := ModuleNameToString(dep.source.Module)
			dependency = BuildValTree(
				dep.destination.Local,
				LookupValTree(v.Modules[sourceModule], dep.source.Local),
			)
		} else if dep.value != nil {
			dependency = SingletonValTree(dep.destination.Local, *dep.value)
		}
		if dependency != nil {
			sparse = MergeValTree(sparse, dependency)
		}
	}
	return sparse
}

func (v *Evaluation) evaluate() error {
	order, err := v.Analysis.order()
	if err != nil {
		return err
	}

	for _, name := range order {
		expr := v.Analysis.Expressions[name.ToString()]
		moduleKey := ModuleNameToString(name.Module)

		variables := v.prepareVariables(name, expr)
		fmt.Fprintf(os.Stderr, "    Context: %s\n", PrettyValTree(variables))

		data := Data{}
		scope := lang.Scope{
			Data:     &data,
			SelfAddr: nil,
			PureOnly: false,
		}
		ctx := hcl.EvalContext{
			Functions: scope.Functions(),
			Variables: ValTreeToVariables(variables),
		}

		val, diags := expr.Value(&ctx)
		if diags.HasErrors() {
			fmt.Fprintf(os.Stderr, "    Value() error: %s\n", diags)
			continue
		}

		singleton := SingletonValTree(name.Local, val)
		v.Modules[moduleKey] = MergeValTree(v.Modules[moduleKey], singleton)
	}

	for moduleKey, tree := range v.Modules {
		fmt.Fprintf(os.Stderr, "%s: %s\n", moduleKey, PrettyValTree(tree))
	}

	return nil
}

func (v *Evaluation) RegulaInput() map[string]interface{} {
	input := map[string]interface{}{}
	for moduleKey, valTree := range v.Modules {
		input[moduleKey] = ValueToInterface(ValTreeToValue(valTree))
	}
	return input
}
