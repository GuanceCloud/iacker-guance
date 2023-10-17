package v1

import (
	gotemplate "text/template"

	template "github.com/GuanceCloud/iacker/pkg/template/v1"
)

_consts_template: """
	// Code generated by Guance Cloud Code Generation Pipeline. DO NOT EDIT.
	
	package consts
	
	const (
	    {{- range $name, $_ := . }}
	    TypeName{{ $name }} = "{{ $name }}"
	    {{- end }}
	)
	"""

outputs: files: "internal/consts/types.go": template.#File & {
	content: gotemplate.Execute(_consts_template, {
		for rsname, rsinfo in inputs.resources {
			(rsname): true
		}
	})
}
