# Copyright 2020 Fugue, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This package was automatically generated from:
#
#     tests/rules/aws/inputs/security_group_ingress_anywhere_infra.tf
#
# using `generate_test_inputs.sh` and should not be modified
# directly.
package tests.rules.aws.inputs.security_group_ingress_anywhere_infra
mock_input = {
  "format_version": "0.1",
  "terraform_version": "0.12.18",
  "planned_values": {
    "root_module": {
      "resources": [
        {
          "address": "aws_security_group.invalid_allow_all",
          "mode": "managed",
          "type": "aws_security_group",
          "name": "invalid_allow_all",
          "provider_name": "aws",
          "schema_version": 1,
          "values": {
            "description": "Managed by Terraform",
            "ingress": [
              {
                "cidr_blocks": [
                  "0.0.0.0/0"
                ],
                "description": "",
                "from_port": 0,
                "ipv6_cidr_blocks": [],
                "prefix_list_ids": [],
                "protocol": "tcp",
                "security_groups": [],
                "self": false,
                "to_port": 65535
              }
            ],
            "name": "invalid_allow_all",
            "name_prefix": null,
            "revoke_rules_on_delete": false,
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "aws_security_group.invalid_include_443",
          "mode": "managed",
          "type": "aws_security_group",
          "name": "invalid_include_443",
          "provider_name": "aws",
          "schema_version": 1,
          "values": {
            "description": "Managed by Terraform",
            "ingress": [
              {
                "cidr_blocks": [
                  "0.0.0.0/0"
                ],
                "description": "",
                "from_port": 442,
                "ipv6_cidr_blocks": [],
                "prefix_list_ids": [],
                "protocol": "tcp",
                "security_groups": [],
                "self": false,
                "to_port": 444
              }
            ],
            "name": "invalid_include_valid_443",
            "name_prefix": null,
            "revoke_rules_on_delete": false,
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "aws_security_group.invalid_include_80",
          "mode": "managed",
          "type": "aws_security_group",
          "name": "invalid_include_80",
          "provider_name": "aws",
          "schema_version": 1,
          "values": {
            "description": "Managed by Terraform",
            "ingress": [
              {
                "cidr_blocks": [
                  "0.0.0.0/0"
                ],
                "description": "",
                "from_port": 79,
                "ipv6_cidr_blocks": [],
                "prefix_list_ids": [],
                "protocol": "tcp",
                "security_groups": [],
                "self": false,
                "to_port": 81
              }
            ],
            "name": "invalid_include_valid_80",
            "name_prefix": null,
            "revoke_rules_on_delete": false,
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "aws_security_group.valid_exact_443",
          "mode": "managed",
          "type": "aws_security_group",
          "name": "valid_exact_443",
          "provider_name": "aws",
          "schema_version": 1,
          "values": {
            "description": "Managed by Terraform",
            "ingress": [
              {
                "cidr_blocks": [
                  "0.0.0.0/0"
                ],
                "description": "",
                "from_port": 443,
                "ipv6_cidr_blocks": [],
                "prefix_list_ids": [],
                "protocol": "tcp",
                "security_groups": [],
                "self": false,
                "to_port": 443
              }
            ],
            "name": "valid_exact_443",
            "name_prefix": null,
            "revoke_rules_on_delete": false,
            "tags": null,
            "timeouts": null
          }
        },
        {
          "address": "aws_security_group.valid_exact_80",
          "mode": "managed",
          "type": "aws_security_group",
          "name": "valid_exact_80",
          "provider_name": "aws",
          "schema_version": 1,
          "values": {
            "description": "Managed by Terraform",
            "ingress": [
              {
                "cidr_blocks": [
                  "0.0.0.0/0"
                ],
                "description": "",
                "from_port": 80,
                "ipv6_cidr_blocks": [],
                "prefix_list_ids": [],
                "protocol": "tcp",
                "security_groups": [],
                "self": false,
                "to_port": 80
              }
            ],
            "name": "valid_exact_80",
            "name_prefix": null,
            "revoke_rules_on_delete": false,
            "tags": null,
            "timeouts": null
          }
        }
      ]
    }
  },
  "resource_changes": [
    {
      "address": "aws_security_group.invalid_allow_all",
      "mode": "managed",
      "type": "aws_security_group",
      "name": "invalid_allow_all",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "description": "Managed by Terraform",
          "ingress": [
            {
              "cidr_blocks": [
                "0.0.0.0/0"
              ],
              "description": "",
              "from_port": 0,
              "ipv6_cidr_blocks": [],
              "prefix_list_ids": [],
              "protocol": "tcp",
              "security_groups": [],
              "self": false,
              "to_port": 65535
            }
          ],
          "name": "invalid_allow_all",
          "name_prefix": null,
          "revoke_rules_on_delete": false,
          "tags": null,
          "timeouts": null
        },
        "after_unknown": {
          "arn": true,
          "egress": true,
          "id": true,
          "ingress": [
            {
              "cidr_blocks": [
                false
              ],
              "ipv6_cidr_blocks": [],
              "prefix_list_ids": [],
              "security_groups": []
            }
          ],
          "owner_id": true,
          "vpc_id": true
        }
      }
    },
    {
      "address": "aws_security_group.invalid_include_443",
      "mode": "managed",
      "type": "aws_security_group",
      "name": "invalid_include_443",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "description": "Managed by Terraform",
          "ingress": [
            {
              "cidr_blocks": [
                "0.0.0.0/0"
              ],
              "description": "",
              "from_port": 442,
              "ipv6_cidr_blocks": [],
              "prefix_list_ids": [],
              "protocol": "tcp",
              "security_groups": [],
              "self": false,
              "to_port": 444
            }
          ],
          "name": "invalid_include_valid_443",
          "name_prefix": null,
          "revoke_rules_on_delete": false,
          "tags": null,
          "timeouts": null
        },
        "after_unknown": {
          "arn": true,
          "egress": true,
          "id": true,
          "ingress": [
            {
              "cidr_blocks": [
                false
              ],
              "ipv6_cidr_blocks": [],
              "prefix_list_ids": [],
              "security_groups": []
            }
          ],
          "owner_id": true,
          "vpc_id": true
        }
      }
    },
    {
      "address": "aws_security_group.invalid_include_80",
      "mode": "managed",
      "type": "aws_security_group",
      "name": "invalid_include_80",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "description": "Managed by Terraform",
          "ingress": [
            {
              "cidr_blocks": [
                "0.0.0.0/0"
              ],
              "description": "",
              "from_port": 79,
              "ipv6_cidr_blocks": [],
              "prefix_list_ids": [],
              "protocol": "tcp",
              "security_groups": [],
              "self": false,
              "to_port": 81
            }
          ],
          "name": "invalid_include_valid_80",
          "name_prefix": null,
          "revoke_rules_on_delete": false,
          "tags": null,
          "timeouts": null
        },
        "after_unknown": {
          "arn": true,
          "egress": true,
          "id": true,
          "ingress": [
            {
              "cidr_blocks": [
                false
              ],
              "ipv6_cidr_blocks": [],
              "prefix_list_ids": [],
              "security_groups": []
            }
          ],
          "owner_id": true,
          "vpc_id": true
        }
      }
    },
    {
      "address": "aws_security_group.valid_exact_443",
      "mode": "managed",
      "type": "aws_security_group",
      "name": "valid_exact_443",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "description": "Managed by Terraform",
          "ingress": [
            {
              "cidr_blocks": [
                "0.0.0.0/0"
              ],
              "description": "",
              "from_port": 443,
              "ipv6_cidr_blocks": [],
              "prefix_list_ids": [],
              "protocol": "tcp",
              "security_groups": [],
              "self": false,
              "to_port": 443
            }
          ],
          "name": "valid_exact_443",
          "name_prefix": null,
          "revoke_rules_on_delete": false,
          "tags": null,
          "timeouts": null
        },
        "after_unknown": {
          "arn": true,
          "egress": true,
          "id": true,
          "ingress": [
            {
              "cidr_blocks": [
                false
              ],
              "ipv6_cidr_blocks": [],
              "prefix_list_ids": [],
              "security_groups": []
            }
          ],
          "owner_id": true,
          "vpc_id": true
        }
      }
    },
    {
      "address": "aws_security_group.valid_exact_80",
      "mode": "managed",
      "type": "aws_security_group",
      "name": "valid_exact_80",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "description": "Managed by Terraform",
          "ingress": [
            {
              "cidr_blocks": [
                "0.0.0.0/0"
              ],
              "description": "",
              "from_port": 80,
              "ipv6_cidr_blocks": [],
              "prefix_list_ids": [],
              "protocol": "tcp",
              "security_groups": [],
              "self": false,
              "to_port": 80
            }
          ],
          "name": "valid_exact_80",
          "name_prefix": null,
          "revoke_rules_on_delete": false,
          "tags": null,
          "timeouts": null
        },
        "after_unknown": {
          "arn": true,
          "egress": true,
          "id": true,
          "ingress": [
            {
              "cidr_blocks": [
                false
              ],
              "ipv6_cidr_blocks": [],
              "prefix_list_ids": [],
              "security_groups": []
            }
          ],
          "owner_id": true,
          "vpc_id": true
        }
      }
    }
  ],
  "configuration": {
    "provider_config": {
      "aws": {
        "name": "aws",
        "expressions": {
          "region": {
            "constant_value": "us-west-1"
          }
        }
      }
    },
    "root_module": {
      "resources": [
        {
          "address": "aws_security_group.invalid_allow_all",
          "mode": "managed",
          "type": "aws_security_group",
          "name": "invalid_allow_all",
          "provider_config_key": "aws",
          "expressions": {
            "name": {
              "constant_value": "invalid_allow_all"
            }
          },
          "schema_version": 1
        },
        {
          "address": "aws_security_group.invalid_include_443",
          "mode": "managed",
          "type": "aws_security_group",
          "name": "invalid_include_443",
          "provider_config_key": "aws",
          "expressions": {
            "name": {
              "constant_value": "invalid_include_valid_443"
            }
          },
          "schema_version": 1
        },
        {
          "address": "aws_security_group.invalid_include_80",
          "mode": "managed",
          "type": "aws_security_group",
          "name": "invalid_include_80",
          "provider_config_key": "aws",
          "expressions": {
            "name": {
              "constant_value": "invalid_include_valid_80"
            }
          },
          "schema_version": 1
        },
        {
          "address": "aws_security_group.valid_exact_443",
          "mode": "managed",
          "type": "aws_security_group",
          "name": "valid_exact_443",
          "provider_config_key": "aws",
          "expressions": {
            "name": {
              "constant_value": "valid_exact_443"
            }
          },
          "schema_version": 1
        },
        {
          "address": "aws_security_group.valid_exact_80",
          "mode": "managed",
          "type": "aws_security_group",
          "name": "valid_exact_80",
          "provider_config_key": "aws",
          "expressions": {
            "name": {
              "constant_value": "valid_exact_80"
            }
          },
          "schema_version": 1
        }
      ]
    }
  }
}
