//
//  Generated code. Do not modify.
//  source: cosmos/protocolpool/v1/types.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use continuousFundDescriptor instead')
const ContinuousFund$json = {
  '1': 'ContinuousFund',
  '2': [
    {'1': 'recipient', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'recipient'},
    {'1': 'percentage', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'percentage'},
    {'1': 'expiry', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'expiry'},
  ],
};

/// Descriptor for `ContinuousFund`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List continuousFundDescriptor = $convert.base64Decode(
    'Cg5Db250aW51b3VzRnVuZBI2CglyZWNpcGllbnQYASABKAlCGNK0LRRjb3Ntb3MuQWRkcmVzc1'
    'N0cmluZ1IJcmVjaXBpZW50ElEKCnBlcmNlbnRhZ2UYAiABKAlCMcjeHwDa3h8bY29zbW9zc2Rr'
    'LmlvL21hdGguTGVnYWN5RGVj0rQtCmNvc21vcy5EZWNSCnBlcmNlbnRhZ2USOAoGZXhwaXJ5GA'
    'MgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIEkN8fAVIGZXhwaXJ5');

@$core.Deprecated('Use paramsDescriptor instead')
const Params$json = {
  '1': 'Params',
  '2': [
    {'1': 'enabled_distribution_denoms', '3': 1, '4': 3, '5': 9, '10': 'enabledDistributionDenoms'},
    {'1': 'distribution_frequency', '3': 2, '4': 1, '5': 4, '10': 'distributionFrequency'},
  ],
};

/// Descriptor for `Params`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paramsDescriptor = $convert.base64Decode(
    'CgZQYXJhbXMSPgobZW5hYmxlZF9kaXN0cmlidXRpb25fZGVub21zGAEgAygJUhllbmFibGVkRG'
    'lzdHJpYnV0aW9uRGVub21zEjUKFmRpc3RyaWJ1dGlvbl9mcmVxdWVuY3kYAiABKARSFWRpc3Ry'
    'aWJ1dGlvbkZyZXF1ZW5jeQ==');

