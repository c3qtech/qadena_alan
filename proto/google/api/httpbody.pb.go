// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: google/api/httpbody.proto

package api

import (
	bytes "bytes"
	fmt "fmt"
	io "io"
	math "math"
	math_bits "math/bits"
	reflect "reflect"
	strings "strings"

	proto "github.com/gogo/protobuf/proto"
	types "github.com/gogo/protobuf/types"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.GoGoProtoPackageIsVersion3 // please upgrade the proto package

// Message that represents an arbitrary HTTP body. It should only be used for
// payload formats that can't be represented as JSON, such as raw binary or
// an HTML page.
//
// This message can be used both in streaming and non-streaming API methods in
// the request as well as the response.
//
// It can be used as a top-level request field, which is convenient if one
// wants to extract parameters from either the URL or HTTP template into the
// request fields and also want access to the raw HTTP body.
//
// Example:
//
//	message GetResourceRequest {
//	  // A unique request id.
//	  string request_id = 1;
//
//	  // The raw HTTP body is bound to this field.
//	  google.api.HttpBody http_body = 2;
//	}
//
//	service ResourceService {
//	  rpc GetResource(GetResourceRequest) returns (google.api.HttpBody);
//	  rpc UpdateResource(google.api.HttpBody) returns
//	  (google.protobuf.Empty);
//	}
//
// Example with streaming methods:
//
//	service CaldavService {
//	  rpc GetCalendar(stream google.api.HttpBody)
//	    returns (stream google.api.HttpBody);
//	  rpc UpdateCalendar(stream google.api.HttpBody)
//	    returns (stream google.api.HttpBody);
//	}
//
// Use of this type only changes how the request and response bodies are
// handled, all other features will continue to work unchanged.
type HttpBody struct {
	// The HTTP Content-Type header value specifying the content type of the body.
	ContentType string `protobuf:"bytes,1,opt,name=content_type,json=contentType,proto3" json:"content_type,omitempty"`
	// The HTTP request/response body as raw binary.
	Data []byte `protobuf:"bytes,2,opt,name=data,proto3" json:"data,omitempty"`
	// Application specific response metadata. Must be set in the first response
	// for streaming APIs.
	Extensions           []*types.Any `protobuf:"bytes,3,rep,name=extensions,proto3" json:"extensions,omitempty"`
	XXX_NoUnkeyedLiteral struct{}     `json:"-"`
	XXX_unrecognized     []byte       `json:"-"`
	XXX_sizecache        int32        `json:"-"`
}

func (m *HttpBody) Reset()      { *m = HttpBody{} }
func (*HttpBody) ProtoMessage() {}
func (*HttpBody) Descriptor() ([]byte, []int) {
	return fileDescriptor_09ea2ecaa32a0070, []int{0}
}
func (m *HttpBody) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *HttpBody) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	if deterministic {
		return xxx_messageInfo_HttpBody.Marshal(b, m, deterministic)
	} else {
		b = b[:cap(b)]
		n, err := m.MarshalToSizedBuffer(b)
		if err != nil {
			return nil, err
		}
		return b[:n], nil
	}
}
func (m *HttpBody) XXX_Merge(src proto.Message) {
	xxx_messageInfo_HttpBody.Merge(m, src)
}
func (m *HttpBody) XXX_Size() int {
	return m.Size()
}
func (m *HttpBody) XXX_DiscardUnknown() {
	xxx_messageInfo_HttpBody.DiscardUnknown(m)
}

var xxx_messageInfo_HttpBody proto.InternalMessageInfo

func (m *HttpBody) GetContentType() string {
	if m != nil {
		return m.ContentType
	}
	return ""
}

func (m *HttpBody) GetData() []byte {
	if m != nil {
		return m.Data
	}
	return nil
}

func (m *HttpBody) GetExtensions() []*types.Any {
	if m != nil {
		return m.Extensions
	}
	return nil
}

func (*HttpBody) XXX_MessageName() string {
	return "google.api.HttpBody"
}
func init() {
	proto.RegisterType((*HttpBody)(nil), "google.api.HttpBody")
}

func init() { proto.RegisterFile("google/api/httpbody.proto", fileDescriptor_09ea2ecaa32a0070) }

