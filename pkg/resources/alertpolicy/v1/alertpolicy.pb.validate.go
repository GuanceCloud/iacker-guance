// Code generated by protoc-gen-validate. DO NOT EDIT.
// source: pkg/resources/alertpolicy/v1/alertpolicy.proto

package v1

import (
	"bytes"
	"errors"
	"fmt"
	"net"
	"net/mail"
	"net/url"
	"regexp"
	"sort"
	"strings"
	"time"
	"unicode/utf8"

	"google.golang.org/protobuf/types/known/anypb"
)

// ensure the imports are used
var (
	_ = bytes.MinRead
	_ = errors.New("")
	_ = fmt.Print
	_ = utf8.UTFMax
	_ = (*regexp.Regexp)(nil)
	_ = (*strings.Reader)(nil)
	_ = net.IPv4len
	_ = time.Duration(0)
	_ = (*url.URL)(nil)
	_ = (*mail.Address)(nil)
	_ = anypb.Any{}
	_ = sort.Sort
)

// Validate checks the field values on AlertPolicy with the rules defined in
// the proto definition for this message. If any rules are violated, the first
// error encountered is returned, or nil if there are no violations.
func (m *AlertPolicy) Validate() error {
	return m.validate(false)
}

// ValidateAll checks the field values on AlertPolicy with the rules defined in
// the proto definition for this message. If any rules are violated, the
// result is a list of violation errors wrapped in AlertPolicyMultiError, or
// nil if none found.
func (m *AlertPolicy) ValidateAll() error {
	return m.validate(true)
}

func (m *AlertPolicy) validate(all bool) error {
	if m == nil {
		return nil
	}

	var errors []error

	// no validation rules for Name

	for idx, item := range m.GetAlertTargets() {
		_, _ = idx, item

		if all {
			switch v := interface{}(item).(type) {
			case interface{ ValidateAll() error }:
				if err := v.ValidateAll(); err != nil {
					errors = append(errors, AlertPolicyValidationError{
						field:  fmt.Sprintf("AlertTargets[%v]", idx),
						reason: "embedded message failed validation",
						cause:  err,
					})
				}
			case interface{ Validate() error }:
				if err := v.Validate(); err != nil {
					errors = append(errors, AlertPolicyValidationError{
						field:  fmt.Sprintf("AlertTargets[%v]", idx),
						reason: "embedded message failed validation",
						cause:  err,
					})
				}
			}
		} else if v, ok := interface{}(item).(interface{ Validate() error }); ok {
			if err := v.Validate(); err != nil {
				return AlertPolicyValidationError{
					field:  fmt.Sprintf("AlertTargets[%v]", idx),
					reason: "embedded message failed validation",
					cause:  err,
				}
			}
		}

	}

	if m.SilentTimeout != nil {
		// no validation rules for SilentTimeout
	}

	if len(errors) > 0 {
		return AlertPolicyMultiError(errors)
	}

	return nil
}

// AlertPolicyMultiError is an error wrapping multiple validation errors
// returned by AlertPolicy.ValidateAll() if the designated constraints aren't met.
type AlertPolicyMultiError []error

// Error returns a concatenation of all the error messages it wraps.
func (m AlertPolicyMultiError) Error() string {
	var msgs []string
	for _, err := range m {
		msgs = append(msgs, err.Error())
	}
	return strings.Join(msgs, "; ")
}

// AllErrors returns a list of validation violation errors.
func (m AlertPolicyMultiError) AllErrors() []error { return m }

// AlertPolicyValidationError is the validation error returned by
// AlertPolicy.Validate if the designated constraints aren't met.
type AlertPolicyValidationError struct {
	field  string
	reason string
	cause  error
	key    bool
}

// Field function returns field value.
func (e AlertPolicyValidationError) Field() string { return e.field }

// Reason function returns reason value.
func (e AlertPolicyValidationError) Reason() string { return e.reason }

// Cause function returns cause value.
func (e AlertPolicyValidationError) Cause() error { return e.cause }

// Key function returns key value.
func (e AlertPolicyValidationError) Key() bool { return e.key }

// ErrorName returns error name.
func (e AlertPolicyValidationError) ErrorName() string { return "AlertPolicyValidationError" }

// Error satisfies the builtin error interface
func (e AlertPolicyValidationError) Error() string {
	cause := ""
	if e.cause != nil {
		cause = fmt.Sprintf(" | caused by: %v", e.cause)
	}

	key := ""
	if e.key {
		key = "key for "
	}

	return fmt.Sprintf(
		"invalid %sAlertPolicy.%s: %s%s",
		key,
		e.field,
		e.reason,
		cause)
}

var _ error = AlertPolicyValidationError{}

var _ interface {
	Field() string
	Reason() string
	Key() bool
	Cause() error
	ErrorName() string
} = AlertPolicyValidationError{}

