//
//  Generated code. Do not modify.
//  source: cosmos/evm/erc20/v1/genesis.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use genesisStateDescriptor instead')
const GenesisState$json = {
  '1': 'GenesisState',
  '2': [
    {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.cosmos.evm.erc20.v1.Params', '8': {}, '10': 'params'},
    {'1': 'token_pairs', '3': 2, '4': 3, '5': 11, '6': '.cosmos.evm.erc20.v1.TokenPair', '8': {}, '10': 'tokenPairs'},
    {'1': 'allowances', '3': 3, '4': 3, '5': 11, '6': '.cosmos.evm.erc20.v1.Allowance', '8': {}, '10': 'allowances'},
    {'1': 'native_precompiles', '3': 4, '4': 3, '5': 9, '8': {}, '10': 'nativePrecompiles'},
    {'1': 'dynamic_precompiles', '3': 5, '4': 3, '5': 9, '8': {}, '10': 'dynamicPrecompiles'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode(
    'CgxHZW5lc2lzU3RhdGUSPgoGcGFyYW1zGAEgASgLMhsuY29zbW9zLmV2bS5lcmMyMC52MS5QYX'
    'JhbXNCCcjeHwCo57AqAVIGcGFyYW1zEkoKC3Rva2VuX3BhaXJzGAIgAygLMh4uY29zbW9zLmV2'
    'bS5lcmMyMC52MS5Ub2tlblBhaXJCCcjeHwCo57AqAVIKdG9rZW5QYWlycxJJCgphbGxvd2FuY2'
    'VzGAMgAygLMh4uY29zbW9zLmV2bS5lcmMyMC52MS5BbGxvd2FuY2VCCcjeHwCo57AqAVIKYWxs'
    'b3dhbmNlcxI4ChJuYXRpdmVfcHJlY29tcGlsZXMYBCADKAlCCcjeHwGo57AqAVIRbmF0aXZlUH'
    'JlY29tcGlsZXMSOgoTZHluYW1pY19wcmVjb21waWxlcxgFIAMoCUIJyN4fAajnsCoBUhJkeW5h'
    'bWljUHJlY29tcGlsZXM=');

@$core.Deprecated('Use paramsDescriptor instead')
const Params$json = {
  '1': 'Params',
  '2': [
    {'1': 'enable_erc20', '3': 1, '4': 1, '5': 8, '10': 'enableErc20'},
    {'1': 'permissionless_registration', '3': 5, '4': 1, '5': 8, '10': 'permissionlessRegistration'},
  ],
  '9': [
    {'1': 2, '2': 3},
  ],
};

/// Descriptor for `Params`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paramsDescriptor = $convert.base64Decode(
    'CgZQYXJhbXMSIQoMZW5hYmxlX2VyYzIwGAEgASgIUgtlbmFibGVFcmMyMBI/ChtwZXJtaXNzaW'
    '9ubGVzc19yZWdpc3RyYXRpb24YBSABKAhSGnBlcm1pc3Npb25sZXNzUmVnaXN0cmF0aW9uSgQI'
    'AhAD');

