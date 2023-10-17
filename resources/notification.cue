package resources

resources: "Notification": {
    plural: "notifications"
    title: {
        zh: "通知"
        en: "Notification"
    }
    description: {
        zh: """
        通知是一种能够在事件发生时接收告警的功能。

        观测云支持设置告警事件的通知对象，当告警事件发生时，会将告警信息发送到通知对象中。

        观测云支持多种不同的通知方式，您可以参阅文档了解更多。

        关联：

        ```mermaid
        graph LR

        A[监控器] --> B[告警策略] --> C[通知对象]
        ```
        """
        en: """
        Notification is a feature that allows you to receive alerts when an event occurs.

        Guance Cloud supports setting the notification object for the alert event. When the alert event occurs, the alert information will be sent to the notification object.

        Guance Cloud supports multiple different notification methods. You can refer to the documentation to learn more.

        Relationships:

        ```mermaid
        graph LR

        A[Monitor] --> B[Alert Policy] --> C[Notification]
        ```
        """
    }
    identifier: {
    	primary: [
    		"/properties/name",
    	]
    }
}

resources: "Notification": models: "Notification": {
    properties: [
        {
            name: "name"
            title: {
                zh: "通知对象名字"
                en: "Notification object name"
            },
            schema: {
                type: "string"
                len: {
                    min: 1
                    max: 64
                }
                required: true
            }
        },
        {
            name: "type"
            title: {
                zh: "触发规则类型"
                en: "Trigger rule type"
            },
            schema: {
                type: "string",
                required: true
                enum: [
                    { name: "ding_talk_robot", value: "ding_talk_robot", title: { zh: "钉钉机器人", en: "DingTalk Robot" } },
                    { name: "http_request", value: "http_request", title: { zh: "HTTP请求", en: "HTTP Request" } },
                    { name: "wechat_robot", value: "wechat_robot", title: { zh: "微信机器人", en: "WeChat Robot" } },
                    { name: "mail_group", value: "mail_group", title: { zh: "邮件组", en: "Mail Group" } },
                    { name: "feishu_robot", value: "feishu_robot", title: { zh: "飞书机器人", en: "Feishu Robot" } },
                    { name: "sms", value: "sms", title: { zh: "短信", en: "SMS" } },
                ]
            }
        },
        {
            name: "ding_talk_robot"
            title: {
                zh: "钉钉机器人"
                en: "DingTalk Robot"
            },
            schema: {
                type: "object"
                model: "DingTalkRobot"
            }
        },
        {
            name: "http_request"
            title: {
                zh: "HTTP请求"
                en: "HTTP Request"
            },
            schema: {
                type: "object"
                model: "HTTPRequest"
            }
        },
        {
            name: "wechat_robot"
            title: {
                zh: "微信机器人"
                en: "WeChat Robot"
            },
            schema: {
                type: "object"
                model: "WeChatRobot"
            }
        },
        {
            name: "mail_group"
            title: {
                zh: "邮件组"
                en: "Mail Group"
            },
            schema: {
                type: "object"
                model: "MailGroup"
            }
        },
        {
            name: "feishu_robot"
            title: {
                zh: "飞书机器人"
                en: "Feishu Robot"
            },
            schema: {
                type: "object"
                model: "FeishuRobot"
            }
        },
        {
            name: "sms"
            title: {
                zh: "短信"
                en: "SMS"
            },
            schema: {
                type: "object"
                model: "SMS"
            }
        },
    ]
}

resources: "Notification": models: "DingTalkRobot": {
    properties: [
        {
            name: "webhook"
            title: {
                zh: "钉钉机器⼈调⽤地址"
                en: "DingTalk Robot Call Address"
            },
            schema: {
                type: "string"
                required: true
            }
        },
        {
            name: "secret"
            title: {
                zh: "钉钉机器⼈调⽤密钥"
                en: "DingTalk Robot Call Secret"
            },
            schema: {
                type: "string"
                len: {
                    min: 1
                    max: 64
                }
                required: true
            }
        },
    ]
}

resources: "Notification": models: "HTTPRequest": {
    properties: [
        {
            name: "url"
            title: {
                zh: "HTTP 调⽤地址"
                en: "HTTP Call Address"
            },
            schema: {
                type: "string"
                required: true
            }
        },
    ]
}

resources: "Notification": models: "WeChatRobot": {
    properties: [
        {
            name: "webhook"
            title: {
                zh: "机器⼈调⽤地址"
                en: "Robot Call Address"
            },
            schema: {
                type: "string"
                required: true
            }
        },
    ]
}

resources: "Notification": models: "MailGroup": {
    properties: [
        {
            name: "to"
            title: {
                zh: "成员账号列表"
                en: "Member Account List"
            },
            schema: {
                type: "array"
                elem: {
                    type: "string"
                }
                required: true
            }
        },
    ]
}

resources: "Notification": models: "FeishuRobot": {
    properties: [
        {
            name: "webhook"
            title: {
                zh: "飞书机器⼈调⽤地址"
                en: "Feishu Robot Call Address"
            }
            schema: {
                type: "string"
                required: true
            }
        },
        {
            name: "secret"
            title: {
                zh: "飞书机器⼈调⽤密钥"
                en: "Feishu Robot Call Secret"
            },
            schema: {
                type: "string"
                required: true
            }
        },
    ]
}

resources: "Notification": models: "SMS": {
    properties: [
        {
            name: "to"
            title: {
                zh: "手机号码列表"
                en: "Phone Number List"
            },
            schema: {
                type: "array"
                elem: {
                    type: "string"
                }
                required: true
            }
        },
    ]
}