var fileDescriptor_09ea2ecaa32a0070 = []byte{
	// 253 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0xe2, 0x92, 0x4c, 0xcf, 0xcf, 0x4f,
	0xcf, 0x49, 0xd5, 0x4f, 0x2c, 0xc8, 0xd4, 0xcf, 0x28, 0x29, 0x29, 0x48, 0xca, 0x4f, 0xa9, 0xd4,
	0x2b, 0x28, 0xca, 0x2f, 0xc9, 0x17, 0xe2, 0x82, 0x48, 0xe9, 0x25, 0x16, 0x64, 0x4a, 0xc1, 0x94,
	0x81, 0x65, 0x92, 0x4a, 0xd3, 0xf4, 0x13, 0xf3, 0xa0, 0xca, 0x94, 0xca, 0xb9, 0x38, 0x3c, 0x4a,
	0x4a, 0x0a, 0x9c, 0xf2, 0x53, 0x2a, 0x85, 0x14, 0xb9, 0x78, 0x92, 0xf3, 0xf3, 0x4a, 0x52, 0xf3,
	0x4a, 0xe2, 0x4b, 0x2a, 0x0b, 0x52, 0x25, 0x18, 0x15, 0x18, 0x35, 0x38, 0x83, 0xb8, 0xa1, 0x62,
	0x21, 0x95, 0x05, 0xa9, 0x42, 0x42, 0x5c, 0x2c, 0x29, 0x89, 0x25, 0x89, 0x12, 0x4c, 0x0a, 0x8c,
	0x1a, 0x3c, 0x41, 0x60, 0xb6, 0x90, 0x09, 0x17, 0x57, 0x6a, 0x45, 0x49, 0x6a, 0x5e, 0x71, 0x66,
	0x7e, 0x5e, 0xb1, 0x04, 0xb3, 0x02, 0xb3, 0x06, 0xb7, 0x91, 0x88, 0x1e, 0xd4, 0x7a, 0x98, 0x95,
	0x7a, 0x8e, 0x79, 0x95, 0x41, 0x48, 0xea, 0x9c, 0x12, 0x6e, 0x3c, 0x94, 0x63, 0xf8, 0xf0, 0x50,
	0x8e, 0xf1, 0xc7, 0x43, 0x39, 0xc6, 0x86, 0x47, 0x72, 0x8c, 0x2b, 0x1e, 0xc9, 0x31, 0x9e, 0x78,
	0x24, 0xc7, 0x78, 0xe1, 0x91, 0x1c, 0xe3, 0x83, 0x47, 0x72, 0x8c, 0x2f, 0x1e, 0xc9, 0x31, 0x7c,
	0x00, 0x89, 0x3f, 0x96, 0x63, 0x3c, 0xf1, 0x58, 0x8e, 0x91, 0x8b, 0x2f, 0x39, 0x3f, 0x57, 0x0f,
	0xe1, 0x2b, 0x27, 0x5e, 0x98, 0xc3, 0x03, 0x40, 0x76, 0x04, 0x30, 0x46, 0x31, 0x27, 0x16, 0x64,
	0xfe, 0x60, 0x64, 0x5c, 0xc4, 0xc4, 0xe2, 0xee, 0x18, 0xe0, 0x99, 0xc4, 0x06, 0xb6, 0xdb, 0x18,
	0x10, 0x00, 0x00, 0xff, 0xff, 0xf5, 0x4c, 0xa6, 0x16, 0x25, 0x01, 0x00, 0x00,
}

