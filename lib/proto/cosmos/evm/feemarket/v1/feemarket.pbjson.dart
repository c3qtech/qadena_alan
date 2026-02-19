//
//  Generated code. Do not modify.
//  source: cosmos/evm/feemarket/v1/feemarket.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use paramsDescriptor instead')
const Params$json = {
  '1': 'Params',
  '2': [
    {'1': 'no_base_fee', '3': 1, '4': 1, '5': 8, '10': 'noBaseFee'},
    {'1': 'base_fee_change_denominator', '3': 2, '4': 1, '5': 13, '10': 'baseFeeChangeDenominator'},
    {'1': 'elasticity_multiplier', '3': 3, '4': 1, '5': 13, '10': 'elasticityMultiplier'},
    {'1': 'enable_height', '3': 5, '4': 1, '5': 3, '10': 'enableHeight'},
    {'1': 'base_fee', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'baseFee'},
    {'1': 'min_gas_price', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'minGasPrice'},
    {'1': 'min_gas_multiplier', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'minGasMultiplier'},
  ],
  '7': {},
  '9': [
    {'1': 4, '2': 5},
  ],
  '10': ['initial_base_fee'],
};

/// Descriptor for `Params`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paramsDescriptor = $convert.base64Decode(
    'CgZQYXJhbXMSHgoLbm9fYmFzZV9mZWUYASABKAhSCW5vQmFzZUZlZRI9ChtiYXNlX2ZlZV9jaG'
    'FuZ2VfZGVub21pbmF0b3IYAiABKA1SGGJhc2VGZWVDaGFuZ2VEZW5vbWluYXRvchIzChVlbGFz'
    'dGljaXR5X211bHRpcGxpZXIYAyABKA1SFGVsYXN0aWNpdHlNdWx0aXBsaWVyEiMKDWVuYWJsZV'
    '9oZWlnaHQYBSABKANSDGVuYWJsZUhlaWdodBJDCghiYXNlX2ZlZRgGIAEoCUIoyN4fANreHxtj'
    'b3Ntb3NzZGsuaW8vbWF0aC5MZWdhY3lEZWOo57AqAVIHYmFzZUZlZRJMCg1taW5fZ2FzX3ByaW'
    'NlGAcgASgJQijI3h8A2t4fG2Nvc21vc3Nkay5pby9tYXRoLkxlZ2FjeURlY6jnsCoBUgttaW5H'
    'YXNQcmljZRJWChJtaW5fZ2FzX211bHRpcGxpZXIYCCABKAlCKMjeHwDa3h8bY29zbW9zc2RrLm'
    'lvL21hdGguTGVnYWN5RGVjqOewKgFSEG1pbkdhc011bHRpcGxpZXI6IornsCodY29zbW9zL2V2'
    'bS94L2ZlZW1hcmtldC9QYXJhbXNKBAgEEAVSEGluaXRpYWxfYmFzZV9mZWU=');

