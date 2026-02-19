//
//  Generated code. Do not modify.
//  source: cosmos/epochs/v1beta1/genesis.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use epochInfoDescriptor instead')
const EpochInfo$json = {
  '1': 'EpochInfo',
  '2': [
    {'1': 'identifier', '3': 1, '4': 1, '5': 9, '10': 'identifier'},
    {'1': 'start_time', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'startTime'},
    {'1': 'duration', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '8': {}, '10': 'duration'},
    {'1': 'current_epoch', '3': 4, '4': 1, '5': 3, '10': 'currentEpoch'},
    {'1': 'current_epoch_start_time', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'currentEpochStartTime'},
    {'1': 'epoch_counting_started', '3': 6, '4': 1, '5': 8, '10': 'epochCountingStarted'},
    {'1': 'current_epoch_start_height', '3': 8, '4': 1, '5': 3, '10': 'currentEpochStartHeight'},
  ],
  '9': [
    {'1': 7, '2': 8},
  ],
};

/// Descriptor for `EpochInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List epochInfoDescriptor = $convert.base64Decode(
    'CglFcG9jaEluZm8SHgoKaWRlbnRpZmllchgBIAEoCVIKaWRlbnRpZmllchJDCgpzdGFydF90aW'
    '1lGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIIyN4fAJDfHwFSCXN0YXJ0VGlt'
    'ZRJVCghkdXJhdGlvbhgDIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvbkIeyN4fAOreHx'
    'JkdXJhdGlvbixvbWl0ZW1wdHmY3x8BUghkdXJhdGlvbhIjCg1jdXJyZW50X2Vwb2NoGAQgASgD'
    'UgxjdXJyZW50RXBvY2gSXQoYY3VycmVudF9lcG9jaF9zdGFydF90aW1lGAUgASgLMhouZ29vZ2'
    'xlLnByb3RvYnVmLlRpbWVzdGFtcEIIyN4fAJDfHwFSFWN1cnJlbnRFcG9jaFN0YXJ0VGltZRI0'
    'ChZlcG9jaF9jb3VudGluZ19zdGFydGVkGAYgASgIUhRlcG9jaENvdW50aW5nU3RhcnRlZBI7Ch'
    'pjdXJyZW50X2Vwb2NoX3N0YXJ0X2hlaWdodBgIIAEoA1IXY3VycmVudEVwb2NoU3RhcnRIZWln'
    'aHRKBAgHEAg=');

@$core.Deprecated('Use genesisStateDescriptor instead')
const GenesisState$json = {
  '1': 'GenesisState',
  '2': [
    {'1': 'epochs', '3': 1, '4': 3, '5': 11, '6': '.cosmos.epochs.v1beta1.EpochInfo', '8': {}, '10': 'epochs'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode(
    'CgxHZW5lc2lzU3RhdGUSPgoGZXBvY2hzGAEgAygLMiAuY29zbW9zLmVwb2Nocy52MWJldGExLk'
    'Vwb2NoSW5mb0IEyN4fAFIGZXBvY2hz');