func (this *HttpBody) Compare(that interface{}) int {
	if that == nil {
		if this == nil {
			return 0
		}
		return 1
	}

	that1, ok := that.(*HttpBody)
	if !ok {
		that2, ok := that.(HttpBody)
		if ok {
			that1 = &that2
		} else {
			return 1
		}
	}
	if that1 == nil {
		if this == nil {
			return 0
		}
		return 1
	} else if this == nil {
		return -1
	}
	if this.ContentType != that1.ContentType {
		if this.ContentType < that1.ContentType {
			return -1
		}
		return 1
	}
	if c := bytes.Compare(this.Data, that1.Data); c != 0 {
		return c
	}
	if len(this.Extensions) != len(that1.Extensions) {
		if len(this.Extensions) < len(that1.Extensions) {
			return -1
		}
		return 1
	}
	for i := range this.Extensions {
		if c := this.Extensions[i].Compare(that1.Extensions[i]); c != 0 {
			return c
		}
	}
	if c := bytes.Compare(this.XXX_unrecognized, that1.XXX_unrecognized); c != 0 {
		return c
	}
	return 0
}
func (this *HttpBody) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*HttpBody)
	if !ok {
		that2, ok := that.(HttpBody)
		if ok {
			that1 = &that2
		} else {
			return false
		}
	}
	if that1 == nil {
		return this == nil
	} else if this == nil {
		return false
	}
	if this.ContentType != that1.ContentType {
		return false
	}
	if !bytes.Equal(this.Data, that1.Data) {
		return false
	}
	if len(this.Extensions) != len(that1.Extensions) {
		return false
	}
	for i := range this.Extensions {
		if !this.Extensions[i].Equal(that1.Extensions[i]) {
			return false
		}
	}
	if !bytes.Equal(this.XXX_unrecognized, that1.XXX_unrecognized) {
		return false
	}
	return true
}
func (this *HttpBody) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 7)
	s = append(s, "&api.HttpBody{")
	s = append(s, "ContentType: "+fmt.Sprintf("%#v", this.ContentType)+",\n")
	s = append(s, "Data: "+fmt.Sprintf("%#v", this.Data)+",\n")
	if this.Extensions != nil {
		s = append(s, "Extensions: "+fmt.Sprintf("%#v", this.Extensions)+",\n")
	}
	if this.XXX_unrecognized != nil {
		s = append(s, "XXX_unrecognized:"+fmt.Sprintf("%#v", this.XXX_unrecognized)+",\n")
	}
	s = append(s, "}")
	return strings.Join(s, "")
}
func valueToGoStringHttpbody(v interface{}, typ string) string {
	rv := reflect.ValueOf(v)
	if rv.IsNil() {
		return "nil"
	}
	pv := reflect.Indirect(rv).Interface()
	return fmt.Sprintf("func(v %v) *%v { return &v } ( %#v )", typ, typ, pv)
}
func (m *HttpBody) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *HttpBody) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *HttpBody) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.XXX_unrecognized != nil {
		i -= len(m.XXX_unrecognized)
		copy(dAtA[i:], m.XXX_unrecognized)
	}
	if len(m.Extensions) > 0 {
		for iNdEx := len(m.Extensions) - 1; iNdEx >= 0; iNdEx-- {
			{
				size, err := m.Extensions[iNdEx].MarshalToSizedBuffer(dAtA[:i])
				if err != nil {
					return 0, err
				}
				i -= size
				i = encodeVarintHttpbody(dAtA, i, uint64(size))
			}
			i--
			dAtA[i] = 0x1a
		}
	}
	if len(m.Data) > 0 {
		i -= len(m.Data)
		copy(dAtA[i:], m.Data)
		i = encodeVarintHttpbody(dAtA, i, uint64(len(m.Data)))
		i--
		dAtA[i] = 0x12
	}
	if len(m.ContentType) > 0 {
		i -= len(m.ContentType)
		copy(dAtA[i:], m.ContentType)
		i = encodeVarintHttpbody(dAtA, i, uint64(len(m.ContentType)))
		i--
		dAtA[i] = 0xa
	}
	return len(dAtA) - i, nil
}

func encodeVarintHttpbody(dAtA []byte, offset int, v uint64) int {
	offset -= sovHttpbody(v)
	base := offset
	for v >= 1<<7 {
		dAtA[offset] = uint8(v&0x7f | 0x80)
		v >>= 7
		offset++
	}
	dAtA[offset] = uint8(v)
	return base
}
func NewPopulatedHttpBody(r randyHttpbody, easy bool) *HttpBody {
	this := &HttpBody{}
	this.ContentType = string(randStringHttpbody(r))
	v1 := r.Intn(100)
	this.Data = make([]byte, v1)
	for i := 0; i < v1; i++ {
		this.Data[i] = byte(r.Intn(256))
	}
	if r.Intn(5) != 0 {
		v2 := r.Intn(5)
		this.Extensions = make([]*types.Any, v2)
		for i := 0; i < v2; i++ {
			this.Extensions[i] = types.NewPopulatedAny(r, easy)
		}
	}
	if !easy && r.Intn(10) != 0 {
		this.XXX_unrecognized = randUnrecognizedHttpbody(r, 4)
	}
	return this
}

type randyHttpbody interface {
	Float32() float32
	Float64() float64
	Int63() int64
	Int31() int32
	Uint32() uint32
	Intn(n int) int
}

