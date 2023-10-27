package ent

import (
  "strings"
	gotemplate "text/template"
	template "github.com/GuanceCloud/iacker/pkg/template/v1"
)

_resources_template: """
// Code generated by Iacker. DO NOT EDIT.
package repos

import (
	"fmt"

	"github.com/go-kratos/kratos/v2/log"

	"github.com/GuanceCloud/iacker-server/pkg/data/repo"
	"github.com/GuanceCloud/iacker-server/pkg/data/client"

	{{ range $i, $rs := .resources }}
	{{ .lowername }}Repo "github.com/GuanceCloud/iacker-server/internal/gen/repos/{{ .lowername }}"
	{{- end }}
	{{ range $i, $rs := .resources }}
	{{ .lowername }}V1 "github.com/GuanceCloud/iacker-server/internal/gen/schemas/{{ .lowername }}/v1"
	{{- end }}
)

func GetResourceRepo(rsType string, data *client.Data, logger log.Logger) (repo.ResourceRepo, error) {
	switch rsType {
	{{- range $i, $rs := .resources }}
	case {{ .lowername }}V1.ResourceType:
		return {{ .lowername }}Repo.New{{ .camelname }}ResourceRepo(data, logger), nil
	{{ end }}
	default:
		return nil, fmt.Errorf("invalid resource type: %s", rsType)
	}
}
"""

outputs: files: "internal/gen/repos/all.go": template.#File & {
	content: gotemplate.Execute(_resources_template, {
		"resources": [
			for rsname, rs in resources {
				{
					"lowername": strings.ToLower(rsname),
					"camelname": rsname,
				}
			}
		],
	})
}