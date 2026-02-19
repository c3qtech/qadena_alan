//
//  Generated code. Do not modify.
//  source: cosmos/evm/erc20/v1/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use msgConvertERC20Descriptor instead')
const MsgConvertERC20$json = {
  '1': 'MsgConvertERC20',
  '2': [
    {'1': 'contract_address', '3': 1, '4': 1, '5': 9, '10': 'contractAddress'},
    {'1': 'amount', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'amount'},
    {'1': 'receiver', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'receiver'},
    {'1': 'sender', '3': 4, '4': 1, '5': 9, '10': 'sender'},
  ],
  '7': {},
};

/// Descriptor for `MsgConvertERC20`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgConvertERC20Descriptor = $convert.base64Decode(
    'Cg9Nc2dDb252ZXJ0RVJDMjASKQoQY29udHJhY3RfYWRkcmVzcxgBIAEoCVIPY29udHJhY3RBZG'
    'RyZXNzEjoKBmFtb3VudBgCIAEoCUIiyN4fANreHxVjb3Ntb3NzZGsuaW8vbWF0aC5JbnSo57Aq'
    'AVIGYW1vdW50EjQKCHJlY2VpdmVyGAMgASgJQhjStC0UY29zbW9zLkFkZHJlc3NTdHJpbmdSCH'
    'JlY2VpdmVyEhYKBnNlbmRlchgEIAEoCVIGc2VuZGVyOiqC57AqBnNlbmRlcornsCoaY29zbW9z'
    'L2V2bS9Nc2dDb252ZXJ0RVJDMjA=');

@$core.Deprecated('Use msgConvertERC20ResponseDescriptor instead')
const MsgConvertERC20Response$json = {
  '1': 'MsgConvertERC20Response',
};

/// Descriptor for `MsgConvertERC20Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgConvertERC20ResponseDescriptor = $convert.base64Decode(
    'ChdNc2dDb252ZXJ0RVJDMjBSZXNwb25zZQ==');

@$core.Deprecated('Use msgConvertCoinDescriptor instead')
const MsgConvertCoin$json = {
  '1': 'MsgConvertCoin',
  '2': [
    {'1': 'coin', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'coin'},
    {'1': 'receiver', '3': 2, '4': 1, '5': 9, '10': 'receiver'},
    {'1': 'sender', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'sender'},
  ],
  '7': {},
};

/// Descriptor for `MsgConvertCoin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgConvertCoinDescriptor = $convert.base64Decode(
    'Cg5Nc2dDb252ZXJ0Q29pbhIzCgRjb2luGAEgASgLMhkuY29zbW9zLmJhc2UudjFiZXRhMS5Db2'
    'luQgTI3h8AUgRjb2luEhoKCHJlY2VpdmVyGAIgASgJUghyZWNlaXZlchIwCgZzZW5kZXIYAyAB'
    'KAlCGNK0LRRjb3Ntb3MuQWRkcmVzc1N0cmluZ1IGc2VuZGVyOjGC57AqBnNlbmRlcornsCohY2'
    '9zbW9zL2V2bS94L2VyYzIwL01zZ0NvbnZlcnRDb2lu');

@$core.Deprecated('Use msgConvertCoinResponseDescriptor instead')
const MsgConvertCoinResponse$json = {
  '1': 'MsgConvertCoinResponse',
};

/// Descriptor for `MsgConvertCoinResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgConvertCoinResponseDescriptor = $convert.base64Decode(
    'ChZNc2dDb252ZXJ0Q29pblJlc3BvbnNl');

@$core.Deprecated('Use msgUpdateParamsDescriptor instead')
const MsgUpdateParams$json = {
  '1': 'MsgUpdateParams',
  '2': [
    {'1': 'authority', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'authority'},
    {'1': 'params', '3': 2, '4': 1, '5': 11, '6': '.cosmos.evm.erc20.v1.Params', '8': {}, '10': 'params'},
  ],
  '7': {},
};

