//
//  Generated code. Do not modify.
//  source: cosmos/evm/erc20/v1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use queryTokenPairsRequestDescriptor instead')
const QueryTokenPairsRequest$json = {
  '1': 'QueryTokenPairsRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryTokenPairsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTokenPairsRequestDescriptor = $convert.base64Decode(
    'ChZRdWVyeVRva2VuUGFpcnNSZXF1ZXN0EkYKCnBhZ2luYXRpb24YASABKAsyJi5jb3Ntb3MuYm'
    'FzZS5xdWVyeS52MWJldGExLlBhZ2VSZXF1ZXN0UgpwYWdpbmF0aW9u');

@$core.Deprecated('Use queryTokenPairsResponseDescriptor instead')
const QueryTokenPairsResponse$json = {
  '1': 'QueryTokenPairsResponse',
  '2': [
    {'1': 'token_pairs', '3': 1, '4': 3, '5': 11, '6': '.cosmos.evm.erc20.v1.TokenPair', '8': {}, '10': 'tokenPairs'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryTokenPairsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTokenPairsResponseDescriptor = $convert.base64Decode(
    'ChdRdWVyeVRva2VuUGFpcnNSZXNwb25zZRJKCgt0b2tlbl9wYWlycxgBIAMoCzIeLmNvc21vcy'
    '5ldm0uZXJjMjAudjEuVG9rZW5QYWlyQgnI3h8AqOewKgFSCnRva2VuUGFpcnMSRwoKcGFnaW5h'
    'dGlvbhgCIAEoCzInLmNvc21vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlc3BvbnNlUgpwYW'
    'dpbmF0aW9u');

@$core.Deprecated('Use queryTokenPairRequestDescriptor instead')
const QueryTokenPairRequest$json = {
  '1': 'QueryTokenPairRequest',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `QueryTokenPairRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTokenPairRequestDescriptor = $convert.base64Decode(
    'ChVRdWVyeVRva2VuUGFpclJlcXVlc3QSFAoFdG9rZW4YASABKAlSBXRva2Vu');

@$core.Deprecated('Use queryTokenPairResponseDescriptor instead')
const QueryTokenPairResponse$json = {
  '1': 'QueryTokenPairResponse',
  '2': [
    {'1': 'token_pair', '3': 1, '4': 1, '5': 11, '6': '.cosmos.evm.erc20.v1.TokenPair', '8': {}, '10': 'tokenPair'},
  ],
};

/// Descriptor for `QueryTokenPairResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTokenPairResponseDescriptor = $convert.base64Decode(
    'ChZRdWVyeVRva2VuUGFpclJlc3BvbnNlEkgKCnRva2VuX3BhaXIYASABKAsyHi5jb3Ntb3MuZX'
    'ZtLmVyYzIwLnYxLlRva2VuUGFpckIJyN4fAKjnsCoBUgl0b2tlblBhaXI=');

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
    {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.cosmos.evm.erc20.v1.Params', '8': {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode(
    'ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEj4KBnBhcmFtcxgBIAEoCzIbLmNvc21vcy5ldm0uZXJjMj'
    'AudjEuUGFyYW1zQgnI3h8AqOewKgFSBnBhcmFtcw==');

