package resources

resources: "Monitor": {
	plural: "monitors"
	title: {
		zh: "监控器"
		en: "Monitor"
	}
	description: {
		zh: """
			监控器是一组可以针对您的数据运行的检查。监控器会随着时间的推移监控您的数据，并在满足某些条件时向您发出警报。例如，您可以创建一个监控器来监视您的网站的平均响应时间，并在响应时间大于 1 秒时向您发出警报。

			监控器由一个或多个检查组成。检查是您可以针对数据运行的单个测试。例如，您可以创建一个检查来监视您的网站的平均响应时间。您还可以创建一个检查来监视您的日志中 5xx 错误的百分比。

			观测云支持定义监控器，用户可以自定义配置检测规则和触发条件，开启监控器后，即可接收到由检测规则触发的相关异常事件告警。

			关联：

			```mermaid
			graph LR

			A[监控器] --> B[告警策略] --> C[通知对象]
			```
			"""
		en: """
			A monitor is a set of checks that you can run against your data. A monitor watches your data over time and alerts you when certain conditions are met. For example, you can create a monitor that watches the average response time of your website and alerts you when the response time is greater than 1 second.

			Monitors are made up of one or more checks. A check is a single test that you can run against your data. For example, you can create a check that watches the average response time of your website. You can also create a check that watches the percentage of 5xx errors in your logs.

			Guance Cloud supports defining monitors, users can customize the configuration of detection rules and trigger conditions, and open the monitors to receive related alarm events triggered by the detection rules.

			Relationships:

			```mermaid
			graph LR

			A[Monitor] --> B[Alert Policy] --> C[Notification]
			```
			"""
	}
	identifier: {
		primary: [
		]
	}
}

resources: "Monitor": models: "Monitor": {
	properties: [
		{
			name: "manifest"
			title: {
				zh: "监控器配置"
				en: "Monitor Configuration"
			}
			schema: {
				type:     "string"
				format:   "json"
				required: true
			}
		},
		{
			name: "alert_policy"
			title: {
				zh: "告警策略配置"
				en: "Alert Policy Configuration"
			}
			schema: {
				type:     "object"
				model:    "AlertPolicy"
				required: true
			}
		},
		{
			name: "dashboard"
			title: {
				zh: "仪表板配置"
				en: "Dashboard Configuration"
			}
			schema: {
				type:  "object"
				model: "Dashboard"
			}
		},
	]
}

resources: "Monitor": models: "AlertPolicy": {
	properties: [
		{
			name: "id"
			title: {
				zh: "告警策略 ID"
				en: "Alert Policy ID"
			}
			schema: {
				type: "ref"
				ref:  "AlertPolicy"
			}
		},
	]
}

resources: "Monitor": models: "Dashboard": {
	properties: [
		{
			name: "id"
			title: {
				zh: "仪表板 ID"
				en: "Dashboard ID"
			}
			schema: {
				type: "ref"
				ref:  "Dashboard"
			}
		},
	]
}