/// Descriptor for `MsgUpdateParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateParamsDescriptor = $convert.base64Decode(
    'Cg9Nc2dVcGRhdGVQYXJhbXMSNgoJYXV0aG9yaXR5GAEgASgJQhjStC0UY29zbW9zLkFkZHJlc3'
    'NTdHJpbmdSCWF1dGhvcml0eRI+CgZwYXJhbXMYAiABKAsyGy5jb3Ntb3MuZXZtLmVyYzIwLnYx'
    'LlBhcmFtc0IJyN4fAKjnsCoBUgZwYXJhbXM6NYLnsCoJYXV0aG9yaXR5iuewKiJjb3Ntb3MvZX'
    'ZtL3gvZXJjMjAvTXNnVXBkYXRlUGFyYW1z');

@$core.Deprecated('Use msgUpdateParamsResponseDescriptor instead')
const MsgUpdateParamsResponse$json = {
  '1': 'MsgUpdateParamsResponse',
};

/// Descriptor for `MsgUpdateParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateParamsResponseDescriptor = $convert.base64Decode(
    'ChdNc2dVcGRhdGVQYXJhbXNSZXNwb25zZQ==');

@$core.Deprecated('Use msgRegisterERC20Descriptor instead')
const MsgRegisterERC20$json = {
  '1': 'MsgRegisterERC20',
  '2': [
    {'1': 'signer', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'signer'},
    {'1': 'erc20addresses', '3': 2, '4': 3, '5': 9, '10': 'erc20addresses'},
  ],
  '7': {},
};

/// Descriptor for `MsgRegisterERC20`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRegisterERC20Descriptor = $convert.base64Decode(
    'ChBNc2dSZWdpc3RlckVSQzIwEjAKBnNpZ25lchgBIAEoCUIY0rQtFGNvc21vcy5BZGRyZXNzU3'
    'RyaW5nUgZzaWduZXISJgoOZXJjMjBhZGRyZXNzZXMYAiADKAlSDmVyYzIwYWRkcmVzc2VzOjOC'
    '57AqBnNpZ25lcornsCojY29zbW9zL2V2bS94L2VyYzIwL01zZ1JlZ2lzdGVyRVJDMjA=');

@$core.Deprecated('Use msgRegisterERC20ResponseDescriptor instead')
const MsgRegisterERC20Response$json = {
  '1': 'MsgRegisterERC20Response',
};

/// Descriptor for `MsgRegisterERC20Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRegisterERC20ResponseDescriptor = $convert.base64Decode(
    'ChhNc2dSZWdpc3RlckVSQzIwUmVzcG9uc2U=');

@$core.Deprecated('Use msgToggleConversionDescriptor instead')
const MsgToggleConversion$json = {
  '1': 'MsgToggleConversion',
  '2': [
    {'1': 'authority', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'authority'},
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
  '7': {},
};

/// Descriptor for `MsgToggleConversion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgToggleConversionDescriptor = $convert.base64Decode(
    'ChNNc2dUb2dnbGVDb252ZXJzaW9uEjYKCWF1dGhvcml0eRgBIAEoCUIY0rQtFGNvc21vcy5BZG'
    'RyZXNzU3RyaW5nUglhdXRob3JpdHkSFAoFdG9rZW4YAiABKAlSBXRva2VuOjmC57AqCWF1dGhv'
    'cml0eYrnsComY29zbW9zL2V2bS94L2VyYzIwL01zZ1RvZ2dsZUNvbnZlcnNpb24=');

@$core.Deprecated('Use msgToggleConversionResponseDescriptor instead')
const MsgToggleConversionResponse$json = {
  '1': 'MsgToggleConversionResponse',
};

/// Descriptor for `MsgToggleConversionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgToggleConversionResponseDescriptor = $convert.base64Decode(
    'ChtNc2dUb2dnbGVDb252ZXJzaW9uUmVzcG9uc2U=');

