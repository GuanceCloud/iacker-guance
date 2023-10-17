package resources

resources: "Member": {
	plural: "members"
	title: {
		zh: "工作空间成员"
		en: "Workspace Member"
	}
	description: {
		zh: """
			工作空间成员是拥有工作空间访问权限的用户。

			观测云支持通过成员管理对当前工作空间的全部成员进行统一管理，包括设置角色权限、邀请成员并为成员设置权限、配置成员组、设置 SSO 单点登录等。

			关联：

			```mermaid
			graph LR
			    A[Workspace] --> B[Member]
			```
			"""
		en: """
			A workspace member is a user who has access to a workspace.

			Guance Cloud supports managing all members of the current workspace through member management, including setting role permissions, inviting members and setting permissions for members, configuring member groups, and setting SSO single sign-on.

			Relationships:

			```mermaid
			graph LR
			    A[Workspace] --> B[Member]
			```
			"""
	}

	meta: {
		datasource: true
	}

	identifier: {
		primary: [
			"/properties/username",
		]
	}
}

resources: "Member": models: "Member": {
	properties: [
		{
			name: "email"
			title: {
				en: "Email"
				zh: "邮箱"
			}
			schema: {
				type: "string"
			}
		},
		{
			name: "role"
			title: {
				en: "Role"
				zh: "角色"
			}
			schema: {
				type: "string"
				enum: [
					{name: "owner", value:         "owner", title: {en:    "Owner", zh:         "拥有者"}},
					{name: "administrator", value: "wsAdmin", title: {en:  "Administrator", zh: "管理员"}},
					{name: "standard", value:      "general", title: {en:  "Standard", zh:      "标准成员"}},
					{name: "read_only", value:     "readOnly", title: {en: "Read-only", zh:     "只读成员"}},
				]
			}
		},
	]
}
