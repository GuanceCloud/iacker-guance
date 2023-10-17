package v1

//
//
#Mute: {
	//
	//	Mute Ranges
	//	
	muteRanges?: [...#MuteRange] @protobuf(1,MuteRange,name=mute_ranges)

	//
	//	Notify Options
	//	
	notify?: #NotifyOptions @protobuf(2,NotifyOptions)

	//
	//	Notify targets
	//	
	notifyTargets?: [...#NotifyTarget] @protobuf(3,NotifyTarget,name=notify_targets)

	//
	//	Onetime
	//	
	onetime?: #OnetimeOptions @protobuf(4,OnetimeOptions)

	//
	//	Repeat
	//	
	repeat?: #RepeatOptions @protobuf(5,RepeatOptions)

	//
	//	Tags
	//	
	muteTags?: [...#Tag] @protobuf(6,Tag,name=mute_tags)
}

//
//
#MuteRange: {
	//
	//	Mute Range Type
	//	
	type?: string @protobuf(1,string)

	//
	//	Monitor configuration
	//	
	monitor?: #MuteRangeMonitor @protobuf(2,MuteRangeMonitor)

	//
	//	Alert Policy configuration
	//	
	alertPolicy?: #MuteRangeAlertPolicy @protobuf(3,MuteRangeAlertPolicy,name=alert_policy)
}

//
//
#MuteRangeAlertPolicy: {
	//
	//	Alert Policy ID
	//	
	id?: string @protobuf(1,string)
}

//
//
#MuteRangeMonitor: {
	//
	//	Monitor ID
	//	
	id?: string @protobuf(1,string)
}

//
//
#NotifyOptions: {
	//
	//	Notify Message
	//	
	message?: string @protobuf(1,string)

	//
	//	Notify Time
	//	
	beforeTime?: string @protobuf(2,string,name=before_time)
}

//
//
#NotifyTarget: {
	//
	//	Notify Type
	//	
	type?: string @protobuf(1,string)

	//
	//	MemberGroup
	//	
	memberGroup?: #NotifyTargetMemberGroup @protobuf(2,NotifyTargetMemberGroup,name=member_group)

	//
	//	Notification
	//	
	notification?: #NotifyTargetNotification @protobuf(3,NotifyTargetNotification)
}

//
//
#NotifyTargetMemberGroup: {
	//
	//	MemberGroup ID
	//	
	id?: string @protobuf(1,string)
}

//
//
#NotifyTargetNotification: {
	//
	//	Notification ID
	//	
	id?: string @protobuf(1,string)
}

//
//
#OnetimeOptions: {
	//
	//	Start
	//	
	start?: string @protobuf(1,string)

	//
	//	End
	//	
	end?: string @protobuf(2,string)
}

//
//
#RepeatCrontabSet: {
	//
	//	Min
	//	
	min?: string @protobuf(1,string)

	//
	//	Hour
	//	
	hour?: string @protobuf(2,string)

	//
	//	Day
	//	
	day?: string @protobuf(3,string)

	//
	//	Month
	//	
	month?: string @protobuf(4,string)

	//
	//	Week
	//	
	week?: string @protobuf(5,string)
}

//
//
#RepeatOptions: {
	//
	//	Start
	//	
	start?: string @protobuf(1,string)

	//
	//	End
	//	
	end?: string @protobuf(2,string)

	//
	//	Crontab Duration
	//	
	crontabDuration?: string @protobuf(3,string,name=crontab_duration)

	//
	//	Repeat Expire
	//	
	expire?: string @protobuf(4,string)

	//
	//	Crontab configuration
	//	
	crontab?: #RepeatCrontabSet @protobuf(5,RepeatCrontabSet)
}

//
//
#Tag: {
	//
	//	Tag
	//	
	key?: string @protobuf(1,string)

	//
	//	Tag Value
	//	
	value?: string @protobuf(2,string)
}
