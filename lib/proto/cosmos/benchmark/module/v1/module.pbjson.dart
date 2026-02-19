//
//  Generated code. Do not modify.
//  source: cosmos/benchmark/module/v1/module.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use moduleDescriptor instead')
const Module$json = {
  '1': 'Module',
  '2': [
    {'1': 'genesis_params', '3': 1, '4': 1, '5': 11, '6': '.cosmos.benchmark.module.v1.GeneratorParams', '10': 'genesisParams'},
  ],
  '7': {},
};

/// Descriptor for `Module`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moduleDescriptor = $convert.base64Decode(
    'CgZNb2R1bGUSUgoOZ2VuZXNpc19wYXJhbXMYASABKAsyKy5jb3Ntb3MuYmVuY2htYXJrLm1vZH'
    'VsZS52MS5HZW5lcmF0b3JQYXJhbXNSDWdlbmVzaXNQYXJhbXM6JLrAltoBHgocY29zbW9zc2Rr'
    'LmlvL3Rvb2xzL2JlbmNobWFyaw==');

@$core.Deprecated('Use generatorParamsDescriptor instead')
const GeneratorParams$json = {
  '1': 'GeneratorParams',
  '2': [
    {'1': 'seed', '3': 1, '4': 1, '5': 4, '10': 'seed'},
    {'1': 'bucket_count', '3': 2, '4': 1, '5': 4, '10': 'bucketCount'},
    {'1': 'key_mean', '3': 3, '4': 1, '5': 4, '10': 'keyMean'},
    {'1': 'key_std_dev', '3': 4, '4': 1, '5': 4, '10': 'keyStdDev'},
    {'1': 'value_mean', '3': 6, '4': 1, '5': 4, '10': 'valueMean'},
    {'1': 'value_std_dev', '3': 7, '4': 1, '5': 4, '10': 'valueStdDev'},
    {'1': 'genesis_count', '3': 8, '4': 1, '5': 4, '10': 'genesisCount'},
    {'1': 'insert_weight', '3': 9, '4': 1, '5': 2, '10': 'insertWeight'},
    {'1': 'update_weight', '3': 10, '4': 1, '5': 2, '10': 'updateWeight'},
    {'1': 'get_weight', '3': 12, '4': 1, '5': 2, '10': 'getWeight'},
    {'1': 'delete_weight', '3': 11, '4': 1, '5': 2, '10': 'deleteWeight'},
  ],
};

/// Descriptor for `GeneratorParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generatorParamsDescriptor = $convert.base64Decode(
    'Cg9HZW5lcmF0b3JQYXJhbXMSEgoEc2VlZBgBIAEoBFIEc2VlZBIhCgxidWNrZXRfY291bnQYAi'
    'ABKARSC2J1Y2tldENvdW50EhkKCGtleV9tZWFuGAMgASgEUgdrZXlNZWFuEh4KC2tleV9zdGRf'
    'ZGV2GAQgASgEUglrZXlTdGREZXYSHQoKdmFsdWVfbWVhbhgGIAEoBFIJdmFsdWVNZWFuEiIKDX'
    'ZhbHVlX3N0ZF9kZXYYByABKARSC3ZhbHVlU3RkRGV2EiMKDWdlbmVzaXNfY291bnQYCCABKARS'
    'DGdlbmVzaXNDb3VudBIjCg1pbnNlcnRfd2VpZ2h0GAkgASgCUgxpbnNlcnRXZWlnaHQSIwoNdX'
    'BkYXRlX3dlaWdodBgKIAEoAlIMdXBkYXRlV2VpZ2h0Eh0KCmdldF93ZWlnaHQYDCABKAJSCWdl'
    'dFdlaWdodBIjCg1kZWxldGVfd2VpZ2h0GAsgASgCUgxkZWxldGVXZWlnaHQ=');

