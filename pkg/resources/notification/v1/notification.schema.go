// Code generated by Iacker. DO NOT EDIT IT.
package v1

import (
	_ "embed"
)

// ResourceType is the unique type name of Notification
const ResourceType = "Notification"

//go:embed notification.schema.json
var schemaRaw []byte

const (
	// NotificationTypeDingTalkRobot is the value of DingTalk Robot
	NotificationTypeDingTalkRobot = "ding_talk_robot"
	// NotificationTypeHttpRequest is the value of HTTP Request
	NotificationTypeHttpRequest = "http_request"
	// NotificationTypeWechatRobot is the value of WeChat Robot
	NotificationTypeWechatRobot = "wechat_robot"
	// NotificationTypeMailGroup is the value of Mail Group
	NotificationTypeMailGroup = "mail_group"
	// NotificationTypeFeishuRobot is the value of Feishu Robot
	NotificationTypeFeishuRobot = "feishu_robot"
	// NotificationTypeSms is the value of SMS
	NotificationTypeSms = "sms"
)

// resourceSchema is the schema of Notification
type resourceSchema struct{}

// Raw returns the raw schema bytes of Notification
func (s *resourceSchema) Raw() []byte {
	return schemaRaw
}

// ReferenceTypes returns the related resource types of Notification
func (s *resourceSchema) ReferenceTypes() []string {
	return []string{}
}
