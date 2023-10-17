// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        (unknown)
// source: pkg/blacklist/v1/blacklist.proto

package v1

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type BlackList struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Source
	Source *Source `protobuf:"bytes,1,opt,name=source,proto3" json:"source,omitempty"`
	// Filters
	FilterRules []*Filter `protobuf:"bytes,2,rep,name=filter_rules,json=filterRules,proto3" json:"filter_rules,omitempty"`
}

func (x *BlackList) Reset() {
	*x = BlackList{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pkg_blacklist_v1_blacklist_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *BlackList) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*BlackList) ProtoMessage() {}

func (x *BlackList) ProtoReflect() protoreflect.Message {
	mi := &file_pkg_blacklist_v1_blacklist_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use BlackList.ProtoReflect.Descriptor instead.
func (*BlackList) Descriptor() ([]byte, []int) {
	return file_pkg_blacklist_v1_blacklist_proto_rawDescGZIP(), []int{0}
}

func (x *BlackList) GetSource() *Source {
	if x != nil {
		return x.Source
	}
	return nil
}

func (x *BlackList) GetFilterRules() []*Filter {
	if x != nil {
		return x.FilterRules
	}
	return nil
}

type Filter struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Name
	Name string `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty"`
	// Operation
	Operation string `protobuf:"bytes,2,opt,name=operation,proto3" json:"operation,omitempty"`
	// Condition, represented by DQL
	Condition string `protobuf:"bytes,3,opt,name=condition,proto3" json:"condition,omitempty"`
	// Values
	Values []string `protobuf:"bytes,4,rep,name=values,proto3" json:"values,omitempty"`
}

func (x *Filter) Reset() {
	*x = Filter{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pkg_blacklist_v1_blacklist_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Filter) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Filter) ProtoMessage() {}

func (x *Filter) ProtoReflect() protoreflect.Message {
	mi := &file_pkg_blacklist_v1_blacklist_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Filter.ProtoReflect.Descriptor instead.
func (*Filter) Descriptor() ([]byte, []int) {
	return file_pkg_blacklist_v1_blacklist_proto_rawDescGZIP(), []int{1}
}

func (x *Filter) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *Filter) GetOperation() string {
	if x != nil {
		return x.Operation
	}
	return ""
}

func (x *Filter) GetCondition() string {
	if x != nil {
		return x.Condition
	}
	return ""
}

func (x *Filter) GetValues() []string {
	if x != nil {
		return x.Values
	}
	return nil
}

type Source struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Source Type
	Type string `protobuf:"bytes,1,opt,name=type,proto3" json:"type,omitempty"`
	// Source
	Name *string `protobuf:"bytes,2,opt,name=name,proto3,oneof" json:"name,omitempty"`
}

func (x *Source) Reset() {
	*x = Source{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pkg_blacklist_v1_blacklist_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Source) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Source) ProtoMessage() {}

