// Code generated by protoc-gen-validate. DO NOT EDIT.
// source: pkg/blacklist/v1/blacklist.proto

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

// Validate checks the field values on BlackList with the rules defined in the
// proto definition for this message. If any rules are violated, the first
// error encountered is returned, or nil if there are no violations.
func (m *BlackList) Validate() error {
	return m.validate(false)
}

// ValidateAll checks the field values on BlackList with the rules defined in
// the proto definition for this message. If any rules are violated, the
// result is a list of violation errors wrapped in BlackListMultiError, or nil
// if none found.
func (m *BlackList) ValidateAll() error {
	return m.validate(true)
}

func (m *BlackList) validate(all bool) error {
	if m == nil {
		return nil
	}

	var errors []error

	if all {
		switch v := interface{}(m.GetSource()).(type) {
		case interface{ ValidateAll() error }:
			if err := v.ValidateAll(); err != nil {
				errors = append(errors, BlackListValidationError{
					field:  "Source",
					reason: "embedded message failed validation",
					cause:  err,
				})
			}
		case interface{ Validate() error }:
			if err := v.Validate(); err != nil {
				errors = append(errors, BlackListValidationError{
					field:  "Source",
					reason: "embedded message failed validation",
					cause:  err,
				})
			}
		}
	} else if v, ok := interface{}(m.GetSource()).(interface{ Validate() error }); ok {
		if err := v.Validate(); err != nil {
			return BlackListValidationError{
				field:  "Source",
				reason: "embedded message failed validation",
				cause:  err,
			}
		}
	}

	for idx, item := range m.GetFilterRules() {
		_, _ = idx, item

		if all {
			switch v := interface{}(item).(type) {
			case interface{ ValidateAll() error }:
				if err := v.ValidateAll(); err != nil {
					errors = append(errors, BlackListValidationError{
						field:  fmt.Sprintf("FilterRules[%v]", idx),
						reason: "embedded message failed validation",
						cause:  err,
					})
				}
			case interface{ Validate() error }:
				if err := v.Validate(); err != nil {
					errors = append(errors, BlackListValidationError{
						field:  fmt.Sprintf("FilterRules[%v]", idx),
						reason: "embedded message failed validation",
						cause:  err,
					})
				}
			}
		} else if v, ok := interface{}(item).(interface{ Validate() error }); ok {
			if err := v.Validate(); err != nil {
				return BlackListValidationError{
					field:  fmt.Sprintf("FilterRules[%v]", idx),
					reason: "embedded message failed validation",
					cause:  err,
				}
			}
		}

	}

	if len(errors) > 0 {
		return BlackListMultiError(errors)
	}

	return nil
}

// BlackListMultiError is an error wrapping multiple validation errors returned
// by BlackList.ValidateAll() if the designated constraints aren't met.
type BlackListMultiError []error

// Error returns a concatenation of all the error messages it wraps.
func (m BlackListMultiError) Error() string {
	var msgs []string
	for _, err := range m {
		msgs = append(msgs, err.Error())
	}
	return strings.Join(msgs, "; ")
}

// AllErrors returns a list of validation violation errors.
func (m BlackListMultiError) AllErrors() []error { return m }

// BlackListValidationError is the validation error returned by
// BlackList.Validate if the designated constraints aren't met.
type BlackListValidationError struct {
	field  string
	reason string
	cause  error
	key    bool
}

// Field function returns field value.
func (e BlackListValidationError) Field() string { return e.field }

// Reason function returns reason value.
func (e BlackListValidationError) Reason() string { return e.reason }

// Cause function returns cause value.
func (e BlackListValidationError) Cause() error { return e.cause }

// Key function returns key value.
func (e BlackListValidationError) Key() bool { return e.key }

// ErrorName returns error name.
func (e BlackListValidationError) ErrorName() string { return "BlackListValidationError" }

// Error satisfies the builtin error interface
func (e BlackListValidationError) Error() string {
	cause := ""
	if e.cause != nil {
		cause = fmt.Sprintf(" | caused by: %v", e.cause)
	}

	key := ""
	if e.key {
		key = "key for "
	}

	return fmt.Sprintf(
		"invalid %sBlackList.%s: %s%s",
		key,
		e.field,
		e.reason,
		cause)
}

var _ error = BlackListValidationError{}

var _ interface {
	Field() string
	Reason() string
	Key() bool
	Cause() error
	ErrorName() string
} = BlackListValidationError{}

// Validate checks the field values on Filter with the rules defined in the
// proto definition for this message. If any rules are violated, the first
// error encountered is returned, or nil if there are no violations.
func (m *Filter) Validate() error {
	return m.validate(false)
}