// Validate checks the field values on AlertTarget with the rules defined in
// the proto definition for this message. If any rules are violated, the first
// error encountered is returned, or nil if there are no violations.
func (m *AlertTarget) Validate() error {
	return m.validate(false)
}

// ValidateAll checks the field values on AlertTarget with the rules defined in
// the proto definition for this message. If any rules are violated, the
// result is a list of violation errors wrapped in AlertTargetMultiError, or
// nil if none found.
func (m *AlertTarget) ValidateAll() error {
	return m.validate(true)
}

func (m *AlertTarget) validate(all bool) error {
	if m == nil {
		return nil
	}

	var errors []error

	// no validation rules for Type

	if all {
		switch v := interface{}(m.GetNotification()).(type) {
		case interface{ ValidateAll() error }:
			if err := v.ValidateAll(); err != nil {
				errors = append(errors, AlertTargetValidationError{
					field:  "Notification",
					reason: "embedded message failed validation",
					cause:  err,
				})
			}
		case interface{ Validate() error }:
			if err := v.Validate(); err != nil {
				errors = append(errors, AlertTargetValidationError{
					field:  "Notification",
					reason: "embedded message failed validation",
					cause:  err,
				})
			}
		}
	} else if v, ok := interface{}(m.GetNotification()).(interface{ Validate() error }); ok {
		if err := v.Validate(); err != nil {
			return AlertTargetValidationError{
				field:  "Notification",
				reason: "embedded message failed validation",
				cause:  err,
			}
		}
	}

	if all {
		switch v := interface{}(m.GetMemberGroup()).(type) {
		case interface{ ValidateAll() error }:
			if err := v.ValidateAll(); err != nil {
				errors = append(errors, AlertTargetValidationError{
					field:  "MemberGroup",
					reason: "embedded message failed validation",
					cause:  err,
				})
			}
		case interface{ Validate() error }:
			if err := v.Validate(); err != nil {
				errors = append(errors, AlertTargetValidationError{
					field:  "MemberGroup",
					reason: "embedded message failed validation",
					cause:  err,
				})
			}
		}
	} else if v, ok := interface{}(m.GetMemberGroup()).(interface{ Validate() error }); ok {
		if err := v.Validate(); err != nil {
			return AlertTargetValidationError{
				field:  "MemberGroup",
				reason: "embedded message failed validation",
				cause:  err,
			}
		}
	}

	if len(errors) > 0 {
		return AlertTargetMultiError(errors)
	}

	return nil
}

// AlertTargetMultiError is an error wrapping multiple validation errors
// returned by AlertTarget.ValidateAll() if the designated constraints aren't met.
type AlertTargetMultiError []error

// Error returns a concatenation of all the error messages it wraps.
func (m AlertTargetMultiError) Error() string {
	var msgs []string
	for _, err := range m {
		msgs = append(msgs, err.Error())
	}
	return strings.Join(msgs, "; ")
}

// AllErrors returns a list of validation violation errors.
func (m AlertTargetMultiError) AllErrors() []error { return m }

// AlertTargetValidationError is the validation error returned by
// AlertTarget.Validate if the designated constraints aren't met.
type AlertTargetValidationError struct {
	field  string
	reason string
	cause  error
	key    bool
}

// Field function returns field value.
func (e AlertTargetValidationError) Field() string { return e.field }

// Reason function returns reason value.
func (e AlertTargetValidationError) Reason() string { return e.reason }

// Cause function returns cause value.
func (e AlertTargetValidationError) Cause() error { return e.cause }

// Key function returns key value.
func (e AlertTargetValidationError) Key() bool { return e.key }

// ErrorName returns error name.
func (e AlertTargetValidationError) ErrorName() string { return "AlertTargetValidationError" }

// Error satisfies the builtin error interface
func (e AlertTargetValidationError) Error() string {
	cause := ""
	if e.cause != nil {
		cause = fmt.Sprintf(" | caused by: %v", e.cause)
	}

	key := ""
	if e.key {
		key = "key for "
	}

	return fmt.Sprintf(
		"invalid %sAlertTarget.%s: %s%s",
		key,
		e.field,
		e.reason,
		cause)
}

var _ error = AlertTargetValidationError{}

var _ interface {
	Field() string
	Reason() string
	Key() bool
	Cause() error
	ErrorName() string
} = AlertTargetValidationError{}

// Validate checks the field values on TargetMemberGroup with the rules defined
// in the proto definition for this message. If any rules are violated, the
// first error encountered is returned, or nil if there are no violations.
func (m *TargetMemberGroup) Validate() error {
	return m.validate(false)
}

// ValidateAll checks the field values on TargetMemberGroup with the rules
// defined in the proto definition for this message. If any rules are
// violated, the result is a list of violation errors wrapped in
// TargetMemberGroupMultiError, or nil if none found.
func (m *TargetMemberGroup) ValidateAll() error {
	return m.validate(true)
}

