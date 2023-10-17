package resource

import (
	"strings"
	gotemplate "text/template"

	template "github.com/GuanceCloud/iacker/pkg/template/v1"
	naming "github.com/GuanceCloud/iacker/pkg/helpers/naming"
)

_resource_operation_template: """
	// Code generated by Guance Cloud Code Generation Pipeline. DO NOT EDIT.
	
	package {{ .name.lower }}
	
	import (
	    "context"
		_ "embed"
	
		"github.com/hashicorp/terraform-plugin-framework/path"
		"github.com/hashicorp/terraform-plugin-framework/resource"
	
		"github.com/GuanceCloud/terraform-provider-guance/internal/sdk"
	)
	
	//go:embed README.md
	var resourceDocument string
	
	// Ensure the implementation satisfies the expected interfaces.
	var (
		_ resource.Resource                = &{{ .name.lowercamel }}Resource{}
		_ resource.ResourceWithConfigure   = &{{ .name.lowercamel }}Resource{}
		_ resource.ResourceWithImportState = &{{ .name.lowercamel }}Resource{}
	)
	
	// New{{ .name.uppercamel }}Resource is {{ .rs.title.en }}
	func New{{ .name.uppercamel }}Resource() resource.Resource {
		return &{{ .name.lowercamel }}Resource{}
	}
	
	// {{ .name.lowercamel }}Resource is the resource implementation.
	type {{ .name.lowercamel }}Resource struct {
		client *sdk.Client[sdk.Resource]
	}
	
	// Schema defines the schema for the data source.
	func (r *{{ .name.lowercamel }}Resource) Schema(_ context.Context, _ resource.SchemaRequest, resp *resource.SchemaResponse) {
		resp.Schema = resourceSchema
	}
	
	// Configure adds the provider configured client to the data source.
	func (r *{{ .name.lowercamel }}Resource) Configure(_ context.Context, req resource.ConfigureRequest, _ *resource.ConfigureResponse) {
		if req.ProviderData == nil {
			return
		}
		r.client = req.ProviderData.(*sdk.Client[sdk.Resource])
	}
	
	// Metadata returns the data source type name.
	func (r *{{ .name.lowercamel }}Resource) Metadata(_ context.Context, req resource.MetadataRequest, resp *resource.MetadataResponse) {
		resp.TypeName = req.ProviderTypeName + "_{{ .name.lower }}"
	}
	
	// Create creates the resource and sets the initial Terraform state.
	func (r *{{ .name.lowercamel }}Resource) Create(ctx context.Context, req resource.CreateRequest, resp *resource.CreateResponse) {
		// Retrieve values from plan
		var plan {{ .name.lowercamel }}ResourceModel
		diags := req.Plan.Get(ctx, &plan)
		resp.Diagnostics.Append(diags...)
		if resp.Diagnostics.HasError() {
			return
		}
	
		if err := r.client.Create(ctx, &plan); err != nil {
			resp.Diagnostics.AddError(
				"Error creating {{ .name.lowercamel }}",
				"Could not create {{ .name.lowercamel }}, unexpected error: "+err.Error(),
			)
			return
		}
	
		if err := r.client.Read(ctx, &plan); err != nil {
			resp.Diagnostics.AddError(
				"Error creating {{ .name.lowercamel }}",
				"Could not create {{ .name.lowercamel }}, unexpected error: "+err.Error(),
			)
			return
		}
	
		// Set state to fully populated data
		diags = resp.State.Set(ctx, plan)
		resp.Diagnostics.Append(diags...)
		if resp.Diagnostics.HasError() {
			return
		}
	}
	
	// Read refreshes the Terraform state with the latest data.
	func (r *{{ .name.lowercamel }}Resource) Read(ctx context.Context, req resource.ReadRequest, resp *resource.ReadResponse) {
		// Get current state
		var state {{ .name.lowercamel }}ResourceModel
		diags := req.State.Get(ctx, &state)
		resp.Diagnostics.Append(diags...)
		if resp.Diagnostics.HasError() {
			return
		}
	
		if err := r.client.Read(ctx, &state); err != nil {
			resp.Diagnostics.AddError(
				"Error reading {{ .name.lowercamel }}",
				"Could not read {{ .name.lowercamel }}, unexpected error: "+err.Error(),
			)
			return
		}
	
		// Set refreshed state
		diags = resp.State.Set(ctx, &state)
		resp.Diagnostics.Append(diags...)
		if resp.Diagnostics.HasError() {
			return
		}
	}
	
	// Update updates the resource and sets the updated Terraform state on success.
	func (r *{{ .name.lowercamel }}Resource) Update(ctx context.Context, req resource.UpdateRequest, resp *resource.UpdateResponse) {
		// Retrieve values from plan
		var plan {{ .name.lowercamel }}ResourceModel
		diags := req.Plan.Get(ctx, &plan)
		resp.Diagnostics.Append(diags...)
		if resp.Diagnostics.HasError() {
			return
		}
	
		if err := r.client.Read(ctx, &plan); err != nil {
			resp.Diagnostics.AddError(
				"Error creating {{ .name.lowercamel }}",
				"Could not create {{ .name.lowercamel }}, unexpected error: "+err.Error(),
			)
			return
		}
	
		// Set state to fully populated data
		diags = resp.State.Set(ctx, plan)
		resp.Diagnostics.Append(diags...)
		if resp.Diagnostics.HasError() {
			return
		}
	}
	
	// Delete deletes the resource and removes the Terraform state on success.
	func (r *{{ .name.lowercamel }}Resource) Delete(ctx context.Context, req resource.DeleteRequest, resp *resource.DeleteResponse) {
		// Retrieve values from state
		var state {{ .name.lowercamel }}ResourceModel
		diags := req.State.Get(ctx, &state)
		resp.Diagnostics.Append(diags...)
		if resp.Diagnostics.HasError() {
			return
		}
	
		// Delete existing {{ .name.lowercamel }}
		if err := r.client.Delete(ctx, &state); err != nil {
			resp.Diagnostics.AddError(
				"Error deleting {{ .name.lowercamel }}",
				"Could not delete {{ .name.lowercamel }}, unexpected error: "+err.Error(),
			)
			return
		}
	}
	
	func (r *{{ .name.lowercamel }}Resource) ImportState(ctx context.Context, req resource.ImportStateRequest, resp *resource.ImportStateResponse) {
		// Retrieve import ID and save to id attribute
		resource.ImportStatePassthroughID(ctx, path.Root("id"), req, resp)
	}
	"""

// Generate Terraform resource
for rsname, rsinfo in inputs.resources {
	if !(*rsinfo.meta.datasource | false) {
		outputs: files: "internal/resources/\(strings.ToLower(rsname))/resource.go": template.#File & {
			content: gotemplate.Execute(_resource_operation_template, {
				"name": naming.#UpperCamel & {"name": rsname}
			})
		}
	}
}
