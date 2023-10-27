package v1

import (
	template "github.com/GuanceCloud/iacker/pkg/template/v1"

	ent "github.com/GuanceCloud/iacker/templates/server/v1/ent"
	schema "github.com/GuanceCloud/iacker/templates/server/v1/schema"
)

name: "server"

inputs: template.#Inputs

_ent: ent & { "inputs": inputs }
_schema: schema & { "inputs": inputs } 

outputs: files: _ent.outputs.files & _schema.outputs.files

diagnostics: [...template.#Diagnostic]
