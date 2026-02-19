//
//  Generated code. Do not modify.
//  source: cosmos/epochs/v1beta1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use queryEpochInfosRequestDescriptor instead')
const QueryEpochInfosRequest$json = {
  '1': 'QueryEpochInfosRequest',
};

/// Descriptor for `QueryEpochInfosRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryEpochInfosRequestDescriptor = $convert.base64Decode(
    'ChZRdWVyeUVwb2NoSW5mb3NSZXF1ZXN0');

@$core.Deprecated('Use queryEpochInfosResponseDescriptor instead')
const QueryEpochInfosResponse$json = {
  '1': 'QueryEpochInfosResponse',
  '2': [
    {'1': 'epochs', '3': 1, '4': 3, '5': 11, '6': '.cosmos.epochs.v1beta1.EpochInfo', '8': {}, '10': 'epochs'},
  ],
};

/// Descriptor for `QueryEpochInfosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryEpochInfosResponseDescriptor = $convert.base64Decode(
    'ChdRdWVyeUVwb2NoSW5mb3NSZXNwb25zZRI+CgZlcG9jaHMYASADKAsyIC5jb3Ntb3MuZXBvY2'
    'hzLnYxYmV0YTEuRXBvY2hJbmZvQgTI3h8AUgZlcG9jaHM=');

@$core.Deprecated('Use queryCurrentEpochRequestDescriptor instead')
const QueryCurrentEpochRequest$json = {
  '1': 'QueryCurrentEpochRequest',
  '2': [
    {'1': 'identifier', '3': 1, '4': 1, '5': 9, '10': 'identifier'},
  ],
};

/// Descriptor for `QueryCurrentEpochRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryCurrentEpochRequestDescriptor = $convert.base64Decode(
    'ChhRdWVyeUN1cnJlbnRFcG9jaFJlcXVlc3QSHgoKaWRlbnRpZmllchgBIAEoCVIKaWRlbnRpZm'
    'llcg==');

@$core.Deprecated('Use queryCurrentEpochResponseDescriptor instead')
const QueryCurrentEpochResponse$json = {
  '1': 'QueryCurrentEpochResponse',
  '2': [
    {'1': 'current_epoch', '3': 1, '4': 1, '5': 3, '10': 'currentEpoch'},
  ],
};

/// Descriptor for `QueryCurrentEpochResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryCurrentEpochResponseDescriptor = $convert.base64Decode(
    'ChlRdWVyeUN1cnJlbnRFcG9jaFJlc3BvbnNlEiMKDWN1cnJlbnRfZXBvY2gYASABKANSDGN1cn'
    'JlbnRFcG9jaA==');

