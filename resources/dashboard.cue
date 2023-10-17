package resources

// Dashboard
resources: "Dashboard": {
	plural: "dashboards"
	title: {
		zh: "仪表板"
		en: "Dashboard"
	}
	description: {
		zh: """
			仪表板是一组可视化图表，用于监控系统和应用程序的健康状况。仪表板由一个或多个面板组成，这些面板本身就是可视化图表。每个面板显示单个指标或指标的单个聚合。

			仪表板是可视化数据和监控系统的好方法。您可以使用它们来跟踪时间范围内的指标，并快速查看系统的性能。您还可以使用它们来比较来自不同系统和应用程序的指标。

			观测云的仪表盘用于清晰地展示指标数据值所在的范围。适用于切割杂乱无章的数据，从而分割出要点。
			"""
		en: """
			A dashboard is a collection of visualizations that you can use to monitor the health of your systems and applications. Dashboards are made up of one or more panels, which are the visualizations themselves. Each panel displays a single metric or a single aggregation of metrics.

			Dashboards are a great way to visualize your data and monitor your systems. You can use them to track metrics over time, and to quickly see how your systems are performing. You can also use them to compare metrics from different systems and applications.

			Guance Cloud's dashboard is used to clearly show the range in which the metric data values are located. It is suitable for slicing messy data into points.
			"""
	}
	identifier: {
		primary: [
			"/properties/name",
		]
	}
}

resources: "Dashboard": models: "Dashboard": {
	properties: [
		{
			name: "name"
			title: {
				zh: "仪表板名称"
				en: "Dashboard Name"
			}
			schema: {
				type: "string"
				required: true
			}
		},
		{
			name: "manifest"
			title: {
				zh: "仪表板配置"
				en: "Dashboard Manifest"
			}
			schema: {
				type:   "string"
				format: "json"
				required: true
			}
		},
	]
}
