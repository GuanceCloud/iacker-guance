package v1

//
//
#AlertPolicy: {
	//
	//	Alert Policy Name
	//	
	name?: string @protobuf(1,string)

	//
	//	Silent timeout timestamp
	//	
	silentTimeout?: string @protobuf(2,string,name=silent_timeout)

	//
	//	The status value of the event to be sent
	//	
	statuses?: [...string] @protobuf(3,string)

	//
	//	Alert Action
	//	
	alertTargets?: [...#AlertTarget] @protobuf(4,AlertTarget,name=alert_targets)
}

//
//
#AlertTarget: {
	//
	//	Alert type
	//	
	type?: string @protobuf(1,string)

	//
	//	Notification
	//	
	notification?: #TargetNotification @protobuf(2,TargetNotification)

	//
	//	Member Group
	//	
	memberGroup?: #TargetMemberGroup @protobuf(3,TargetMemberGroup,name=member_group)
}

//
//
#TargetMemberGroup: {
	//
	//	Member Group
	//	
	id?: string @protobuf(1,string)
}

//
//
#TargetNotification: {
	//
	//	Notification
	//	
	id?: string @protobuf(1,string)
}
