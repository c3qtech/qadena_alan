//
//  Generated code. Do not modify.
//  source: cosmos/protocolpool/v1/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use msgFundCommunityPoolDescriptor instead')
const MsgFundCommunityPool$json = {
  '1': 'MsgFundCommunityPool',
  '2': [
    {'1': 'depositor', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'depositor'},
    {'1': 'amount', '3': 2, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'amount'},
  ],
  '7': {},
};

/// Descriptor for `MsgFundCommunityPool`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgFundCommunityPoolDescriptor = $convert.base64Decode(
    'ChRNc2dGdW5kQ29tbXVuaXR5UG9vbBI2CglkZXBvc2l0b3IYASABKAlCGNK0LRRjb3Ntb3MuQW'
    'RkcmVzc1N0cmluZ1IJZGVwb3NpdG9yEmMKBmFtb3VudBgCIAMoCzIZLmNvc21vcy5iYXNlLnYx'
    'YmV0YTEuQ29pbkIwyN4fAKrfHyhnaXRodWIuY29tL2Nvc21vcy9jb3Ntb3Mtc2RrL3R5cGVzLk'
    'NvaW5zUgZhbW91bnQ6FoigHwDooB8AguewKglkZXBvc2l0b3I=');

@$core.Deprecated('Use msgFundCommunityPoolResponseDescriptor instead')
const MsgFundCommunityPoolResponse$json = {
  '1': 'MsgFundCommunityPoolResponse',
};

/// Descriptor for `MsgFundCommunityPoolResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgFundCommunityPoolResponseDescriptor = $convert.base64Decode(
    'ChxNc2dGdW5kQ29tbXVuaXR5UG9vbFJlc3BvbnNl');

@$core.Deprecated('Use msgCommunityPoolSpendDescriptor instead')
const MsgCommunityPoolSpend$json = {
  '1': 'MsgCommunityPoolSpend',
  '2': [
    {'1': 'authority', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'authority'},
    {'1': 'recipient', '3': 2, '4': 1, '5': 9, '10': 'recipient'},
    {'1': 'amount', '3': 3, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'amount'},
  ],
  '7': {},
};

/// Descriptor for `MsgCommunityPoolSpend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCommunityPoolSpendDescriptor = $convert.base64Decode(
    'ChVNc2dDb21tdW5pdHlQb29sU3BlbmQSNgoJYXV0aG9yaXR5GAEgASgJQhjStC0UY29zbW9zLk'
    'FkZHJlc3NTdHJpbmdSCWF1dGhvcml0eRIcCglyZWNpcGllbnQYAiABKAlSCXJlY2lwaWVudBJj'
    'CgZhbW91bnQYAyADKAsyGS5jb3Ntb3MuYmFzZS52MWJldGExLkNvaW5CMMjeHwCq3x8oZ2l0aH'
    'ViLmNvbS9jb3Ntb3MvY29zbW9zLXNkay90eXBlcy5Db2luc1IGYW1vdW50Og6C57AqCWF1dGhv'
    'cml0eQ==');

@$core.Deprecated('Use msgCommunityPoolSpendResponseDescriptor instead')
const MsgCommunityPoolSpendResponse$json = {
  '1': 'MsgCommunityPoolSpendResponse',
};

/// Descriptor for `MsgCommunityPoolSpendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCommunityPoolSpendResponseDescriptor = $convert.base64Decode(
    'Ch1Nc2dDb21tdW5pdHlQb29sU3BlbmRSZXNwb25zZQ==');

@$core.Deprecated('Use msgCreateContinuousFundDescriptor instead')
const MsgCreateContinuousFund$json = {
  '1': 'MsgCreateContinuousFund',
  '2': [
    {'1': 'authority', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'authority'},
    {'1': 'recipient', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'recipient'},
    {'1': 'percentage', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'percentage'},
    {'1': 'expiry', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'expiry'},
  ],
  '7': {},
};

/// Descriptor for `MsgCreateContinuousFund`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateContinuousFundDescriptor = $convert.base64Decode(
    'ChdNc2dDcmVhdGVDb250aW51b3VzRnVuZBI2CglhdXRob3JpdHkYASABKAlCGNK0LRRjb3Ntb3'
    'MuQWRkcmVzc1N0cmluZ1IJYXV0aG9yaXR5EjYKCXJlY2lwaWVudBgCIAEoCUIY0rQtFGNvc21v'
    'cy5BZGRyZXNzU3RyaW5nUglyZWNpcGllbnQSUQoKcGVyY2VudGFnZRgDIAEoCUIxyN4fANreHx'
    'tjb3Ntb3NzZGsuaW8vbWF0aC5MZWdhY3lEZWPStC0KY29zbW9zLkRlY1IKcGVyY2VudGFnZRI4'
    'CgZleHBpcnkYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgSQ3x8BUgZleHBpcn'
    'k6DoLnsCoJYXV0aG9yaXR5');