func (m *TargetMemberGroup) validate(all bool) error {
	if m == nil {
		return nil
	}

	var errors []error

	// no validation rules for Id

	if len(errors) > 0 {
		return TargetMemberGroupMultiError(errors)
	}

	return nil
}

// TargetMemberGroupMultiError is an error wrapping multiple validation errors
// returned by TargetMemberGroup.ValidateAll() if the designated constraints
// aren't met.
type TargetMemberGroupMultiError []error

// Error returns a concatenation of all the error messages it wraps.
func (m TargetMemberGroupMultiError) Error() string {
	var msgs []string
	for _, err := range m {
		msgs = append(msgs, err.Error())
	}
	return strings.Join(msgs, "; ")
}

// AllErrors returns a list of validation violation errors.
func (m TargetMemberGroupMultiError) AllErrors() []error { return m }

// TargetMemberGroupValidationError is the validation error returned by
// TargetMemberGroup.Validate if the designated constraints aren't met.
type TargetMemberGroupValidationError struct {
	field  string
	reason string
	cause  error
	key    bool
}

// Field function returns field value.
func (e TargetMemberGroupValidationError) Field() string { return e.field }

// Reason function returns reason value.
func (e TargetMemberGroupValidationError) Reason() string { return e.reason }

// Cause function returns cause value.
func (e TargetMemberGroupValidationError) Cause() error { return e.cause }

// Key function returns key value.
func (e TargetMemberGroupValidationError) Key() bool { return e.key }

// ErrorName returns error name.
func (e TargetMemberGroupValidationError) ErrorName() string {
	return "TargetMemberGroupValidationError"
}

// Error satisfies the builtin error interface
func (e TargetMemberGroupValidationError) Error() string {
	cause := ""
	if e.cause != nil {
		cause = fmt.Sprintf(" | caused by: %v", e.cause)
	}

	key := ""
	if e.key {
		key = "key for "
	}

	return fmt.Sprintf(
		"invalid %sTargetMemberGroup.%s: %s%s",
		key,
		e.field,
		e.reason,
		cause)
}

var _ error = TargetMemberGroupValidationError{}

var _ interface {
	Field() string
	Reason() string
	Key() bool
	Cause() error
	ErrorName() string
} = TargetMemberGroupValidationError{}

// Validate checks the field values on TargetNotification with the rules
// defined in the proto definition for this message. If any rules are
// violated, the first error encountered is returned, or nil if there are no violations.
func (m *TargetNotification) Validate() error {
	return m.validate(false)
}

// ValidateAll checks the field values on TargetNotification with the rules
// defined in the proto definition for this message. If any rules are
// violated, the result is a list of violation errors wrapped in
// TargetNotificationMultiError, or nil if none found.
func (m *TargetNotification) ValidateAll() error {
	return m.validate(true)
}

func (m *TargetNotification) validate(all bool) error {
	if m == nil {
		return nil
	}

	var errors []error

	// no validation rules for Id

	if len(errors) > 0 {
		return TargetNotificationMultiError(errors)
	}

	return nil
}

// TargetNotificationMultiError is an error wrapping multiple validation errors
// returned by TargetNotification.ValidateAll() if the designated constraints
// aren't met.
type TargetNotificationMultiError []error

// Error returns a concatenation of all the error messages it wraps.
func (m TargetNotificationMultiError) Error() string {
	var msgs []string
	for _, err := range m {
		msgs = append(msgs, err.Error())
	}
	return strings.Join(msgs, "; ")
}

// AllErrors returns a list of validation violation errors.
func (m TargetNotificationMultiError) AllErrors() []error { return m }

// TargetNotificationValidationError is the validation error returned by
// TargetNotification.Validate if the designated constraints aren't met.
type TargetNotificationValidationError struct {
	field  string
	reason string
	cause  error
	key    bool
}

// Field function returns field value.
func (e TargetNotificationValidationError) Field() string { return e.field }

// Reason function returns reason value.
func (e TargetNotificationValidationError) Reason() string { return e.reason }

// Cause function returns cause value.
func (e TargetNotificationValidationError) Cause() error { return e.cause }

// Key function returns key value.
func (e TargetNotificationValidationError) Key() bool { return e.key }

// ErrorName returns error name.
func (e TargetNotificationValidationError) ErrorName() string {
	return "TargetNotificationValidationError"
}

// Error satisfies the builtin error interface
func (e TargetNotificationValidationError) Error() string {
	cause := ""
	if e.cause != nil {
		cause = fmt.Sprintf(" | caused by: %v", e.cause)
	}

	key := ""
	if e.key {
		key = "key for "
	}

	return fmt.Sprintf(
		"invalid %sTargetNotification.%s: %s%s",
		key,
		e.field,
		e.reason,
		cause)
}

var _ error = TargetNotificationValidationError{}

var _ interface {
	Field() string
	Reason() string
	Key() bool
	Cause() error
	ErrorName() string
} = TargetNotificationValidationError{}
