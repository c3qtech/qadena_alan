//
//  Generated code. Do not modify.
//  source: cosmos/protocolpool/v1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use queryCommunityPoolRequestDescriptor instead')
const QueryCommunityPoolRequest$json = {
  '1': 'QueryCommunityPoolRequest',
};

/// Descriptor for `QueryCommunityPoolRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryCommunityPoolRequestDescriptor = $convert.base64Decode(
    'ChlRdWVyeUNvbW11bml0eVBvb2xSZXF1ZXN0');

@$core.Deprecated('Use queryCommunityPoolResponseDescriptor instead')
const QueryCommunityPoolResponse$json = {
  '1': 'QueryCommunityPoolResponse',
  '2': [
    {'1': 'pool', '3': 1, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'pool'},
  ],
};

/// Descriptor for `QueryCommunityPoolResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryCommunityPoolResponseDescriptor = $convert.base64Decode(
    'ChpRdWVyeUNvbW11bml0eVBvb2xSZXNwb25zZRJfCgRwb29sGAEgAygLMhkuY29zbW9zLmJhc2'
    'UudjFiZXRhMS5Db2luQjDI3h8Aqt8fKGdpdGh1Yi5jb20vY29zbW9zL2Nvc21vcy1zZGsvdHlw'
    'ZXMuQ29pbnNSBHBvb2w=');

@$core.Deprecated('Use queryContinuousFundRequestDescriptor instead')
const QueryContinuousFundRequest$json = {
  '1': 'QueryContinuousFundRequest',
  '2': [
    {'1': 'recipient', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'recipient'},
  ],
};

/// Descriptor for `QueryContinuousFundRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryContinuousFundRequestDescriptor = $convert.base64Decode(
    'ChpRdWVyeUNvbnRpbnVvdXNGdW5kUmVxdWVzdBI2CglyZWNpcGllbnQYASABKAlCGNK0LRRjb3'
    'Ntb3MuQWRkcmVzc1N0cmluZ1IJcmVjaXBpZW50');

@$core.Deprecated('Use queryContinuousFundResponseDescriptor instead')
const QueryContinuousFundResponse$json = {
  '1': 'QueryContinuousFundResponse',
  '2': [
    {'1': 'continuous_fund', '3': 1, '4': 1, '5': 11, '6': '.cosmos.protocolpool.v1.ContinuousFund', '8': {}, '10': 'continuousFund'},
  ],
};

/// Descriptor for `QueryContinuousFundResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryContinuousFundResponseDescriptor = $convert.base64Decode(
    'ChtRdWVyeUNvbnRpbnVvdXNGdW5kUmVzcG9uc2USVQoPY29udGludW91c19mdW5kGAEgASgLMi'
    'YuY29zbW9zLnByb3RvY29scG9vbC52MS5Db250aW51b3VzRnVuZEIEyN4fAFIOY29udGludW91'
    'c0Z1bmQ=');

@$core.Deprecated('Use queryContinuousFundsRequestDescriptor instead')
const QueryContinuousFundsRequest$json = {
  '1': 'QueryContinuousFundsRequest',
};

/// Descriptor for `QueryContinuousFundsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryContinuousFundsRequestDescriptor = $convert.base64Decode(
    'ChtRdWVyeUNvbnRpbnVvdXNGdW5kc1JlcXVlc3Q=');

@$core.Deprecated('Use queryContinuousFundsResponseDescriptor instead')
const QueryContinuousFundsResponse$json = {
  '1': 'QueryContinuousFundsResponse',
  '2': [
    {'1': 'continuous_funds', '3': 1, '4': 3, '5': 11, '6': '.cosmos.protocolpool.v1.ContinuousFund', '8': {}, '10': 'continuousFunds'},
  ],
};

/// Descriptor for `QueryContinuousFundsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryContinuousFundsResponseDescriptor = $convert.base64Decode(
    'ChxRdWVyeUNvbnRpbnVvdXNGdW5kc1Jlc3BvbnNlElcKEGNvbnRpbnVvdXNfZnVuZHMYASADKA'
    'syJi5jb3Ntb3MucHJvdG9jb2xwb29sLnYxLkNvbnRpbnVvdXNGdW5kQgTI3h8AUg9jb250aW51'
    'b3VzRnVuZHM=');

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
    {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.cosmos.protocolpool.v1.Params', '8': {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode(
    'ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEjwKBnBhcmFtcxgBIAEoCzIeLmNvc21vcy5wcm90b2NvbH'
    'Bvb2wudjEuUGFyYW1zQgTI3h8AUgZwYXJhbXM=');

