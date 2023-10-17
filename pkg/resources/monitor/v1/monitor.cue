package v1

//
//
#AlertPolicy: {
	//
	//	Alert Policy ID
	//	
	id?: string @protobuf(1,string)
}

//
//
#Dashboard: {
	//
	//	Dashboard ID
	//	
	id?: string @protobuf(1,string)
}

//
//
#Monitor: {
	//
	//	Monitor Configuration
	//	
	manifest?: string @protobuf(1,string)

	//
	//	Alert Policy Configuration
	//	
	alertPolicy?: #AlertPolicy @protobuf(2,AlertPolicy,name=alert_policy)

	//
	//	Dashboard Configuration
	//	
	dashboard?: #Dashboard @protobuf(3,Dashboard)
}
