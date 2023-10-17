package resources

resources: "Mute": {
	plural: "mutes"
	title: {
		zh: "静默规则"
		en: "Mute Rule"
	}
	description: {
		zh: """
			静默规则是一种功能，允许您暂时停止接收特定告警的通知。您可以使用静默规则暂时沉默不相关的告警，或者沉默您已经意识到的告警。

			观测云静默规则支持对当前工作空间的全部静默规则进行管理。支持对不同的监控器、智能巡检、自建巡检、SLO、告警策略进行静默管理，使静默对象在静默时间内不向任一告警通知对象发送告警通知。

			关联：

			```mermaid
			graph LR
			    A[静默规则] --> B[告警策略]
			```
			"""
		en: """
			Mute rule is a feature that allows you to temporarily stop receiving notifications for a specific alert. You can use mute rules to temporarily silence alerts that are not relevant to you, or to silence alerts that you are already aware of.

			Guance Cloud supports the management of all mute rules in the current workspace. It supports muting different monitors, smart inspections, self-built inspections, SLOs, and alert policies, so that the muted objects do not send any alert notifications to any alert notification objects during the mute time.

			Relationships:

			```mermaid
			graph LR
			    A[Mute Rule] --> B[Alert Policy]
			```
			"""
	}
	identifier: {
		primary: [
		]
	}
}

resources: "Mute": models: "Mute": {
	properties: [
		{
			name: "mute_ranges"
			title: {
				zh: "沉默范围"
				en: "Mute Ranges"
			}
			schema: {
				type: "array"
				elem: {
					type:  "object"
					model: "MuteRange"
				}
			}
		},
		{
			name: "notify"
			title: {
				zh: "通知选项"
				en: "Notify Options"
			}
			schema: {
				type:  "object"
				model: "NotifyOptions"
			}
		},
		{
			name: "notify_targets"
			title: {
				zh: "通知目标"
				en: "Notify targets"
			}
			schema: {
				type: "array"
				elem: {
					type:  "object"
					model: "NotifyTarget"
				}
			}
		},
		{
			name: "onetime"
			title: {
				zh: "一次性配置"
				en: "Onetime"
			}
			schema: {
				type:     "object"
				model:    "OnetimeOptions"
				required: false
			}
		},
		{
			name: "repeat"
			title: {
				zh: "周期性重复配置"
				en: "Repeat"
			}
			schema: {
				type:     "object"
				model:    "RepeatOptions"
				required: false
			}
		},
		{
			name: "mute_tags"
			title: {
				zh: "标签"
				en: "Tags"
			}
			schema: {
				type: "array"
				elem: {
					type:  "object"
					model: "Tag"
				}
			}
		},
	]
}

resources: "Mute": models: "MuteRange": {
	properties: [
		{
			name: "type"
			title: {
				zh: "静默范围类型"
				en: "Mute Range Type"
			}
			schema: {
				type: "string"
				enum: [
					{name: "monitor", value:      "monitor", title: {zh:      "监控器", en:  "Monitor"}},
					{name: "alert_policy", value: "alert_policy", title: {zh: "告警策略", en: "Alert Policy"}},
				]
				required: true
			}
		},
		{
			name: "monitor"
			title: {
				zh: "监控器配置"
				en: "Monitor configuration"
			}
			schema: {
				type:  "object"
				model: "MuteRangeMonitor"
			}
		},
		{
			name: "alert_policy"
			title: {
				zh: "告警策略配置"
				en: "Alert Policy configuration"
			}
			schema: {
				type:  "object"
				model: "MuteRangeAlertPolicy"
			}
		},
	]
}

resources: "Mute": models: "MuteRangeMonitor": {
	properties: [
		{
			name: "id"
			title: {
				zh: "监控器 ID"
				en: "Monitor ID"
			}
			schema: {
				type:     "string"
				required: true
			}
		},
	]
}

resources: "Mute": models: "MuteRangeAlertPolicy": {
	properties: [
		{
			name: "id"
			title: {
				zh: "告警策略 ID"
				en: "Alert Policy ID"
			}
			schema: {
				type:     "string"
				required: true
			}
		},
	]
}

