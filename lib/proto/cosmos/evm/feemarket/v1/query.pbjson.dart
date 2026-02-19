//
//  Generated code. Do not modify.
//  source: cosmos/evm/feemarket/v1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use queryParamsRequestDescriptor instead')
const QueryParamsRequest$json = {
  '1': 'QueryParamsRequest',
};

/// Descriptor for `QueryParamsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsRequestDescriptor = $convert.base64Decode(
    'ChJRdWVyeVBhcmFtc1JlcXVlc3Q=');

@$core.Deprecated('Use queryParamsResponseDescriptor instead')
const QueryParamsResponse$json = {
  '1': 'QueryParamsResponse',
  '2': [
    {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.cosmos.evm.feemarket.v1.Params', '8': {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode(
    'ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEkIKBnBhcmFtcxgBIAEoCzIfLmNvc21vcy5ldm0uZmVlbW'
    'Fya2V0LnYxLlBhcmFtc0IJyN4fAKjnsCoBUgZwYXJhbXM=');

@$core.Deprecated('Use queryBaseFeeRequestDescriptor instead')
const QueryBaseFeeRequest$json = {
  '1': 'QueryBaseFeeRequest',
};

/// Descriptor for `QueryBaseFeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryBaseFeeRequestDescriptor = $convert.base64Decode(
    'ChNRdWVyeUJhc2VGZWVSZXF1ZXN0');

@$core.Deprecated('Use queryBaseFeeResponseDescriptor instead')
const QueryBaseFeeResponse$json = {
  '1': 'QueryBaseFeeResponse',
  '2': [
    {'1': 'base_fee', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'baseFee'},
  ],
};

/// Descriptor for `QueryBaseFeeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryBaseFeeResponseDescriptor = $convert.base64Decode(
    'ChRRdWVyeUJhc2VGZWVSZXNwb25zZRI6CghiYXNlX2ZlZRgBIAEoCUIf2t4fG2Nvc21vc3Nkay'
    '5pby9tYXRoLkxlZ2FjeURlY1IHYmFzZUZlZQ==');

@$core.Deprecated('Use queryBlockGasRequestDescriptor instead')
const QueryBlockGasRequest$json = {
  '1': 'QueryBlockGasRequest',
};

/// Descriptor for `QueryBlockGasRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryBlockGasRequestDescriptor = $convert.base64Decode(
    'ChRRdWVyeUJsb2NrR2FzUmVxdWVzdA==');

@$core.Deprecated('Use queryBlockGasResponseDescriptor instead')
const QueryBlockGasResponse$json = {
  '1': 'QueryBlockGasResponse',
  '2': [
    {'1': 'gas', '3': 1, '4': 1, '5': 3, '10': 'gas'},
  ],
};

/// Descriptor for `QueryBlockGasResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryBlockGasResponseDescriptor = $convert.base64Decode(
    'ChVRdWVyeUJsb2NrR2FzUmVzcG9uc2USEAoDZ2FzGAEgASgDUgNnYXM=');

