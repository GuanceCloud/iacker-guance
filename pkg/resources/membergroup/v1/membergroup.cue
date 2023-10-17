package v1

//
//
#MemberGroup: {
	//
	//	Name
	//	
	name?: string @protobuf(1,string)

	//
	//	Member id list
	//	
	memberIds?: [...string] @protobuf(2,string,name=member_ids)
}
