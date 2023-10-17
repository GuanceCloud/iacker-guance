package v1

//
//
#DingTalkRobot: {
	//
	//	DingTalk Robot Call Address
	//	
	webhook?: string @protobuf(1,string)

	//
	//	DingTalk Robot Call Secret
	//	
	secret?: string @protobuf(2,string)
}

//
//
#FeishuRobot: {
	//
	//	Feishu Robot Call Address
	//	
	webhook?: string @protobuf(1,string)

	//
	//	Feishu Robot Call Secret
	//	
	secret?: string @protobuf(2,string)
}

//
//
#HTTPRequest: {
	//
	//	HTTP Call Address
	//	
	url?: string @protobuf(1,string)
}

//
//
#MailGroup: {
	//
	//	Member Account List
	//	
	to?: [...string] @protobuf(1,string)
}

//
//
#Notification: {
	//
	//	Notification object name
	//	
	name?: string @protobuf(1,string)

	//
	//	Trigger rule type
	//	
	type?: string @protobuf(2,string)

	//
	//	DingTalk Robot
	//	
	dingTalkRobot?: #DingTalkRobot @protobuf(3,DingTalkRobot,name=ding_talk_robot)

	//
	//	HTTP Request
	//	
	httpRequest?: #HTTPRequest @protobuf(4,HTTPRequest,name=http_request)

	//
	//	WeChat Robot
	//	
	wechatRobot?: #WeChatRobot @protobuf(5,WeChatRobot,name=wechat_robot)

	//
	//	Mail Group
	//	
	mailGroup?: #MailGroup @protobuf(6,MailGroup,name=mail_group)

	//
	//	Feishu Robot
	//	
	feishuRobot?: #FeishuRobot @protobuf(7,FeishuRobot,name=feishu_robot)

	//
	//	SMS
	//	
	sms?: #SMS @protobuf(8,SMS)
}

//
//
#SMS: {
	//
	//	Phone Number List
	//	
	to?: [...string] @protobuf(1,string)
}

//
//
#WeChatRobot: {
	//
	//	Robot Call Address
	//	
	webhook?: string @protobuf(1,string)
}
