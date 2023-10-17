package main

import (
	"github.com/GuanceCloud/iacker-guance/spec/resources"
	terraform "github.com/GuanceCloud/iacker/templates/terraform/v1"
	proto "github.com/GuanceCloud/iacker/templates/proto/v1"
)

provider: "guance"

"resources": resources.resources

// Template definition
"templates": {
	"terraform": terraform
	"proto":     proto
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
			"outdir":   ".build/terraform"
			"vars": {
				"provider": provider
			}
		},
	]
}
