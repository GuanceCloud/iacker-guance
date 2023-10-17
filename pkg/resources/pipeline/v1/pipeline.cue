package v1

//
//
#Pipeline: {
	//
	//	Name
	//	
	name?: string @protobuf(1,string)

	//
	//	Data source list
	//	
	source?: [...string] @protobuf(2,string)

	//
	//	Pipeline file content
	//	
	content?: string @protobuf(3,string)

	//
	//	Test data
	//	
	testData?: string @protobuf(4,string,name=test_data)

	//
	//	Is Force Overwrite
	//	
	isForce?: bool @protobuf(5,bool,name=is_force)

	//
	//	Category
	//	
	category?: string @protobuf(6,string)

	//
	//	Is Default Pipeline
	//	
	isDefault?: bool @protobuf(7,bool,name=is_default)
}
