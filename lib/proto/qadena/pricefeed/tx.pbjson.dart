//
//  Generated code. Do not modify.
//  source: qadena/pricefeed/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use msgUpdateParamsDescriptor instead')
const MsgUpdateParams$json = {
  '1': 'MsgUpdateParams',
  '2': [
    {'1': 'authority', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'authority'},
    {'1': 'params', '3': 2, '4': 1, '5': 11, '6': '.qadena.pricefeed.Params', '8': {}, '10': 'params'},
  ],
  '7': {},
};

/// Descriptor for `MsgUpdateParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateParamsDescriptor = $convert.base64Decode(
    'Cg9Nc2dVcGRhdGVQYXJhbXMSNgoJYXV0aG9yaXR5GAEgASgJQhjStC0UY29zbW9zLkFkZHJlc3'
    'NTdHJpbmdSCWF1dGhvcml0eRI7CgZwYXJhbXMYAiABKAsyGC5xYWRlbmEucHJpY2VmZWVkLlBh'
    'cmFtc0IJyN4fAKjnsCoBUgZwYXJhbXM6S4LnsCoJYXV0aG9yaXR5iuewKjhnaXRodWIuY29tL2'
    'MzcXRlY2gvcWFkZW5hX3YzL3gvcHJpY2VmZWVkL01zZ1VwZGF0ZVBhcmFtcw==');

@$core.Deprecated('Use msgUpdateParamsResponseDescriptor instead')
const MsgUpdateParamsResponse$json = {
  '1': 'MsgUpdateParamsResponse',
};

/// Descriptor for `MsgUpdateParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateParamsResponseDescriptor = $convert.base64Decode(
    'ChdNc2dVcGRhdGVQYXJhbXNSZXNwb25zZQ==');

@$core.Deprecated('Use msgPostPriceDescriptor instead')
const MsgPostPrice$json = {
  '1': 'MsgPostPrice',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'marketId', '3': 2, '4': 1, '5': 9, '10': 'marketId'},
    {'1': 'price', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'price'},
    {'1': 'expiry', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'expiry'},
  ],
  '7': {},
};

/// Descriptor for `MsgPostPrice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgPostPriceDescriptor = $convert.base64Decode(
    'CgxNc2dQb3N0UHJpY2USGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchIaCghtYXJrZXRJZBgCIA'
    'EoCVIIbWFya2V0SWQSOQoFcHJpY2UYAyABKAlCI8jeHwDa3h8bY29zbW9zc2RrLmlvL21hdGgu'
    'TGVnYWN5RGVjUgVwcmljZRI8CgZleHBpcnkYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZX'
    'N0YW1wQgjI3h8AkN8fAVIGZXhwaXJ5OgyC57AqB2NyZWF0b3I=');

@$core.Deprecated('Use msgPostPriceResponseDescriptor instead')
const MsgPostPriceResponse$json = {
  '1': 'MsgPostPriceResponse',
};

/// Descriptor for `MsgPostPriceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgPostPriceResponseDescriptor = $convert.base64Decode(
    'ChRNc2dQb3N0UHJpY2VSZXNwb25zZQ==');

