//
//  Generated code. Do not modify.
//  source: cosmos/evm/vm/v1/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use msgEthereumTxDescriptor instead')
const MsgEthereumTx$json = {
  '1': 'MsgEthereumTx',
  '2': [
    {'1': 'from', '3': 5, '4': 1, '5': 12, '10': 'from'},
    {'1': 'raw', '3': 6, '4': 1, '5': 12, '8': {}, '10': 'raw'},
  ],
  '7': {},
  '9': [
    {'1': 1, '2': 2},
    {'1': 2, '2': 3},
    {'1': 3, '2': 4},
    {'1': 4, '2': 5},
  ],
};

/// Descriptor for `MsgEthereumTx`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgEthereumTxDescriptor = $convert.base64Decode(
    'Cg1Nc2dFdGhlcmV1bVR4EhIKBGZyb20YBSABKAxSBGZyb20SJAoDcmF3GAYgASgMQhLI3h8A2t'
    '4fCkV0aGVyZXVtVHhSA3JhdzohiKAfAIrnsCoYY29zbW9zL2V2bS9Nc2dFdGhlcmV1bVR4SgQI'
    'ARACSgQIAhADSgQIAxAESgQIBBAF');

@$core.Deprecated('Use extensionOptionsEthereumTxDescriptor instead')
const ExtensionOptionsEthereumTx$json = {
  '1': 'ExtensionOptionsEthereumTx',
  '7': {},
};

/// Descriptor for `ExtensionOptionsEthereumTx`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extensionOptionsEthereumTxDescriptor = $convert.base64Decode(
    'ChpFeHRlbnNpb25PcHRpb25zRXRoZXJldW1UeDoEiKAfAA==');

@$core.Deprecated('Use msgEthereumTxResponseDescriptor instead')
const MsgEthereumTxResponse$json = {
  '1': 'MsgEthereumTxResponse',
  '2': [
    {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
    {'1': 'logs', '3': 2, '4': 3, '5': 11, '6': '.cosmos.evm.vm.v1.Log', '10': 'logs'},
    {'1': 'ret', '3': 3, '4': 1, '5': 12, '10': 'ret'},
    {'1': 'vm_error', '3': 4, '4': 1, '5': 9, '10': 'vmError'},
    {'1': 'gas_used', '3': 5, '4': 1, '5': 4, '10': 'gasUsed'},
    {'1': 'max_used_gas', '3': 6, '4': 1, '5': 4, '10': 'maxUsedGas'},
    {'1': 'block_hash', '3': 7, '4': 1, '5': 12, '10': 'blockHash'},
    {'1': 'block_timestamp', '3': 8, '4': 1, '5': 4, '10': 'blockTimestamp'},
  ],
  '7': {},
};

/// Descriptor for `MsgEthereumTxResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgEthereumTxResponseDescriptor = $convert.base64Decode(
    'ChVNc2dFdGhlcmV1bVR4UmVzcG9uc2USEgoEaGFzaBgBIAEoCVIEaGFzaBIpCgRsb2dzGAIgAy'
    'gLMhUuY29zbW9zLmV2bS52bS52MS5Mb2dSBGxvZ3MSEAoDcmV0GAMgASgMUgNyZXQSGQoIdm1f'
    'ZXJyb3IYBCABKAlSB3ZtRXJyb3ISGQoIZ2FzX3VzZWQYBSABKARSB2dhc1VzZWQSIAoMbWF4X3'
    'VzZWRfZ2FzGAYgASgEUgptYXhVc2VkR2FzEh0KCmJsb2NrX2hhc2gYByABKAxSCWJsb2NrSGFz'
    'aBInCg9ibG9ja190aW1lc3RhbXAYCCABKARSDmJsb2NrVGltZXN0YW1wOgSIoB8A');

@$core.Deprecated('Use msgUpdateParamsDescriptor instead')
const MsgUpdateParams$json = {
  '1': 'MsgUpdateParams',
  '2': [
    {'1': 'authority', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'authority'},
    {'1': 'params', '3': 2, '4': 1, '5': 11, '6': '.cosmos.evm.vm.v1.Params', '8': {}, '10': 'params'},
  ],
  '7': {},
};

/// Descriptor for `MsgUpdateParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateParamsDescriptor = $convert.base64Decode(
    'Cg9Nc2dVcGRhdGVQYXJhbXMSNgoJYXV0aG9yaXR5GAEgASgJQhjStC0UY29zbW9zLkFkZHJlc3'
    'NTdHJpbmdSCWF1dGhvcml0eRI7CgZwYXJhbXMYAiABKAsyGC5jb3Ntb3MuZXZtLnZtLnYxLlBh'
    'cmFtc0IJyN4fAKjnsCoBUgZwYXJhbXM6MoLnsCoJYXV0aG9yaXR5iuewKh9jb3Ntb3MvZXZtL3'
    'gvdm0vTXNnVXBkYXRlUGFyYW1z');

@$core.Deprecated('Use msgUpdateParamsResponseDescriptor instead')
const MsgUpdateParamsResponse$json = {
  '1': 'MsgUpdateParamsResponse',
};

/// Descriptor for `MsgUpdateParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateParamsResponseDescriptor = $convert.base64Decode(
    'ChdNc2dVcGRhdGVQYXJhbXNSZXNwb25zZQ==');

@$core.Deprecated('Use msgRegisterPreinstallsDescriptor instead')
const MsgRegisterPreinstalls$json = {
  '1': 'MsgRegisterPreinstalls',
  '2': [
    {'1': 'authority', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'authority'},
    {'1': 'preinstalls', '3': 2, '4': 3, '5': 11, '6': '.cosmos.evm.vm.v1.Preinstall', '8': {}, '10': 'preinstalls'},
  ],
  '7': {},
};

/// Descriptor for `MsgRegisterPreinstalls`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRegisterPreinstallsDescriptor = $convert.base64Decode(
    'ChZNc2dSZWdpc3RlclByZWluc3RhbGxzEjYKCWF1dGhvcml0eRgBIAEoCUIY0rQtFGNvc21vcy'
    '5BZGRyZXNzU3RyaW5nUglhdXRob3JpdHkSSQoLcHJlaW5zdGFsbHMYAiADKAsyHC5jb3Ntb3Mu'
    'ZXZtLnZtLnYxLlByZWluc3RhbGxCCcjeHwCo57AqAVILcHJlaW5zdGFsbHM6OYLnsCoJYXV0aG'
    '9yaXR5iuewKiZjb3Ntb3MvZXZtL3gvdm0vTXNnUmVnaXN0ZXJQcmVpbnN0YWxscw==');

@$core.Deprecated('Use msgRegisterPreinstallsResponseDescriptor instead')
const MsgRegisterPreinstallsResponse$json = {
  '1': 'MsgRegisterPreinstallsResponse',
};

/// Descriptor for `MsgRegisterPreinstallsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRegisterPreinstallsResponseDescriptor = $convert.base64Decode(
    'Ch5Nc2dSZWdpc3RlclByZWluc3RhbGxzUmVzcG9uc2U=');

