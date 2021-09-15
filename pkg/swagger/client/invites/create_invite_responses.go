// Code generated by go-swagger; DO NOT EDIT.

package invites

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/fugue/regula/pkg/swagger/models"
)

// CreateInviteReader is a Reader for the CreateInvite structure.
type CreateInviteReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateInviteReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateInviteCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateInviteBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return nil, result
	case 401:
		result := NewCreateInviteUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return nil, result
	case 403:
		result := NewCreateInviteForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return nil, result
	case 404:
		result := NewCreateInviteNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return nil, result
	case 500:
		result := NewCreateInviteInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return nil, result

	default:
		return nil, runtime.NewAPIError("unknown error", response, response.Code())
	}
}

// NewCreateInviteCreated creates a CreateInviteCreated with default headers values
func NewCreateInviteCreated() *CreateInviteCreated {
	return &CreateInviteCreated{}
}

/*CreateInviteCreated handles this case with default header values.

New invite details.
*/
type CreateInviteCreated struct {
	Payload *models.Invite
}

func (o *CreateInviteCreated) Error() string {
	return fmt.Sprintf("[POST /invites][%d] createInviteCreated  %+v", 201, o.Payload)
}

func (o *CreateInviteCreated) GetPayload() *models.Invite {
	return o.Payload
}

func (o *CreateInviteCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(models.Invite)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateInviteBadRequest creates a CreateInviteBadRequest with default headers values
func NewCreateInviteBadRequest() *CreateInviteBadRequest {
	return &CreateInviteBadRequest{}
}

/*CreateInviteBadRequest handles this case with default header values.

BadRequestError
*/
type CreateInviteBadRequest struct {
	Payload *models.BadRequestError
}

func (o *CreateInviteBadRequest) Error() string {
	return fmt.Sprintf("[POST /invites][%d] createInviteBadRequest  %+v", 400, o.Payload)
}

func (o *CreateInviteBadRequest) GetPayload() *models.BadRequestError {
	return o.Payload
}

func (o *CreateInviteBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(models.BadRequestError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateInviteUnauthorized creates a CreateInviteUnauthorized with default headers values
func NewCreateInviteUnauthorized() *CreateInviteUnauthorized {
	return &CreateInviteUnauthorized{}
}

/*CreateInviteUnauthorized handles this case with default header values.

AuthenticationError
*/
type CreateInviteUnauthorized struct {
	Payload *models.AuthenticationError
}

func (o *CreateInviteUnauthorized) Error() string {
	return fmt.Sprintf("[POST /invites][%d] createInviteUnauthorized  %+v", 401, o.Payload)
}

func (o *CreateInviteUnauthorized) GetPayload() *models.AuthenticationError {
	return o.Payload
}

func (o *CreateInviteUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(models.AuthenticationError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateInviteForbidden creates a CreateInviteForbidden with default headers values
func NewCreateInviteForbidden() *CreateInviteForbidden {
	return &CreateInviteForbidden{}
}

/*CreateInviteForbidden handles this case with default header values.

AuthorizationError
*/
type CreateInviteForbidden struct {
	Payload *models.AuthorizationError
}

func (o *CreateInviteForbidden) Error() string {
	return fmt.Sprintf("[POST /invites][%d] createInviteForbidden  %+v", 403, o.Payload)
}

func (o *CreateInviteForbidden) GetPayload() *models.AuthorizationError {
	return o.Payload
}

func (o *CreateInviteForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(models.AuthorizationError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateInviteNotFound creates a CreateInviteNotFound with default headers values
func NewCreateInviteNotFound() *CreateInviteNotFound {
	return &CreateInviteNotFound{}
}

/*CreateInviteNotFound handles this case with default header values.

NotFoundError
*/
type CreateInviteNotFound struct {
	Payload *models.NotFoundError
}

func (o *CreateInviteNotFound) Error() string {
	return fmt.Sprintf("[POST /invites][%d] createInviteNotFound  %+v", 404, o.Payload)
}

func (o *CreateInviteNotFound) GetPayload() *models.NotFoundError {
	return o.Payload
}

func (o *CreateInviteNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(models.NotFoundError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateInviteInternalServerError creates a CreateInviteInternalServerError with default headers values
func NewCreateInviteInternalServerError() *CreateInviteInternalServerError {
	return &CreateInviteInternalServerError{}
}

/*CreateInviteInternalServerError handles this case with default header values.

InternalServerError
*/
type CreateInviteInternalServerError struct {
	Payload *models.InternalServerError
}

func (o *CreateInviteInternalServerError) Error() string {
	return fmt.Sprintf("[POST /invites][%d] createInviteInternalServerError  %+v", 500, o.Payload)
}

func (o *CreateInviteInternalServerError) GetPayload() *models.InternalServerError {
	return o.Payload
}

func (o *CreateInviteInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(models.InternalServerError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}