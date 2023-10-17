package resources

// Alert Policy
resources: "AlertPolicy": {
    plural: "alert_policies"
    title: {
        zh: "告警策略"
        en: "Alert Policy"
    }
    description: {
        zh: """
        告警策略是一组规则，定义了何时触发告警。您可以为您的数据源创建告警策略，并设置告警目标接收告警。

        观测云支持对监控器的检测结果进行告警策略管理，通过发送告警通知邮件或者群消息通知，让您及时了解监测的异常数据情况，发现问题，解决问题。

        关联：

        ```mermaid
        graph LR

        A[监控器] --> B[告警策略] --> C[通知对象]
        ```

        注意：

        1. 每个监控器创建时必须选择一个告警策略，默认选中「默认」；
        2. 当某个告警策略被删除时，删除告警策略下的监控器将自动归类到「默认」下。
        """
        en: """
        Alert policy is a set of rules that define when to trigger an alert. You can create alert policies for your data sources, and set up alert targets to receive alerts.

        Guance Cloud supports alert policy management for the results of monitor checks, by sending alert notification emails or group message notifications, so that you can know about the abnormal data situation of the monitoring in time, find problems, and solve problems.

        Relationships:

        ```mermaid
        graph LR

        A[Monitor] --> B[Alert Policy] --> C[Notification]
        ```

        Notes:

        1. When a monitor is created, an alert policy must be selected, and the default is selected by default;
        2. When a certain alert policy is deleted, the monitor under the deleted alert policy will automatically be classified into the default.
        """
    }
    identifier: {
    	primary: [
    		"/properties/name",
    	]
    }
}

// Alert Policy Model
resources: "AlertPolicy": models: "AlertPolicy": {
	properties: [
        {
            name: "name"
            title: {
                zh: "告警策略名"
                en: "Alert Policy Name"
            },
            schema: {
                type: "string"
                required: true
            }
        },
        {
            name: "silent_timeout"
            title: {
                zh: "沉默超时时间-时间戳"
                en: "Silent timeout timestamp"
            }
            schema: {
                type: "string"
                format: "duration"
            }
        },
        {
            name: "statuses"
            title: {
                zh: "待发送告警事件的 status 值"
                en: "The status value of the event to be sent"
            }
            schema: {
                type: "array"
                elem: {
                    type: "string"
                    enum: [
                        {name: "all", value: "ALL", title: {zh: "全部", en: "ALL"}},
                        {name: "critical", value: "critical", title: {zh: "严重", en: "critical"}},
                        {name: "error", value: "error", title: {zh: "错误", en: "error"}},
                        {name: "warning", value: "warning", title: {zh: "警告", en: "warning"}},
                        {name: "info", value: "info", title: {zh: "信息", en: "info"}},
                        {name: "ok", value: "ok", title: {zh: "正常", en: "ok"}},
                        {name: "nodata", value: "nodata", title: {zh: "无数据", en: "nodata"}},
                        {name: "nodata_ok", value: "nodata_ok", title: {zh: "无数据正常", en: "nodata_ok"}},
                        {name: "nodata_as_ok", value: "nodata_as_ok", title: {zh: "无数据当正常", en: "nodata_as_ok"}},
                    ]
                }
                required: true
            }
        },
        {
            name: "alert_targets"
            title: {
                zh: "告警动作"
                en: "Alert Action"
            }
            schema: {
                type: "array"
                elem: {
                    type: "object"
                    model: "AlertTarget"
                }
            }
        },
    ]
}

// Alert Target
resources: "AlertPolicy": models: "AlertTarget": {
    properties: [
        {
            name: "type"
            title: {
                zh: "告警类型"
                en: "Alert type"
            }
            schema: {
                type: "string"
                enum: [
                	{name: "MemberGroup", value: "member_group", title: {zh: "成员组", en: "Member group"}},
                    {name: "Notification", value: "notification", title: {zh: "通知对象", en: "Notification object"}},
                ]
                required: true
            }
        },
        {
            name: "notification"
            title: {
                zh: "通知"
                en: "Notification"
            }
            schema: {
                type: "object"
                model: "TargetNotification"
                required: false
            }
        },
				{
            name: "member_group"
            title: {
                zh: "成员组"
                en: "Member Group"
            }
            schema: {
                type: "object"
                model: "TargetMemberGroup"
                required: false
            }
        },
    ]
}

// Notification Target
resources: "AlertPolicy": models: "TargetNotification": {
    properties: [
        {
            name: "id"
            title: {
                zh: "通知对象"
                en: "Notification"
            }
            schema: {
                type: "ref"
                ref: "Notification"
                required: true
            }
        },
    ]
}

// Notification Target
resources: "AlertPolicy": models: "TargetMemberGroup": {
    properties: [
        {
            name: "id"
            title: {
                zh: "成员组"
                en: "Member Group"
            }
            schema: {
                type: "ref"
                ref: "MemberGroup"
                required: true
            }
        },
    ]
}
