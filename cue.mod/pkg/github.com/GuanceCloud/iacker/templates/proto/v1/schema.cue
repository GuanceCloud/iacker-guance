package v1

import (
	"strings"
	"encoding/json"
	gotemplate "text/template"

	naming "github.com/GuanceCloud/iacker/pkg/helpers/naming"
	template "github.com/GuanceCloud/iacker/pkg/template/v1"
)

resources: *inputs.resources | {}

// Generate JSON files
for rsname, rsinfo in resources {
	outputs: files: "resources/\(strings.ToLower(rsname))/v1/\(strings.ToLower(rsname)).schema.json": template.#File & {
		content: json.Indent(json.Marshal(rsinfo), "", "  ")
	}
}

_schema_template: """
// Code generated by Iacker. DO NOT EDIT IT.
package v1

import (
    _ "embed"
)

// ResourceType is the unique type name of {{ .name }}
const ResourceType = "{{ .name }}"

//go:embed {{ .lowername }}.schema.json
var schemaRaw []byte

{{ range $varname, $enum := .consts }}
const (
    {{- range $_, $item := $enum }}
    // {{ $varname }}{{ $item.name }} is the value of {{ $item.title }}
    {{ $varname }}{{ $item.name }} = {{ $item.value }}
    {{- end }}
)
{{ end }}

// resourceSchema is the schema of {{ .name }}
type resourceSchema struct {
}

// Raw returns the raw schema bytes of {{ .name }}
func (s *resourceSchema) Raw() []byte {
    return schemaRaw
}

// ReferenceTypes returns the related resource types of {{ .name }}
func (s *resourceSchema) ReferenceTypes() []string {
    return []string{
        {{- range $ref, $pkg := .refs }}
            "{{ $ref }}",
        {{- end }}
    }
}
"""

// Generate schema definitions
for rsname, rsinfo in resources {
	outputs: files: "resources/\(strings.ToLower(rsname))/v1/\(strings.ToLower(rsname)).schema.go": template.#File & {
		content: gotemplate.Execute(_schema_template, {
			name:      rsname
			lowername: strings.ToLower(rsname)
			consts: {
				for mname, minfo in rsinfo.models {
					for pinfo in minfo.properties {
						if pinfo.schema.enum != _|_ {
							"\(mname)\((naming.#Snake & {name: pinfo.name}).uppercamel)": [
												for item in pinfo.schema.enum {
									{
										"name": (naming.#Snake & {"name": item.name}).uppercamel
										if pinfo.schema.type == "string" {
											value: "\"\(item.value)\""
										}
										if pinfo.schema.type != "string" {
											value: item.value
										}
										title: item.title.en
									}
								},
							]
						}

						if pinfo.schema.type == "array" && pinfo.schema.elem.enum != _|_ {
							"\(mname)\((naming.#Snake & {name: pinfo.name}).uppercamel)": [
												for item in pinfo.schema.elem.enum {
									{
										"name": (naming.#Snake & {"name": item.name}).uppercamel
										if pinfo.schema.elem.type == "string" {
											value: "\"\(item.value)\""
										}
										if pinfo.schema.elem.type != "string" {
											value: item.value
										}
										title: item.title.en
									}
								},
							]
						}
					}
				}
			}

			refs: {
				for mname, minfo in rsinfo.models {
					for pinfo in minfo.properties {
						if pinfo.schema.ref != _|_ {
							"\(pinfo.schema.ref)": pinfo.schema.ref == rsname
						}

						if pinfo.schema.type == "array" && pinfo.schema.elem.ref != _|_ {
							"\(pinfo.schema.elem.ref)": pinfo.schema.elem.ref == rsname
						}
					}
				}
			}
		})
	}
}
