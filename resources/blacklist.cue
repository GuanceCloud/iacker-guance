package resources

// BlackList
resources: "BlackList": {
	plural: "black_lists"
	title: {
		zh: "黑名单"
		en: "BlackList"
	}
	description: {
		zh: """
			观测云支持通过设置黑名单的方式过滤掉符合条件的数据。配置黑名单以后，符合条件的数据将不再上报到观测云工作空间，帮助您节约数据存储费用。
			"""
		en: """
			Guance Cloud supports filtering data that meets the conditions by setting a blacklist.
			After configuring the blacklist, the data that meets the conditions will no longer be reported to the Guance Cloud workspace, helping you save data storage costs.
			"""
	}
	identifier: {
		primary: [
		]
	}
}

resources: "BlackList": models: "BlackList": {
	properties: [
		{
			name: "source"
			title: {
				zh: "数据来源"
				en: "Source"
			}
			schema: {
				type:  "object"
				model: "Source"
				required: true
			}
		},
		{
			name: "filter_rules"
			title: {
				zh: "过滤条件"
				en: "Filters"
			}
			schema: {
				type: "array"
				elem: {
					type:  "object"
					model: "Filter"
				}
			}
		},
	]
}

resources: "BlackList": models: "Source": {
	properties: [
		{
			name: "type"
			title: {
				zh: "数据来源类型"
				en: "Source Type"
			}
			schema: {
				type:     "string"
				required: true
				enum: [
									{name: "logging", value: "logging", title: {zh: "日志", en: "logging"}},
									{name: "object", value: "object", title: {zh: "对象", en: "object"}},
									{name: "custom_object", value: "custom_object", title: {zh: "自定义对象", en: "custom_object"}},
									{name: "network", value: "network", title: {zh: "网络", en: "network"}},
									{name: "tracing", value: "tracing", title: {zh: "追踪", en: "tracing"}},
									{name: "rum", value: "rum", title: {zh: "RUM", en: "RUM"}},
									{name: "security", value: "security", title: {zh: "安全", en: "security"}},
									{name: "keyevent", value: "keyevent", title: {zh: "关键事件", en: "keyevent"}},
									{name: "metric", value: "metric", title: {zh: "指标", en: "metric"}},
								]
			}
		},
		{
			name: "name"
			title: {
				zh: "数据来源"
				en: "Source"
			}
			schema: {
				type: "string"
			}
		},
	]
}

resources: "BlackList": models: "Filter": {
	properties: [
		{
			name: "name"
			title: {
				zh: "筛选条件名"
				en: "Name"
			}
			schema: {
				type:     "string"
				required: true
			}
		},
		{
			name: "operation"
			title: {
				zh: "操作符"
				en: "Operation"
			}
			schema: {
				type:     "string"
				required: true
				enum: [
					{name: "in", value: "in", title: {zh: "等于", en: "Equal"}},
					{name: "not_in", value: "not in", title: {zh: "不等于", en: "Not equal"}},
					{name: "match", value: "match", title: {zh: "包含", en: "Match"}},
					{name: "not_match", value: "not match", title: {zh: "不包含", en: "Not match"}},
				]
			}
		},
		{
			name: "condition"
			title: {
				zh: "DQL 格式的过滤条件"
				en: "Condition, represented by DQL"
			}
			schema: {
				type:     "string"
				required: true
			}
		},
		{
			name: "values"
			title: {
				zh: "查询条件具体数值"
				en: "Values"
			}
			schema: {
				type:  "array"
				elem: {
					type: "string"
				}
			}
		},
	]
}
