// Code generated by Iacker. DO NOT EDIT IT.
package v1

import (
	_ "embed"
)

// ResourceType is the unique type name of Pipeline
const ResourceType = "Pipeline"

//go:embed pipeline.schema.json
var schemaRaw []byte

const (
	// PipelineCategoryLogging is the value of logging
	PipelineCategoryLogging = "logging"
	// PipelineCategoryObject is the value of object
	PipelineCategoryObject = "object"
	// PipelineCategoryCustomObject is the value of custom_object
	PipelineCategoryCustomObject = "custom_object"
	// PipelineCategoryNetwork is the value of network
	PipelineCategoryNetwork = "network"
	// PipelineCategoryTracing is the value of tracing
	PipelineCategoryTracing = "tracing"
	// PipelineCategoryRum is the value of RUM
	PipelineCategoryRum = "rum"
	// PipelineCategorySecurity is the value of security
	PipelineCategorySecurity = "security"
	// PipelineCategoryKeyevent is the value of keyevent
	PipelineCategoryKeyevent = "keyevent"
	// PipelineCategoryMetric is the value of metric
	PipelineCategoryMetric = "metric"
)

// resourceSchema is the schema of Pipeline
type resourceSchema struct{}

// Raw returns the raw schema bytes of Pipeline
func (s *resourceSchema) Raw() []byte {
	return schemaRaw
}

// ReferenceTypes returns the related resource types of Pipeline
func (s *resourceSchema) ReferenceTypes() []string {
	return []string{}
}
