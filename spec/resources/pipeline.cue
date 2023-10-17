package resources

resources: "Pipeline": {
	plural: "pipelines"
	title: {
		zh: "流水线"
		en: "Pipeline"
	}
	description: {
		zh: """
			流水线是观测云推出的一种数据处理语言，流水线支持对不同格式的日志数据进行文本解析。

			通过编写流水线脚本，可以自定义切割出符合要求的结构化日志，并把切割出来的字段作为属性使用。

			通过切割出的属性字段，我们可以快速筛选相关日志、进行数据关联分析，帮助我们快速去定位问题并解决问题。
			"""
		en: """
			Pipeline is a data processing language that Observability Cloud provides. Pipeline supports text parsing of different formats of log data.

			By writing a pipeline script, you can customize the structure of the log and use the cut fields as attributes.

			By cutting out the attribute fields, we can quickly filter the relevant logs and perform data association analysis to help us quickly locate and solve problems.
			"""
	}
}

resources: "Pipeline": models: "Pipeline": {
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
			name: "source"
			title: {
				zh: "数据源列表"
				en: "Data source list"
			}
			schema: {
				type: "array"
				elem: {
					type: "string"
				}
			}
		},
		{
			name: "content"
			title: {
				zh: "Pipeline 文件内容"
				en: "Pipeline file content"
			}
			schema: {
				type:     "string"
				required: true
			}
		},
		{
			name: "test_data"
			title: {
				zh: "测试数据"
				en: "Test data"
			}
			schema: {
				type:     "string"
				required: false
			}
		},
		{
			name: "is_force"
			title: {
				zh: "是否强制覆盖"
				en: "Is Force Overwrite"
			}
			schema: {
				type:     "boolean"
				required: false
			}
		},
		{
			name: "category"
			title: {
				zh: "类别"
				en: "Category"
			}
			schema: {
				type:     "string"
				required: true
				enum: [
					{name: "logging", value:       "logging", title: {zh:       "日志", en:    "logging"}},
					{name: "object", value:        "object", title: {zh:        "对象", en:    "object"}},
					{name: "custom_object", value: "custom_object", title: {zh: "自定义对象", en: "custom_object"}},
					{name: "network", value:       "network", title: {zh:       "网络", en:    "network"}},
					{name: "tracing", value:       "tracing", title: {zh:       "追踪", en:    "tracing"}},
					{name: "rum", value:           "rum", title: {zh:           "RUM", en:   "RUM"}},
					{name: "security", value:      "security", title: {zh:      "安全", en:    "security"}},
					{name: "keyevent", value:      "keyevent", title: {zh:      "关键事件", en:  "keyevent"}},
					{name: "metric", value:        "metric", title: {zh:        "指标", en:    "metric"}},
				]
			}
		},
		{
			name: "is_default"
			title: {
				zh: "是否作为默认Pipeline"
				en: "Is Default Pipeline"
			}
			schema: {
				type:     "boolean"
				required: false
			}
		},
	]
}