func randUTF8RuneHttpbody(r randyHttpbody) rune {
	ru := r.Intn(62)
	if ru < 10 {
		return rune(ru + 48)
	} else if ru < 36 {
		return rune(ru + 55)
	}
	return rune(ru + 61)
}
func randStringHttpbody(r randyHttpbody) string {
	v3 := r.Intn(100)
	tmps := make([]rune, v3)
	for i := 0; i < v3; i++ {
		tmps[i] = randUTF8RuneHttpbody(r)
	}
	return string(tmps)
}
func randUnrecognizedHttpbody(r randyHttpbody, maxFieldNumber int) (dAtA []byte) {
	l := r.Intn(5)
	for i := 0; i < l; i++ {
		wire := r.Intn(4)
		if wire == 3 {
			wire = 5
		}
		fieldNumber := maxFieldNumber + r.Intn(100)
		dAtA = randFieldHttpbody(dAtA, r, fieldNumber, wire)
	}
	return dAtA
}
func randFieldHttpbody(dAtA []byte, r randyHttpbody, fieldNumber int, wire int) []byte {
	key := uint32(fieldNumber)<<3 | uint32(wire)
	switch wire {
	case 0:
		dAtA = encodeVarintPopulateHttpbody(dAtA, uint64(key))
		v4 := r.Int63()
		if r.Intn(2) == 0 {
			v4 *= -1
		}
		dAtA = encodeVarintPopulateHttpbody(dAtA, uint64(v4))
	case 1:
		dAtA = encodeVarintPopulateHttpbody(dAtA, uint64(key))
		dAtA = append(dAtA, byte(r.Intn(256)), byte(r.Intn(256)), byte(r.Intn(256)), byte(r.Intn(256)), byte(r.Intn(256)), byte(r.Intn(256)), byte(r.Intn(256)), byte(r.Intn(256)))
	case 2:
		dAtA = encodeVarintPopulateHttpbody(dAtA, uint64(key))
		ll := r.Intn(100)
		dAtA = encodeVarintPopulateHttpbody(dAtA, uint64(ll))
		for j := 0; j < ll; j++ {
			dAtA = append(dAtA, byte(r.Intn(256)))
		}
	default:
		dAtA = encodeVarintPopulateHttpbody(dAtA, uint64(key))
		dAtA = append(dAtA, byte(r.Intn(256)), byte(r.Intn(256)), byte(r.Intn(256)), byte(r.Intn(256)))
	}
	return dAtA
}
func encodeVarintPopulateHttpbody(dAtA []byte, v uint64) []byte {
	for v >= 1<<7 {
		dAtA = append(dAtA, uint8(uint64(v)&0x7f|0x80))
		v >>= 7
	}
	dAtA = append(dAtA, uint8(v))
	return dAtA
}
func (m *HttpBody) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	l = len(m.ContentType)
	if l > 0 {
		n += 1 + l + sovHttpbody(uint64(l))
	}
	l = len(m.Data)
	if l > 0 {
		n += 1 + l + sovHttpbody(uint64(l))
	}
	if len(m.Extensions) > 0 {
		for _, e := range m.Extensions {
			l = e.Size()
			n += 1 + l + sovHttpbody(uint64(l))
		}
	}
	if m.XXX_unrecognized != nil {
		n += len(m.XXX_unrecognized)
	}
	return n
}

