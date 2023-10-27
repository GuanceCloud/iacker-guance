package schema

import (
	"strings"
	gotemplate "text/template"
)

// Generate schema getter
outputs: files: "internal/gen/schemas/all.go": {
	_template: """
		// Code generated by Iacker. DO NOT EDIT.
		package schemas

		import (
			"fmt"
			"log"
		
			"github.com/GuanceCloud/iacker-server/pkg/schema"
			{{- range $_, $rs := .resources }}
			{{ $rs.lowername }}v1 "github.com/GuanceCloud/iacker-server/internal/gen/schemas/{{ $rs.lowername }}/v1"
			{{- end }}
		)

		const (
			{{- range $_, $rs := .resources }}
			// ResourceType{{ $rs.name }} is the unique resource type name of {{ $rs.name }}
			ResourceType{{ $rs.name }} = "{{ $rs.name }}"
			{{- end }}
		)

		// GetSchema returns the schema of the resource
		func GetSchema(typeName string) (schema.Schema, error) {
			switch typeName {
			{{- range $_, $rs := .resources }}
			case ResourceType{{ $rs.name }}:
				return {{ $rs.lowername }}v1.Schema, nil
			{{- end }}
			default:
				return nil, fmt.Errorf("unknown resource type: %s", typeName)
			}
		}

		func MustGetSchema(typeName string) schema.Schema {
			s, err := GetSchema(typeName)
			if err != nil {
				log.Fatal(err)
			}
			return s
		}
		"""

	content: gotemplate.Execute(_template, {
		"resources": [
			for rsname, _ in resources {
				{
					name: rsname
					lowername: strings.ToLower(rsname)
				}
			}
		]
	})
}
