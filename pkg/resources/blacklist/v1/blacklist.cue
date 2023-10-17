package v1

//
//
#BlackList: {
	//
	//	Source
	//	
	source?: #Source @protobuf(1,Source)

	//
	//	Filters
	//	
	filterRules?: [...#Filter] @protobuf(2,Filter,name=filter_rules)
}

//
//
#Filter: {
	//
	//	Name
	//	
	name?: string @protobuf(1,string)

	//
	//	Operation
	//	
	operation?: string @protobuf(2,string)

	//
	//	Condition, represented by DQL
	//	
	condition?: string @protobuf(3,string)

	//
	//	Values
	//	
	values?: [...string] @protobuf(4,string)
}

//
//
#Source: {
	//
	//	Source Type
	//	
	type?: string @protobuf(1,string)

	//
	//	Source
	//	
	name?: string @protobuf(2,string)
}
