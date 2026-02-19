//
//  Generated code. Do not modify.
//  source: cosmos/epochs/v1beta1/events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eventEpochEndDescriptor instead')
const EventEpochEnd$json = {
  '1': 'EventEpochEnd',
  '2': [
    {'1': 'epoch_number', '3': 1, '4': 1, '5': 3, '10': 'epochNumber'},
  ],
};

/// Descriptor for `EventEpochEnd`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventEpochEndDescriptor = $convert.base64Decode(
    'Cg1FdmVudEVwb2NoRW5kEiEKDGVwb2NoX251bWJlchgBIAEoA1ILZXBvY2hOdW1iZXI=');

@$core.Deprecated('Use eventEpochStartDescriptor instead')
const EventEpochStart$json = {
  '1': 'EventEpochStart',
  '2': [
    {'1': 'epoch_number', '3': 1, '4': 1, '5': 3, '10': 'epochNumber'},
    {'1': 'epoch_start_time', '3': 2, '4': 1, '5': 3, '10': 'epochStartTime'},
  ],
};

/// Descriptor for `EventEpochStart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventEpochStartDescriptor = $convert.base64Decode(
    'Cg9FdmVudEVwb2NoU3RhcnQSIQoMZXBvY2hfbnVtYmVyGAEgASgDUgtlcG9jaE51bWJlchIoCh'
    'BlcG9jaF9zdGFydF90aW1lGAIgASgDUg5lcG9jaFN0YXJ0VGltZQ==');