// Notify Options
resources: "Mute": models: "NotifyOptions": {
	properties: [
		{
			name: "message"
			title: {
				zh: "通知信息"
				en: "Notify Message"
			}
			schema: {
				type: "string"
			}
		},
		{
			name: "before_time"
			title: {
				zh: "提前多长时间通知"
				en: "Notify Time"
			}
			schema: {
				type:   "string"
				format: "duration"
			}
		},
	]
}

resources: "Mute": models: "OnetimeOptions": {
	properties: [
		{
			name: "start"
			title: {
				zh: "开始时间戳毫秒"
				en: "Start"
			}
			schema: {
				type:   "string"
				format: "date-time"
			}
		},
		{
			name: "end"
			title: {
				zh: "结束时间戳毫秒"
				en: "End"
			}
			schema: {
				type:   "string"
				format: "date-time"
			}
		},
	]
}

// Repeat Options
resources: "Mute": models: "RepeatOptions": {
	properties: [
		{
			name: "start"
			title: {
				zh: "开始时间戳毫秒"
				en: "Start"
			}
			schema: {
				type:   "string"
				format: "time"
			}
		},
		{
			name: "end"
			title: {
				zh: "结束时间戳毫秒"
				en: "End"
			}
			schema: {
				type:   "string"
				format: "time"
			}
		},
		{
			name: "crontab_duration"
			title: {
				zh: "结束时间减去开始时间, 正整数,单位为 s"
				en: "Crontab Duration"
			}
			schema: {
				type:   "string"
				format: "duration"
			}
		},
		{
			name: "expire"
			title: {
				zh: "重复结束时间,具体的时间戳, 如果是永远重复传输 0"
				en: "Repeat Expire"
			}
			schema: {
				type:   "string" // ms
				format: "date-time"
			}
		},
		{
			name: "crontab"
			title: {
				zh: "Crontab 配置"
				en: "Crontab configuration"
			}
			schema: {
				type:  "object"
				model: "RepeatCrontabSet"
			}
		},
	]
}

resources: "Mute": models: "Tag": {
	properties: [
		{
			name: "key"
			title: {
				zh: "标签"
				en: "Tag"
			}
			schema: {
				type:     "string"
				required: true
			}
		},
		{
			name: "value"
			title: {
				zh: "标签值"
				en: "Tag Value"
			}
			schema: {
				type:     "string"
				required: true
			}
		},
	]
}

resources: "Mute": models: "RepeatCrontabSet": {
	properties: [
		{
			name: "min"
			title: {
				zh: "分钟"
				en: "Min"
			}
			schema: {
				type: "string"
			}
		},
		{
			name: "hour"
			title: {
				zh: "小时"
				en: "Hour"
			}
			schema: {
				type: "string"
			}
		},
		{
			name: "day"
			title: {
				zh: "天"
				en: "Day"
			}
			schema: {
				type: "string"
			}
		},
		{
			name: "month"
			title: {
				zh: "月"
				en: "Month"
			}
			schema: {
				type: "string"
			}
		},
		{
			name: "week"
			title: {
				zh: "周"
				en: "Week"
			}
			schema: {
				type: "string"
			}
		},
	]
}

// Notify Target
resources: "Mute": models: "NotifyTarget": {
	properties: [
		{
			name: "type"
			title: {
				zh: "通知类型"
				en: "Notify Type"
			}
			schema: {
				type: "string"
				enum: [
					{name: "member_group", value: "member_group", title: {zh: "成员组", en: "MemberGroup"}},
					{name: "notification", value: "notification", title: {zh: "通知", en:  "Notification"}},
				]
				required: true
			}
		},
		{
			name: "member_group"
			title: {
				zh: "成员组"
				en: "MemberGroup"
			}
			schema: {
				type:  "object"
				model: "NotifyTargetMemberGroup"
			}
		},
		{
			name: "notification"
			title: {
				zh: "通知"
				en: "Notification"
			}
			schema: {
				type:  "object"
				model: "NotifyTargetNotification"
			}
		},
	]
}

resources: "Mute": models: "NotifyTargetMemberGroup": {
	properties: [
		{
			name: "id"
			title: {
				zh: "成员组 ID"
				en: "MemberGroup ID"
			}
			schema: {
				type:     "string"
				required: true
			}
		},
	]
}

resources: "Mute": models: "NotifyTargetNotification": {
	properties: [
		{
			name: "id"
			title: {
				zh: "通知 ID"
				en: "Notification ID"
			}
			schema: {
				type:     "string"
				required: true
			}
		},
	]
}
