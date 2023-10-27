package ent

import (
	template "github.com/GuanceCloud/iacker/pkg/template/v1"
)

inputs: template.#Inputs

resources: *inputs.resources | {}

_mixin_template: """
// Code generated by Iacker. DO NOT EDIT.
package mixins

import (
	"time"

	"entgo.io/ent"
	"entgo.io/ent/dialect"
	"entgo.io/ent/schema/field"
	"entgo.io/ent/schema/mixin"
)

// ResourceMixin is an Ent mixin that adds the resource field to an entity.
type ResourceMixin struct {
	mixin.Schema
}

/*
Fields returns the fields of the ResourceMixin.

* id: The unique identifier of the resource.
* state: The state of the resource.
* created_at: The time when the resource was created.
* updated_at: The time when the resource was last updated.
*/
func (ResourceMixin) Fields() []ent.Field {
	return []ent.Field{
		field.String("id").
			Immutable().
			NotEmpty().
			Unique().
			Comment("The unique identifier of the resource."),
		field.String("state").
			SchemaType(map[string]string{
				dialect.MySQL: "longtext",
			}).
			Optional().
			Comment("The state of the resource."),
		field.String("partition").
			Immutable().
			NotEmpty().
			Comment("The partition of resource"),
		field.String("region").
			NotEmpty().
			Comment("The region of the resource"),
		field.String("service").
			NotEmpty().
			Comment("The service of resource"),
		field.String("owner").
			NotEmpty().
			Comment("The owner of the resource"),
		field.Time("created_at").
			Immutable().
			Default(time.Now).
			Comment("The time when the resource was created."),
		field.Time("updated_at").
			Default(time.Now).
			UpdateDefault(time.Now).
			Comment("The time when the resource was last updated."),
	}
}
"""

outputs: files: "internal/gen/ent/mixins/resource.go": template.#File & {
	content: _mixin_template
}

_go_gen_template: """
package ent

//go:generate go run -mod=mod entgo.io/ent/cmd/ent generate ./schema

"""

outputs: files: "internal/gen/ent/generate.go": template.#File & {
	content: _go_gen_template
}
