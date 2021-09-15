// Code generated by go-swagger; DO NOT EDIT.

package families

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/fugue/regula/pkg/swagger/models"
)

// NewUpdateFamilyParams creates a new UpdateFamilyParams object
// with the default values initialized.
func NewUpdateFamilyParams() *UpdateFamilyParams {
	var ()
	return &UpdateFamilyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateFamilyParamsWithTimeout creates a new UpdateFamilyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateFamilyParamsWithTimeout(timeout time.Duration) *UpdateFamilyParams {
	var ()
	return &UpdateFamilyParams{

		timeout: timeout,
	}
}

// NewUpdateFamilyParamsWithContext creates a new UpdateFamilyParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateFamilyParamsWithContext(ctx context.Context) *UpdateFamilyParams {
	var ()
	return &UpdateFamilyParams{

		Context: ctx,
	}
}

// NewUpdateFamilyParamsWithHTTPClient creates a new UpdateFamilyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateFamilyParamsWithHTTPClient(client *http.Client) *UpdateFamilyParams {
	var ()
	return &UpdateFamilyParams{
		HTTPClient: client,
	}
}

/*UpdateFamilyParams contains all the parameters to send to the API endpoint
for the update family operation typically these are written to a http.Request
*/
type UpdateFamilyParams struct {

	/*Family
	  New configuration options for the Family.

	*/
	Family *models.UpdateFamilyInput
	/*FamilyID
	  The id of the Family to update.

	*/
	FamilyID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the update family params
func (o *UpdateFamilyParams) WithTimeout(timeout time.Duration) *UpdateFamilyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update family params
func (o *UpdateFamilyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update family params
func (o *UpdateFamilyParams) WithContext(ctx context.Context) *UpdateFamilyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update family params
func (o *UpdateFamilyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the update family params
func (o *UpdateFamilyParams) WithHTTPClient(client *http.Client) *UpdateFamilyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update family params
func (o *UpdateFamilyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithFamily adds the family to the update family params
func (o *UpdateFamilyParams) WithFamily(family *models.UpdateFamilyInput) *UpdateFamilyParams {
	o.SetFamily(family)
	return o
}

// SetFamily adds the family to the update family params
func (o *UpdateFamilyParams) SetFamily(family *models.UpdateFamilyInput) {
	o.Family = family
}

// WithFamilyID adds the familyID to the update family params
func (o *UpdateFamilyParams) WithFamilyID(familyID string) *UpdateFamilyParams {
	o.SetFamilyID(familyID)
	return o
}

// SetFamilyID adds the familyId to the update family params
func (o *UpdateFamilyParams) SetFamilyID(familyID string) {
	o.FamilyID = familyID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateFamilyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Family != nil {
		if err := r.SetBodyParam(o.Family); err != nil {
			return err
		}
	}

	// path param family_id
	if err := r.SetPathParam("family_id", o.FamilyID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}