func sovHttpbody(x uint64) (n int) {
	return (math_bits.Len64(x|1) + 6) / 7
}
func sozHttpbody(x uint64) (n int) {
	return sovHttpbody(uint64((x << 1) ^ uint64((int64(x) >> 63))))
}
func (this *HttpBody) String() string {
	if this == nil {
		return "nil"
	}
	repeatedStringForExtensions := "[]*Any{"
	for _, f := range this.Extensions {
		repeatedStringForExtensions += strings.Replace(fmt.Sprintf("%v", f), "Any", "types.Any", 1) + ","
	}
	repeatedStringForExtensions += "}"
	s := strings.Join([]string{`&HttpBody{`,
		`ContentType:` + fmt.Sprintf("%v", this.ContentType) + `,`,
		`Data:` + fmt.Sprintf("%v", this.Data) + `,`,
		`Extensions:` + repeatedStringForExtensions + `,`,
		`XXX_unrecognized:` + fmt.Sprintf("%v", this.XXX_unrecognized) + `,`,
		`}`,
	}, "")
	return s
}
func valueToStringHttpbody(v interface{}) string {
	rv := reflect.ValueOf(v)
	if rv.IsNil() {
		return "nil"
	}
	pv := reflect.Indirect(rv).Interface()
	return fmt.Sprintf("*%v", pv)
}
func (m *HttpBody) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowHttpbody
			}
			if iNdEx >= l {
				return io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= uint64(b&0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		fieldNum := int32(wire >> 3)
		wireType := int(wire & 0x7)
		if wireType == 4 {
			return fmt.Errorf("proto: HttpBody: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: HttpBody: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field ContentType", wireType)
			}
			var stringLen uint64
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowHttpbody
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				stringLen |= uint64(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			intStringLen := int(stringLen)
			if intStringLen < 0 {
				return ErrInvalidLengthHttpbody
			}
			postIndex := iNdEx + intStringLen
			if postIndex < 0 {
				return ErrInvalidLengthHttpbody
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			m.ContentType = string(dAtA[iNdEx:postIndex])
			iNdEx = postIndex
		case 2:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Data", wireType)
			}
			var byteLen int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowHttpbody
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				byteLen |= int(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			if byteLen < 0 {
				return ErrInvalidLengthHttpbody
			}
			postIndex := iNdEx + byteLen
			if postIndex < 0 {
				return ErrInvalidLengthHttpbody
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			m.Data = append(m.Data[:0], dAtA[iNdEx:postIndex]...)
			if m.Data == nil {
				m.Data = []byte{}
			}
			iNdEx = postIndex
		case 3:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Extensions", wireType)
			}
			var msglen int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowHttpbody
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				msglen |= int(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			if msglen < 0 {
				return ErrInvalidLengthHttpbody
			}
			postIndex := iNdEx + msglen
			if postIndex < 0 {
				return ErrInvalidLengthHttpbody
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			m.Extensions = append(m.Extensions, &types.Any{})
			if err := m.Extensions[len(m.Extensions)-1].Unmarshal(dAtA[iNdEx:postIndex]); err != nil {
				return err
			}
			iNdEx = postIndex
		default:
			iNdEx = preIndex
			skippy, err := skipHttpbody(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthHttpbody
			}
			if (iNdEx + skippy) > l {
				return io.ErrUnexpectedEOF
			}
			m.XXX_unrecognized = append(m.XXX_unrecognized, dAtA[iNdEx:iNdEx+skippy]...)
			iNdEx += skippy
		}
	}

	if iNdEx > l {
		return io.ErrUnexpectedEOF
	}
	return nil
}
func skipHttpbody(dAtA []byte) (n int, err error) {
	l := len(dAtA)
	iNdEx := 0
	depth := 0
	for iNdEx < l {
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return 0, ErrIntOverflowHttpbody
			}
			if iNdEx >= l {
				return 0, io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= (uint64(b) & 0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		wireType := int(wire & 0x7)
		switch wireType {
		case 0:
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return 0, ErrIntOverflowHttpbody
				}
				if iNdEx >= l {
					return 0, io.ErrUnexpectedEOF
				}
				iNdEx++
				if dAtA[iNdEx-1] < 0x80 {
					break
				}
			}
		case 1:
			iNdEx += 8
		case 2:
			var length int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return 0, ErrIntOverflowHttpbody
				}
				if iNdEx >= l {
					return 0, io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				length |= (int(b) & 0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			if length < 0 {
				return 0, ErrInvalidLengthHttpbody
			}
			iNdEx += length
		case 3:
			depth++
		case 4:
			if depth == 0 {
				return 0, ErrUnexpectedEndOfGroupHttpbody
			}
			depth--
		case 5:
			iNdEx += 4
		default:
			return 0, fmt.Errorf("proto: illegal wireType %d", wireType)
		}
		if iNdEx < 0 {
			return 0, ErrInvalidLengthHttpbody
		}
		if depth == 0 {
			return iNdEx, nil
		}
	}
	return 0, io.ErrUnexpectedEOF
}

var (
	ErrInvalidLengthHttpbody        = fmt.Errorf("proto: negative length found during unmarshaling")
	ErrIntOverflowHttpbody          = fmt.Errorf("proto: integer overflow")
	ErrUnexpectedEndOfGroupHttpbody = fmt.Errorf("proto: unexpected end of group")
)
