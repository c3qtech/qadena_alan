//
//  Generated code. Do not modify.
//  source: cosmos/evm/precisebank/v1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use queryRemainderRequestDescriptor instead')
const QueryRemainderRequest$json = {
  '1': 'QueryRemainderRequest',
};

/// Descriptor for `QueryRemainderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryRemainderRequestDescriptor = $convert.base64Decode(
    'ChVRdWVyeVJlbWFpbmRlclJlcXVlc3Q=');

@$core.Deprecated('Use queryRemainderResponseDescriptor instead')
const QueryRemainderResponse$json = {
  '1': 'QueryRemainderResponse',
  '2': [
    {'1': 'remainder', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'remainder'},
  ],
};

/// Descriptor for `QueryRemainderResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryRemainderResponseDescriptor = $convert.base64Decode(
    'ChZRdWVyeVJlbWFpbmRlclJlc3BvbnNlEj0KCXJlbWFpbmRlchgBIAEoCzIZLmNvc21vcy5iYX'
    'NlLnYxYmV0YTEuQ29pbkIEyN4fAFIJcmVtYWluZGVy');

@$core.Deprecated('Use queryFractionalBalanceRequestDescriptor instead')
const QueryFractionalBalanceRequest$json = {
  '1': 'QueryFractionalBalanceRequest',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `QueryFractionalBalanceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryFractionalBalanceRequestDescriptor = $convert.base64Decode(
    'Ch1RdWVyeUZyYWN0aW9uYWxCYWxhbmNlUmVxdWVzdBIYCgdhZGRyZXNzGAEgASgJUgdhZGRyZX'
    'Nz');

@$core.Deprecated('Use queryFractionalBalanceResponseDescriptor instead')
const QueryFractionalBalanceResponse$json = {
  '1': 'QueryFractionalBalanceResponse',
  '2': [
    {'1': 'fractional_balance', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'fractionalBalance'},
  ],
};

/// Descriptor for `QueryFractionalBalanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryFractionalBalanceResponseDescriptor = $convert.base64Decode(
    'Ch5RdWVyeUZyYWN0aW9uYWxCYWxhbmNlUmVzcG9uc2USTgoSZnJhY3Rpb25hbF9iYWxhbmNlGA'
    'EgASgLMhkuY29zbW9zLmJhc2UudjFiZXRhMS5Db2luQgTI3h8AUhFmcmFjdGlvbmFsQmFsYW5j'
    'ZQ==');