func (x *Source) ProtoReflect() protoreflect.Message {
	mi := &file_pkg_blacklist_v1_blacklist_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Source.ProtoReflect.Descriptor instead.
func (*Source) Descriptor() ([]byte, []int) {
	return file_pkg_blacklist_v1_blacklist_proto_rawDescGZIP(), []int{2}
}

func (x *Source) GetType() string {
	if x != nil {
		return x.Type
	}
	return ""
}

func (x *Source) GetName() string {
	if x != nil && x.Name != nil {
		return *x.Name
	}
	return ""
}

var File_pkg_blacklist_v1_blacklist_proto protoreflect.FileDescriptor

var file_pkg_blacklist_v1_blacklist_proto_rawDesc = []byte{
	0x0a, 0x20, 0x70, 0x6b, 0x67, 0x2f, 0x62, 0x6c, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x73, 0x74, 0x2f,
	0x76, 0x31, 0x2f, 0x62, 0x6c, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x73, 0x74, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x12, 0x1a, 0x70, 0x6b, 0x67, 0x2e, 0x72, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65,
	0x73, 0x2e, 0x62, 0x6c, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x73, 0x74, 0x2e, 0x76, 0x31, 0x22, 0x8e,
	0x01, 0x0a, 0x09, 0x42, 0x6c, 0x61, 0x63, 0x6b, 0x4c, 0x69, 0x73, 0x74, 0x12, 0x3a, 0x0a, 0x06,
	0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x22, 0x2e, 0x70,
	0x6b, 0x67, 0x2e, 0x72, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x73, 0x2e, 0x62, 0x6c, 0x61,
	0x63, 0x6b, 0x6c, 0x69, 0x73, 0x74, 0x2e, 0x76, 0x31, 0x2e, 0x53, 0x6f, 0x75, 0x72, 0x63, 0x65,
	0x52, 0x06, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x12, 0x45, 0x0a, 0x0c, 0x66, 0x69, 0x6c, 0x74,
	0x65, 0x72, 0x5f, 0x72, 0x75, 0x6c, 0x65, 0x73, 0x18, 0x02, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x22,
	0x2e, 0x70, 0x6b, 0x67, 0x2e, 0x72, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x73, 0x2e, 0x62,
	0x6c, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x73, 0x74, 0x2e, 0x76, 0x31, 0x2e, 0x46, 0x69, 0x6c, 0x74,
	0x65, 0x72, 0x52, 0x0b, 0x66, 0x69, 0x6c, 0x74, 0x65, 0x72, 0x52, 0x75, 0x6c, 0x65, 0x73, 0x22,
	0x70, 0x0a, 0x06, 0x46, 0x69, 0x6c, 0x74, 0x65, 0x72, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d,
	0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x1c, 0x0a,
	0x09, 0x6f, 0x70, 0x65, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x09, 0x6f, 0x70, 0x65, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x1c, 0x0a, 0x09, 0x63,
	0x6f, 0x6e, 0x64, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09,
	0x63, 0x6f, 0x6e, 0x64, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x16, 0x0a, 0x06, 0x76, 0x61, 0x6c,
	0x75, 0x65, 0x73, 0x18, 0x04, 0x20, 0x03, 0x28, 0x09, 0x52, 0x06, 0x76, 0x61, 0x6c, 0x75, 0x65,
	0x73, 0x22, 0x3e, 0x0a, 0x06, 0x53, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x12, 0x12, 0x0a, 0x04, 0x74,
	0x79, 0x70, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x74, 0x79, 0x70, 0x65, 0x12,
	0x17, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52,
	0x04, 0x6e, 0x61, 0x6d, 0x65, 0x88, 0x01, 0x01, 0x42, 0x07, 0x0a, 0x05, 0x5f, 0x6e, 0x61, 0x6d,
	0x65, 0x42, 0x3e, 0x5a, 0x3c, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f,
	0x47, 0x75, 0x61, 0x6e, 0x63, 0x65, 0x43, 0x6c, 0x6f, 0x75, 0x64, 0x2f, 0x6f, 0x70, 0x65, 0x6e,
	0x61, 0x70, 0x69, 0x2f, 0x70, 0x6b, 0x67, 0x2f, 0x72, 0x65, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65,
	0x73, 0x2f, 0x62, 0x6c, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x73, 0x74, 0x2f, 0x76, 0x31, 0x3b, 0x76,
	0x31, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_pkg_blacklist_v1_blacklist_proto_rawDescOnce sync.Once
	file_pkg_blacklist_v1_blacklist_proto_rawDescData = file_pkg_blacklist_v1_blacklist_proto_rawDesc
)

func file_pkg_blacklist_v1_blacklist_proto_rawDescGZIP() []byte {
	file_pkg_blacklist_v1_blacklist_proto_rawDescOnce.Do(func() {
		file_pkg_blacklist_v1_blacklist_proto_rawDescData = protoimpl.X.CompressGZIP(file_pkg_blacklist_v1_blacklist_proto_rawDescData)
	})
	return file_pkg_blacklist_v1_blacklist_proto_rawDescData
}

var file_pkg_blacklist_v1_blacklist_proto_msgTypes = make([]protoimpl.MessageInfo, 3)
var file_pkg_blacklist_v1_blacklist_proto_goTypes = []interface{}{
	(*BlackList)(nil), // 0: pkg.resources.blacklist.v1.BlackList
	(*Filter)(nil),    // 1: pkg.resources.blacklist.v1.Filter
	(*Source)(nil),    // 2: pkg.resources.blacklist.v1.Source
}
var file_pkg_blacklist_v1_blacklist_proto_depIdxs = []int32{
	2, // 0: pkg.resources.blacklist.v1.BlackList.source:type_name -> pkg.resources.blacklist.v1.Source
	1, // 1: pkg.resources.blacklist.v1.BlackList.filter_rules:type_name -> pkg.resources.blacklist.v1.Filter
	2, // [2:2] is the sub-list for method output_type
	2, // [2:2] is the sub-list for method input_type
	2, // [2:2] is the sub-list for extension type_name
	2, // [2:2] is the sub-list for extension extendee
	0, // [0:2] is the sub-list for field type_name
}

func init() { file_pkg_blacklist_v1_blacklist_proto_init() }
func file_pkg_blacklist_v1_blacklist_proto_init() {
	if File_pkg_blacklist_v1_blacklist_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_pkg_blacklist_v1_blacklist_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*BlackList); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_pkg_blacklist_v1_blacklist_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Filter); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_pkg_blacklist_v1_blacklist_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Source); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	file_pkg_blacklist_v1_blacklist_proto_msgTypes[2].OneofWrappers = []interface{}{}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_pkg_blacklist_v1_blacklist_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   3,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_pkg_blacklist_v1_blacklist_proto_goTypes,
		DependencyIndexes: file_pkg_blacklist_v1_blacklist_proto_depIdxs,
		MessageInfos:      file_pkg_blacklist_v1_blacklist_proto_msgTypes,
	}.Build()
	File_pkg_blacklist_v1_blacklist_proto = out.File
	file_pkg_blacklist_v1_blacklist_proto_rawDesc = nil
	file_pkg_blacklist_v1_blacklist_proto_goTypes = nil
	file_pkg_blacklist_v1_blacklist_proto_depIdxs = nil
}
