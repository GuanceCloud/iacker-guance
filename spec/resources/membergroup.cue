package resources

resources: "MemberGroup": {
	plural: "member_groups"
	title: {
		zh: "成员组"
		en: "Member Group"
	}
	description: {
		zh: """
			成员组是工作空间的成员的集合，成员组可以被授权访问工作空间的资源。

			成员组是一个抽象的概念，它可以是一个团队，也可以是一个部门，它可以帮助我们构建一个合理的组织结构，优化可观测性平台的管理效率和使用体验。

			关系图：

			```mermaid
			graph LR

			A[工作空间] --> B[成员]
			A[工作空间] --> C[成员组]
			```
			"""
		en: """
			Member group is a collection of members in a workspace, and member groups can be authorized to access the resources in the workspace.

			Member group is an abstract concept, it can be a team, or a department, it can help us build a reasonable organizational structure, optimize the management efficiency and user experience of the observability platform.

			Relationships:

			```mermaid
			graph LR

			A[Workspace] --> B[Member]
			A --> C[MemberGroup]
			```
			"""
	}
	identifier: {
		primary: [
			"/properties/name",
		]
	}
}

resources: "MemberGroup": models: "MemberGroup": {
	properties: [
		{
			name: "name"
			title: {
				zh: "名称"
				en: "Name"
			}
			schema: {
				type:     "string"
				required: true
			}
		},
		{
			name: "member_ids"
			title: {
				zh: "成员 ID 列表"
				en: "Member id list"
			}
			schema: {
				type: "array"
				elem: {
					type: "string"
				}
			}
		},
	]
}