@$core.Deprecated('Use msgCreateContinuousFundResponseDescriptor instead')
const MsgCreateContinuousFundResponse$json = {
  '1': 'MsgCreateContinuousFundResponse',
};

/// Descriptor for `MsgCreateContinuousFundResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateContinuousFundResponseDescriptor = $convert.base64Decode(
    'Ch9Nc2dDcmVhdGVDb250aW51b3VzRnVuZFJlc3BvbnNl');

@$core.Deprecated('Use msgCancelContinuousFundDescriptor instead')
const MsgCancelContinuousFund$json = {
  '1': 'MsgCancelContinuousFund',
  '2': [
    {'1': 'authority', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'authority'},
    {'1': 'recipient', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'recipient'},
  ],
  '7': {},
};

/// Descriptor for `MsgCancelContinuousFund`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCancelContinuousFundDescriptor = $convert.base64Decode(
    'ChdNc2dDYW5jZWxDb250aW51b3VzRnVuZBI2CglhdXRob3JpdHkYASABKAlCGNK0LRRjb3Ntb3'
    'MuQWRkcmVzc1N0cmluZ1IJYXV0aG9yaXR5EjYKCXJlY2lwaWVudBgCIAEoCUIY0rQtFGNvc21v'
    'cy5BZGRyZXNzU3RyaW5nUglyZWNpcGllbnQ6DoLnsCoJYXV0aG9yaXR5');

@$core.Deprecated('Use msgCancelContinuousFundResponseDescriptor instead')
const MsgCancelContinuousFundResponse$json = {
  '1': 'MsgCancelContinuousFundResponse',
  '2': [
    {'1': 'canceled_time', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'canceledTime'},
    {'1': 'canceled_height', '3': 2, '4': 1, '5': 4, '10': 'canceledHeight'},
    {'1': 'recipient', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'recipient'},
  ],
};

/// Descriptor for `MsgCancelContinuousFundResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCancelContinuousFundResponseDescriptor = $convert.base64Decode(
    'Ch9Nc2dDYW5jZWxDb250aW51b3VzRnVuZFJlc3BvbnNlEkkKDWNhbmNlbGVkX3RpbWUYASABKA'
    'syGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgjI3h8AkN8fAVIMY2FuY2VsZWRUaW1lEicK'
    'D2NhbmNlbGVkX2hlaWdodBgCIAEoBFIOY2FuY2VsZWRIZWlnaHQSNgoJcmVjaXBpZW50GAMgAS'
    'gJQhjStC0UY29zbW9zLkFkZHJlc3NTdHJpbmdSCXJlY2lwaWVudA==');

@$core.Deprecated('Use msgUpdateParamsDescriptor instead')
const MsgUpdateParams$json = {
  '1': 'MsgUpdateParams',
  '2': [
    {'1': 'authority', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'authority'},
    {'1': 'params', '3': 2, '4': 1, '5': 11, '6': '.cosmos.protocolpool.v1.Params', '8': {}, '10': 'params'},
  ],
  '7': {},
};

/// Descriptor for `MsgUpdateParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateParamsDescriptor = $convert.base64Decode(
    'Cg9Nc2dVcGRhdGVQYXJhbXMSNgoJYXV0aG9yaXR5GAEgASgJQhjStC0UY29zbW9zLkFkZHJlc3'
    'NTdHJpbmdSCWF1dGhvcml0eRI8CgZwYXJhbXMYAiABKAsyHi5jb3Ntb3MucHJvdG9jb2xwb29s'
    'LnYxLlBhcmFtc0IEyN4fAFIGcGFyYW1zOg6C57AqCWF1dGhvcml0eQ==');

@$core.Deprecated('Use msgUpdateParamsResponseDescriptor instead')
const MsgUpdateParamsResponse$json = {
  '1': 'MsgUpdateParamsResponse',
};

/// Descriptor for `MsgUpdateParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateParamsResponseDescriptor = $convert.base64Decode(
    'ChdNc2dVcGRhdGVQYXJhbXNSZXNwb25zZQ==');