// ValidateAll checks the field values on Filter with the rules defined in the
// proto definition for this message. If any rules are violated, the result is
// a list of violation errors wrapped in FilterMultiError, or nil if none found.
func (m *Filter) ValidateAll() error {
	return m.validate(true)
}

func (m *Filter) validate(all bool) error {
	if m == nil {
		return nil
	}

	var errors []error

	// no validation rules for Name

	// no validation rules for Operation

	// no validation rules for Condition

	if len(errors) > 0 {
		return FilterMultiError(errors)
	}

	return nil
}

// FilterMultiError is an error wrapping multiple validation errors returned by
// Filter.ValidateAll() if the designated constraints aren't met.
type FilterMultiError []error

// Error returns a concatenation of all the error messages it wraps.
func (m FilterMultiError) Error() string {
	var msgs []string
	for _, err := range m {
		msgs = append(msgs, err.Error())
	}
	return strings.Join(msgs, "; ")
}

// AllErrors returns a list of validation violation errors.
func (m FilterMultiError) AllErrors() []error { return m }

// FilterValidationError is the validation error returned by Filter.Validate if
// the designated constraints aren't met.
type FilterValidationError struct {
	field  string
	reason string
	cause  error
	key    bool
}

// Field function returns field value.
func (e FilterValidationError) Field() string { return e.field }

// Reason function returns reason value.
func (e FilterValidationError) Reason() string { return e.reason }

// Cause function returns cause value.
func (e FilterValidationError) Cause() error { return e.cause }

// Key function returns key value.
func (e FilterValidationError) Key() bool { return e.key }

// ErrorName returns error name.
func (e FilterValidationError) ErrorName() string { return "FilterValidationError" }

// Error satisfies the builtin error interface
func (e FilterValidationError) Error() string {
	cause := ""
	if e.cause != nil {
		cause = fmt.Sprintf(" | caused by: %v", e.cause)
	}

	key := ""
	if e.key {
		key = "key for "
	}

	return fmt.Sprintf(
		"invalid %sFilter.%s: %s%s",
		key,
		e.field,
		e.reason,
		cause)
}

var _ error = FilterValidationError{}

var _ interface {
	Field() string
	Reason() string
	Key() bool
	Cause() error
	ErrorName() string
} = FilterValidationError{}

// Validate checks the field values on Source with the rules defined in the
// proto definition for this message. If any rules are violated, the first
// error encountered is returned, or nil if there are no violations.
func (m *Source) Validate() error {
	return m.validate(false)
}

// ValidateAll checks the field values on Source with the rules defined in the
// proto definition for this message. If any rules are violated, the result is
// a list of violation errors wrapped in SourceMultiError, or nil if none found.
func (m *Source) ValidateAll() error {
	return m.validate(true)
}

func (m *Source) validate(all bool) error {
	if m == nil {
		return nil
	}

	var errors []error

	// no validation rules for Type

	if m.Name != nil {
		// no validation rules for Name
	}

	if len(errors) > 0 {
		return SourceMultiError(errors)
	}

	return nil
}

// SourceMultiError is an error wrapping multiple validation errors returned by
// Source.ValidateAll() if the designated constraints aren't met.
type SourceMultiError []error

// Error returns a concatenation of all the error messages it wraps.
func (m SourceMultiError) Error() string {
	var msgs []string
	for _, err := range m {
		msgs = append(msgs, err.Error())
	}
	return strings.Join(msgs, "; ")
}

// AllErrors returns a list of validation violation errors.
func (m SourceMultiError) AllErrors() []error { return m }

// SourceValidationError is the validation error returned by Source.Validate if
// the designated constraints aren't met.
type SourceValidationError struct {
	field  string
	reason string
	cause  error
	key    bool
}

// Field function returns field value.
func (e SourceValidationError) Field() string { return e.field }

// Reason function returns reason value.
func (e SourceValidationError) Reason() string { return e.reason }

// Cause function returns cause value.
func (e SourceValidationError) Cause() error { return e.cause }

// Key function returns key value.
func (e SourceValidationError) Key() bool { return e.key }

// ErrorName returns error name.
func (e SourceValidationError) ErrorName() string { return "SourceValidationError" }

// Error satisfies the builtin error interface
func (e SourceValidationError) Error() string {
	cause := ""
	if e.cause != nil {
		cause = fmt.Sprintf(" | caused by: %v", e.cause)
	}

	key := ""
	if e.key {
		key = "key for "
	}

	return fmt.Sprintf(
		"invalid %sSource.%s: %s%s",
		key,
		e.field,
		e.reason,
		cause)
}

var _ error = SourceValidationError{}

var _ interface {
	Field() string
	Reason() string
	Key() bool
	Cause() error
	ErrorName() string
} = SourceValidationError{}