// Code generated by go-swagger; DO NOT EDIT.

package models

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// Events Paginated list of drift, remediation, and compliance events.
//
// swagger:model Events
type Events struct {

	// Total number of items. DEPRECATED: This property no longer returns accurate counts when filters are applied and will be removed in future API versions
	Count int64 `json:"count,omitempty"`

	// Indicates whether there are more items at the next offset.
	IsTruncated bool `json:"is_truncated,omitempty"`

	// Paginated list of events.
	Items []*Event `json:"items"`

	// Next offset to use to get the next page of items.
	NextOffset int64 `json:"next_offset,omitempty"`
}

// Validate validates this events
func (m *Events) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateItems(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *Events) validateItems(formats strfmt.Registry) error {

	if swag.IsZero(m.Items) { // not required
		return nil
	}

	for i := 0; i < len(m.Items); i++ {
		if swag.IsZero(m.Items[i]) { // not required
			continue
		}

		if m.Items[i] != nil {
			if err := m.Items[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("items" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *Events) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *Events) UnmarshalBinary(b []byte) error {
	var res Events
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}