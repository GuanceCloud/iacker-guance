package main

import (
	"github.com/GuanceCloud/iacker-guance/spec/resources"
	terraform "github.com/GuanceCloud/iacker/templates/terraform/v1"
	proto "github.com/GuanceCloud/iacker/templates/proto/v1"
	server "github.com/GuanceCloud/iacker/templates/server/v1"
)

provider: "guance"

"resources": resources.resources

// Template definition
"templates": {
	"terraform": terraform
	"proto":     proto
	"server":    server
}

// Template options
"options": {
	"module": "github.com/GuanceCloud/iacker-guance"
	"templates": [
		{
			"template": "proto"
			"outdir":   "pkg"
		},
		{
			"template": "terraform"
			"outdir":   "targets/terraform"
			"vars": {
				"provider": provider
			}
		},
		{
			"template": "server"
			"outdir":   "targets/server"
		},
	]
}
