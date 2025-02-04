//
//  Generated code. Do not modify.
//  source: qadena/qadena/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use msgUpdateParamsDescriptor instead')
const MsgUpdateParams$json = {
  '1': 'MsgUpdateParams',
  '2': [
    {'1': 'authority', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'authority'},
    {'1': 'params', '3': 2, '4': 1, '5': 11, '6': '.qadena.qadena.Params', '8': {}, '10': 'params'},
  ],
  '7': {},
};

/// Descriptor for `MsgUpdateParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateParamsDescriptor = $convert.base64Decode(
    'Cg9Nc2dVcGRhdGVQYXJhbXMSNgoJYXV0aG9yaXR5GAEgASgJQhjStC0UY29zbW9zLkFkZHJlc3'
    'NTdHJpbmdSCWF1dGhvcml0eRI4CgZwYXJhbXMYAiABKAsyFS5xYWRlbmEucWFkZW5hLlBhcmFt'
    'c0IJyN4fAKjnsCoBUgZwYXJhbXM6MoLnsCoJYXV0aG9yaXR5iuewKh9xYWRlbmEveC9xYWRlbm'
    'EvTXNnVXBkYXRlUGFyYW1z');

@$core.Deprecated('Use msgUpdateParamsResponseDescriptor instead')
const MsgUpdateParamsResponse$json = {
  '1': 'MsgUpdateParamsResponse',
};

/// Descriptor for `MsgUpdateParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateParamsResponseDescriptor = $convert.base64Decode(
    'ChdNc2dVcGRhdGVQYXJhbXNSZXNwb25zZQ==');

@$core.Deprecated('Use msgCreateSuspiciousTransactionDescriptor instead')
const MsgCreateSuspiciousTransaction$json = {
  '1': 'MsgCreateSuspiciousTransaction',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'jarID', '3': 2, '4': 1, '5': 9, '10': 'jarID'},
    {'1': 'regulatorPubKID', '3': 3, '4': 1, '5': 9, '10': 'regulatorPubKID'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'time', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'time'},
    {'1': 'encSourcePersonalInfoRegulatorPubK', '3': 6, '4': 1, '5': 12, '10': 'encSourcePersonalInfoRegulatorPubK'},
    {'1': 'encDestinationPersonalInfoRegulatorPubK', '3': 7, '4': 1, '5': 12, '10': 'encDestinationPersonalInfoRegulatorPubK'},
    {'1': 'encEAmountRegulatorPubK', '3': 8, '4': 1, '5': 12, '10': 'encEAmountRegulatorPubK'},
    {'1': 'encOptInReasonRegulatorPubK', '3': 9, '4': 1, '5': 12, '10': 'encOptInReasonRegulatorPubK'},
  ],
  '7': {},
};

/// Descriptor for `MsgCreateSuspiciousTransaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateSuspiciousTransactionDescriptor = $convert.base64Decode(
    'Ch5Nc2dDcmVhdGVTdXNwaWNpb3VzVHJhbnNhY3Rpb24SGAoHY3JlYXRvchgBIAEoCVIHY3JlYX'
    'RvchIUCgVqYXJJRBgCIAEoCVIFamFySUQSKAoPcmVndWxhdG9yUHViS0lEGAMgASgJUg9yZWd1'
    'bGF0b3JQdWJLSUQSFgoGcmVhc29uGAQgASgJUgZyZWFzb24SOAoEdGltZRgFIAEoCzIaLmdvb2'
    'dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCCMjeHwCQ3x8BUgR0aW1lEk4KImVuY1NvdXJjZVBlcnNv'
    'bmFsSW5mb1JlZ3VsYXRvclB1YksYBiABKAxSImVuY1NvdXJjZVBlcnNvbmFsSW5mb1JlZ3VsYX'
    'RvclB1YksSWAonZW5jRGVzdGluYXRpb25QZXJzb25hbEluZm9SZWd1bGF0b3JQdWJLGAcgASgM'
    'UidlbmNEZXN0aW5hdGlvblBlcnNvbmFsSW5mb1JlZ3VsYXRvclB1YksSOAoXZW5jRUFtb3VudF'
    'JlZ3VsYXRvclB1YksYCCABKAxSF2VuY0VBbW91bnRSZWd1bGF0b3JQdWJLEkAKG2VuY09wdElu'
    'UmVhc29uUmVndWxhdG9yUHViSxgJIAEoDFIbZW5jT3B0SW5SZWFzb25SZWd1bGF0b3JQdWJLOg'
    'yC57AqB2NyZWF0b3I=');

@$core.Deprecated('Use msgCreateSuspiciousTransactionResponseDescriptor instead')
const MsgCreateSuspiciousTransactionResponse$json = {
  '1': 'MsgCreateSuspiciousTransactionResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `MsgCreateSuspiciousTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateSuspiciousTransactionResponseDescriptor = $convert.base64Decode(
    'CiZNc2dDcmVhdGVTdXNwaWNpb3VzVHJhbnNhY3Rpb25SZXNwb25zZRIOCgJpZBgBIAEoBFICaW'
    'Q=');

@$core.Deprecated('Use msgUpdateSuspiciousTransactionDescriptor instead')
const MsgUpdateSuspiciousTransaction$json = {
  '1': 'MsgUpdateSuspiciousTransaction',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'id', '3': 2, '4': 1, '5': 4, '10': 'id'},
    {'1': 'jarID', '3': 3, '4': 1, '5': 9, '10': 'jarID'},
    {'1': 'regulatorPubKID', '3': 4, '4': 1, '5': 9, '10': 'regulatorPubKID'},
    {'1': 'reason', '3': 5, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'time', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'time'},
    {'1': 'encSourcePersonalInfoRegulatorPubK', '3': 7, '4': 1, '5': 12, '10': 'encSourcePersonalInfoRegulatorPubK'},
    {'1': 'encDestinationPersonalInfoRegulatorPubK', '3': 8, '4': 1, '5': 12, '10': 'encDestinationPersonalInfoRegulatorPubK'},
    {'1': 'encEAmountRegulatorPubK', '3': 9, '4': 1, '5': 12, '10': 'encEAmountRegulatorPubK'},
    {'1': 'encOptInReasonRegulatorPubK', '3': 10, '4': 1, '5': 12, '10': 'encOptInReasonRegulatorPubK'},
  ],
  '7': {},
};

/// Descriptor for `MsgUpdateSuspiciousTransaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateSuspiciousTransactionDescriptor = $convert.base64Decode(
    'Ch5Nc2dVcGRhdGVTdXNwaWNpb3VzVHJhbnNhY3Rpb24SGAoHY3JlYXRvchgBIAEoCVIHY3JlYX'
    'RvchIOCgJpZBgCIAEoBFICaWQSFAoFamFySUQYAyABKAlSBWphcklEEigKD3JlZ3VsYXRvclB1'
    'YktJRBgEIAEoCVIPcmVndWxhdG9yUHViS0lEEhYKBnJlYXNvbhgFIAEoCVIGcmVhc29uEjgKBH'
    'RpbWUYBiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQgjI3h8AkN8fAVIEdGltZRJO'
    'CiJlbmNTb3VyY2VQZXJzb25hbEluZm9SZWd1bGF0b3JQdWJLGAcgASgMUiJlbmNTb3VyY2VQZX'
    'Jzb25hbEluZm9SZWd1bGF0b3JQdWJLElgKJ2VuY0Rlc3RpbmF0aW9uUGVyc29uYWxJbmZvUmVn'
    'dWxhdG9yUHViSxgIIAEoDFInZW5jRGVzdGluYXRpb25QZXJzb25hbEluZm9SZWd1bGF0b3JQdW'
    'JLEjgKF2VuY0VBbW91bnRSZWd1bGF0b3JQdWJLGAkgASgMUhdlbmNFQW1vdW50UmVndWxhdG9y'
    'UHViSxJAChtlbmNPcHRJblJlYXNvblJlZ3VsYXRvclB1YksYCiABKAxSG2VuY09wdEluUmVhc2'
    '9uUmVndWxhdG9yUHViSzoMguewKgdjcmVhdG9y');

@$core.Deprecated('Use msgUpdateSuspiciousTransactionResponseDescriptor instead')
const MsgUpdateSuspiciousTransactionResponse$json = {
  '1': 'MsgUpdateSuspiciousTransactionResponse',
};

/// Descriptor for `MsgUpdateSuspiciousTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateSuspiciousTransactionResponseDescriptor = $convert.base64Decode(
    'CiZNc2dVcGRhdGVTdXNwaWNpb3VzVHJhbnNhY3Rpb25SZXNwb25zZQ==');

@$core.Deprecated('Use msgDeleteSuspiciousTransactionDescriptor instead')
const MsgDeleteSuspiciousTransaction$json = {
  '1': 'MsgDeleteSuspiciousTransaction',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'id', '3': 2, '4': 1, '5': 4, '10': 'id'},
  ],
  '7': {},
};

/// Descriptor for `MsgDeleteSuspiciousTransaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDeleteSuspiciousTransactionDescriptor = $convert.base64Decode(
    'Ch5Nc2dEZWxldGVTdXNwaWNpb3VzVHJhbnNhY3Rpb24SGAoHY3JlYXRvchgBIAEoCVIHY3JlYX'
    'RvchIOCgJpZBgCIAEoBFICaWQ6DILnsCoHY3JlYXRvcg==');

@$core.Deprecated('Use msgDeleteSuspiciousTransactionResponseDescriptor instead')
const MsgDeleteSuspiciousTransactionResponse$json = {
  '1': 'MsgDeleteSuspiciousTransactionResponse',
};

/// Descriptor for `MsgDeleteSuspiciousTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDeleteSuspiciousTransactionResponseDescriptor = $convert.base64Decode(
    'CiZNc2dEZWxldGVTdXNwaWNpb3VzVHJhbnNhY3Rpb25SZXNwb25zZQ==');

@$core.Deprecated('Use msgAddPublicKeyDescriptor instead')
const MsgAddPublicKey$json = {
  '1': 'MsgAddPublicKey',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'pubK', '3': 2, '4': 1, '5': 9, '10': 'pubK'},
    {'1': 'pubKType', '3': 3, '4': 1, '5': 9, '10': 'pubKType'},
  ],
  '7': {},
};

/// Descriptor for `MsgAddPublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgAddPublicKeyDescriptor = $convert.base64Decode(
    'Cg9Nc2dBZGRQdWJsaWNLZXkSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchISCgRwdWJLGAIgAS'
    'gJUgRwdWJLEhoKCHB1YktUeXBlGAMgASgJUghwdWJLVHlwZToMguewKgdjcmVhdG9y');

@$core.Deprecated('Use msgAddPublicKeyResponseDescriptor instead')
const MsgAddPublicKeyResponse$json = {
  '1': 'MsgAddPublicKeyResponse',
};

/// Descriptor for `MsgAddPublicKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgAddPublicKeyResponseDescriptor = $convert.base64Decode(
    'ChdNc2dBZGRQdWJsaWNLZXlSZXNwb25zZQ==');

@$core.Deprecated('Use msgUpdateIntervalPublicKeyIDDescriptor instead')
const MsgUpdateIntervalPublicKeyID$json = {
  '1': 'MsgUpdateIntervalPublicKeyID',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'nodeID', '3': 2, '4': 1, '5': 9, '10': 'nodeID'},
    {'1': 'nodeType', '3': 3, '4': 1, '5': 9, '10': 'nodeType'},
    {'1': 'serviceProviderType', '3': 4, '4': 1, '5': 9, '10': 'serviceProviderType'},
  ],
  '7': {},
};

/// Descriptor for `MsgUpdateIntervalPublicKeyID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateIntervalPublicKeyIDDescriptor = $convert.base64Decode(
    'ChxNc2dVcGRhdGVJbnRlcnZhbFB1YmxpY0tleUlEEhgKB2NyZWF0b3IYASABKAlSB2NyZWF0b3'
    'ISFgoGbm9kZUlEGAIgASgJUgZub2RlSUQSGgoIbm9kZVR5cGUYAyABKAlSCG5vZGVUeXBlEjAK'
    'E3NlcnZpY2VQcm92aWRlclR5cGUYBCABKAlSE3NlcnZpY2VQcm92aWRlclR5cGU6DILnsCoHY3'
    'JlYXRvcg==');

@$core.Deprecated('Use msgUpdateIntervalPublicKeyIDResponseDescriptor instead')
const MsgUpdateIntervalPublicKeyIDResponse$json = {
  '1': 'MsgUpdateIntervalPublicKeyIDResponse',
};

/// Descriptor for `MsgUpdateIntervalPublicKeyIDResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateIntervalPublicKeyIDResponseDescriptor = $convert.base64Decode(
    'CiRNc2dVcGRhdGVJbnRlcnZhbFB1YmxpY0tleUlEUmVzcG9uc2U=');

@$core.Deprecated('Use msgUpdatePioneerJarDescriptor instead')
const MsgUpdatePioneerJar$json = {
  '1': 'MsgUpdatePioneerJar',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'pioneerID', '3': 2, '4': 1, '5': 9, '10': 'pioneerID'},
    {'1': 'jarID', '3': 3, '4': 1, '5': 9, '10': 'jarID'},
  ],
  '7': {},
};

/// Descriptor for `MsgUpdatePioneerJar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdatePioneerJarDescriptor = $convert.base64Decode(
    'ChNNc2dVcGRhdGVQaW9uZWVySmFyEhgKB2NyZWF0b3IYASABKAlSB2NyZWF0b3ISHAoJcGlvbm'
    'VlcklEGAIgASgJUglwaW9uZWVySUQSFAoFamFySUQYAyABKAlSBWphcklEOgyC57AqB2NyZWF0'
    'b3I=');

@$core.Deprecated('Use msgUpdatePioneerJarResponseDescriptor instead')
const MsgUpdatePioneerJarResponse$json = {
  '1': 'MsgUpdatePioneerJarResponse',
};

/// Descriptor for `MsgUpdatePioneerJarResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdatePioneerJarResponseDescriptor = $convert.base64Decode(
    'ChtNc2dVcGRhdGVQaW9uZWVySmFyUmVzcG9uc2U=');

@$core.Deprecated('Use msgUpdateJarRegulatorDescriptor instead')
const MsgUpdateJarRegulator$json = {
  '1': 'MsgUpdateJarRegulator',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'jarID', '3': 2, '4': 1, '5': 9, '10': 'jarID'},
    {'1': 'regulatorID', '3': 3, '4': 1, '5': 9, '10': 'regulatorID'},
  ],
  '7': {},
};

/// Descriptor for `MsgUpdateJarRegulator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateJarRegulatorDescriptor = $convert.base64Decode(
    'ChVNc2dVcGRhdGVKYXJSZWd1bGF0b3ISGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchIUCgVqYX'
    'JJRBgCIAEoCVIFamFySUQSIAoLcmVndWxhdG9ySUQYAyABKAlSC3JlZ3VsYXRvcklEOgyC57Aq'
    'B2NyZWF0b3I=');

@$core.Deprecated('Use msgUpdateJarRegulatorResponseDescriptor instead')
const MsgUpdateJarRegulatorResponse$json = {
  '1': 'MsgUpdateJarRegulatorResponse',
};

/// Descriptor for `MsgUpdateJarRegulatorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateJarRegulatorResponseDescriptor = $convert.base64Decode(
    'Ch1Nc2dVcGRhdGVKYXJSZWd1bGF0b3JSZXNwb25zZQ==');

@$core.Deprecated('Use msgCreateWalletDescriptor instead')
const MsgCreateWallet$json = {
  '1': 'MsgCreateWallet',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'homePioneerID', '3': 2, '4': 1, '5': 9, '10': 'homePioneerID'},
    {'1': 'serviceProviderID', '3': 3, '4': 3, '5': 9, '10': 'serviceProviderID'},
    {'1': 'encCreateWalletVShare', '3': 4, '4': 1, '5': 12, '10': 'encCreateWalletVShare'},
    {'1': 'createWalletVShareBind', '3': 5, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'createWalletVShareBind'},
    {'1': 'acceptPasswordPC', '3': 6, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'acceptPasswordPC'},
    {'1': 'encAcceptValidatedCredentialsVShare', '3': 7, '4': 1, '5': 12, '10': 'encAcceptValidatedCredentialsVShare'},
    {'1': 'acceptValidatedCredentialsVShareBind', '3': 8, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'acceptValidatedCredentialsVShareBind'},
    {'1': 'walletAmountPedersenCommit', '3': 9, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptablePedersenCommit', '10': 'walletAmountPedersenCommit'},
    {'1': 'encWalletAmountVShare', '3': 10, '4': 1, '5': 12, '10': 'encWalletAmountVShare'},
    {'1': 'walletAmountVShareBind', '3': 11, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'walletAmountVShareBind'},
    {'1': 'transparentWalletAmountPC', '3': 12, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptablePedersenCommit', '10': 'transparentWalletAmountPC'},
    {'1': 'acceptCredentialType', '3': 13, '4': 1, '5': 9, '10': 'acceptCredentialType'},
  ],
  '7': {},
};

/// Descriptor for `MsgCreateWallet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateWalletDescriptor = $convert.base64Decode(
    'Cg9Nc2dDcmVhdGVXYWxsZXQSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchIkCg1ob21lUGlvbm'
    'VlcklEGAIgASgJUg1ob21lUGlvbmVlcklEEiwKEXNlcnZpY2VQcm92aWRlcklEGAMgAygJUhFz'
    'ZXJ2aWNlUHJvdmlkZXJJRBI0ChVlbmNDcmVhdGVXYWxsZXRWU2hhcmUYBCABKAxSFWVuY0NyZW'
    'F0ZVdhbGxldFZTaGFyZRJVChZjcmVhdGVXYWxsZXRWU2hhcmVCaW5kGAUgASgLMh0ucWFkZW5h'
    'LnFhZGVuYS5WU2hhcmVCaW5kRGF0YVIWY3JlYXRlV2FsbGV0VlNoYXJlQmluZBJKChBhY2NlcH'
    'RQYXNzd29yZFBDGAYgASgLMh4ucWFkZW5hLnFhZGVuYS5CUGVkZXJzZW5Db21taXRSEGFjY2Vw'
    'dFBhc3N3b3JkUEMSUAojZW5jQWNjZXB0VmFsaWRhdGVkQ3JlZGVudGlhbHNWU2hhcmUYByABKA'
    'xSI2VuY0FjY2VwdFZhbGlkYXRlZENyZWRlbnRpYWxzVlNoYXJlEnEKJGFjY2VwdFZhbGlkYXRl'
    'ZENyZWRlbnRpYWxzVlNoYXJlQmluZBgIIAEoCzIdLnFhZGVuYS5xYWRlbmEuVlNoYXJlQmluZE'
    'RhdGFSJGFjY2VwdFZhbGlkYXRlZENyZWRlbnRpYWxzVlNoYXJlQmluZBJoChp3YWxsZXRBbW91'
    'bnRQZWRlcnNlbkNvbW1pdBgJIAEoCzIoLnFhZGVuYS5xYWRlbmEuRW5jcnlwdGFibGVQZWRlcn'
    'NlbkNvbW1pdFIad2FsbGV0QW1vdW50UGVkZXJzZW5Db21taXQSNAoVZW5jV2FsbGV0QW1vdW50'
    'VlNoYXJlGAogASgMUhVlbmNXYWxsZXRBbW91bnRWU2hhcmUSVQoWd2FsbGV0QW1vdW50VlNoYX'
    'JlQmluZBgLIAEoCzIdLnFhZGVuYS5xYWRlbmEuVlNoYXJlQmluZERhdGFSFndhbGxldEFtb3Vu'
    'dFZTaGFyZUJpbmQSZgoZdHJhbnNwYXJlbnRXYWxsZXRBbW91bnRQQxgMIAEoCzIoLnFhZGVuYS'
    '5xYWRlbmEuRW5jcnlwdGFibGVQZWRlcnNlbkNvbW1pdFIZdHJhbnNwYXJlbnRXYWxsZXRBbW91'
    'bnRQQxIyChRhY2NlcHRDcmVkZW50aWFsVHlwZRgNIAEoCVIUYWNjZXB0Q3JlZGVudGlhbFR5cG'
    'U6DILnsCoHY3JlYXRvcg==');

@$core.Deprecated('Use msgCreateWalletResponseDescriptor instead')
const MsgCreateWalletResponse$json = {
  '1': 'MsgCreateWalletResponse',
};

/// Descriptor for `MsgCreateWalletResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateWalletResponseDescriptor = $convert.base64Decode(
    'ChdNc2dDcmVhdGVXYWxsZXRSZXNwb25zZQ==');

@$core.Deprecated('Use msgTransferFundsDescriptor instead')
const MsgTransferFunds$json = {
  '1': 'MsgTransferFunds',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'transactionID', '3': 2, '4': 1, '5': 9, '10': 'transactionID'},
    {'1': 'sourcePC', '3': 3, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'sourcePC'},
    {'1': 'hiddenTransferPC', '3': 4, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'hiddenTransferPC'},
    {'1': 'newSourcePC', '3': 5, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'newSourcePC'},
    {'1': 'encNewSourceWalletAmountVShare', '3': 6, '4': 1, '5': 12, '10': 'encNewSourceWalletAmountVShare'},
    {'1': 'newSourceWalletAmountVShareBind', '3': 7, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'newSourceWalletAmountVShareBind'},
    {'1': 'encNewDestinationWalletAmountVShare', '3': 8, '4': 1, '5': 12, '10': 'encNewDestinationWalletAmountVShare'},
    {'1': 'newDestinationWalletAmountVShareBind', '3': 9, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'newDestinationWalletAmountVShareBind'},
    {'1': 'encAnonTransferFundsVShare', '3': 10, '4': 1, '5': 12, '10': 'encAnonTransferFundsVShare'},
    {'1': 'anonTransferFundsVShareBind', '3': 11, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'anonTransferFundsVShareBind'},
    {'1': 'transparentAmount', '3': 12, '4': 1, '5': 11, '6': '.qadena.qadena.BInt', '10': 'transparentAmount'},
    {'1': 'tokenDenom', '3': 13, '4': 1, '5': 9, '10': 'tokenDenom'},
    {'1': 'hiddenTransferPCProof', '3': 14, '4': 1, '5': 11, '6': '.qadena.qadena.BRangeProof', '10': 'hiddenTransferPCProof'},
    {'1': 'newSourcePCProof', '3': 15, '4': 1, '5': 11, '6': '.qadena.qadena.BRangeProof', '10': 'newSourcePCProof'},
    {'1': 'encTransferFundsVShare', '3': 16, '4': 1, '5': 12, '10': 'encTransferFundsVShare'},
    {'1': 'transferFundsVShareBind', '3': 17, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'transferFundsVShareBind'},
  ],
  '7': {},
};

/// Descriptor for `MsgTransferFunds`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgTransferFundsDescriptor = $convert.base64Decode(
    'ChBNc2dUcmFuc2ZlckZ1bmRzEhgKB2NyZWF0b3IYASABKAlSB2NyZWF0b3ISJAoNdHJhbnNhY3'
    'Rpb25JRBgCIAEoCVINdHJhbnNhY3Rpb25JRBI6Cghzb3VyY2VQQxgDIAEoCzIeLnFhZGVuYS5x'
    'YWRlbmEuQlBlZGVyc2VuQ29tbWl0Ughzb3VyY2VQQxJKChBoaWRkZW5UcmFuc2ZlclBDGAQgAS'
    'gLMh4ucWFkZW5hLnFhZGVuYS5CUGVkZXJzZW5Db21taXRSEGhpZGRlblRyYW5zZmVyUEMSQAoL'
    'bmV3U291cmNlUEMYBSABKAsyHi5xYWRlbmEucWFkZW5hLkJQZWRlcnNlbkNvbW1pdFILbmV3U2'
    '91cmNlUEMSRgoeZW5jTmV3U291cmNlV2FsbGV0QW1vdW50VlNoYXJlGAYgASgMUh5lbmNOZXdT'
    'b3VyY2VXYWxsZXRBbW91bnRWU2hhcmUSZwofbmV3U291cmNlV2FsbGV0QW1vdW50VlNoYXJlQm'
    'luZBgHIAEoCzIdLnFhZGVuYS5xYWRlbmEuVlNoYXJlQmluZERhdGFSH25ld1NvdXJjZVdhbGxl'
    'dEFtb3VudFZTaGFyZUJpbmQSUAojZW5jTmV3RGVzdGluYXRpb25XYWxsZXRBbW91bnRWU2hhcm'
    'UYCCABKAxSI2VuY05ld0Rlc3RpbmF0aW9uV2FsbGV0QW1vdW50VlNoYXJlEnEKJG5ld0Rlc3Rp'
    'bmF0aW9uV2FsbGV0QW1vdW50VlNoYXJlQmluZBgJIAEoCzIdLnFhZGVuYS5xYWRlbmEuVlNoYX'
    'JlQmluZERhdGFSJG5ld0Rlc3RpbmF0aW9uV2FsbGV0QW1vdW50VlNoYXJlQmluZBI+ChplbmNB'
    'bm9uVHJhbnNmZXJGdW5kc1ZTaGFyZRgKIAEoDFIaZW5jQW5vblRyYW5zZmVyRnVuZHNWU2hhcm'
    'USXwobYW5vblRyYW5zZmVyRnVuZHNWU2hhcmVCaW5kGAsgASgLMh0ucWFkZW5hLnFhZGVuYS5W'
    'U2hhcmVCaW5kRGF0YVIbYW5vblRyYW5zZmVyRnVuZHNWU2hhcmVCaW5kEkEKEXRyYW5zcGFyZW'
    '50QW1vdW50GAwgASgLMhMucWFkZW5hLnFhZGVuYS5CSW50UhF0cmFuc3BhcmVudEFtb3VudBIe'
    'Cgp0b2tlbkRlbm9tGA0gASgJUgp0b2tlbkRlbm9tElAKFWhpZGRlblRyYW5zZmVyUENQcm9vZh'
    'gOIAEoCzIaLnFhZGVuYS5xYWRlbmEuQlJhbmdlUHJvb2ZSFWhpZGRlblRyYW5zZmVyUENQcm9v'
    'ZhJGChBuZXdTb3VyY2VQQ1Byb29mGA8gASgLMhoucWFkZW5hLnFhZGVuYS5CUmFuZ2VQcm9vZl'
    'IQbmV3U291cmNlUENQcm9vZhI2ChZlbmNUcmFuc2ZlckZ1bmRzVlNoYXJlGBAgASgMUhZlbmNU'
    'cmFuc2ZlckZ1bmRzVlNoYXJlElcKF3RyYW5zZmVyRnVuZHNWU2hhcmVCaW5kGBEgASgLMh0ucW'
    'FkZW5hLnFhZGVuYS5WU2hhcmVCaW5kRGF0YVIXdHJhbnNmZXJGdW5kc1ZTaGFyZUJpbmQ6DILn'
    'sCoHY3JlYXRvcg==');

@$core.Deprecated('Use msgTransferFundsResponseDescriptor instead')
const MsgTransferFundsResponse$json = {
  '1': 'MsgTransferFundsResponse',
};

/// Descriptor for `MsgTransferFundsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgTransferFundsResponseDescriptor = $convert.base64Decode(
    'ChhNc2dUcmFuc2ZlckZ1bmRzUmVzcG9uc2U=');

@$core.Deprecated('Use msgReceiveFundsDescriptor instead')
const MsgReceiveFunds$json = {
  '1': 'MsgReceiveFunds',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'transactionID', '3': 2, '4': 1, '5': 9, '10': 'transactionID'},
    {'1': 'destinationPC', '3': 3, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'destinationPC'},
    {'1': 'hiddenTransferPC', '3': 4, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'hiddenTransferPC'},
    {'1': 'newDestinationPC', '3': 5, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'newDestinationPC'},
    {'1': 'encNewDestinationWalletAmountVShare', '3': 6, '4': 1, '5': 12, '10': 'encNewDestinationWalletAmountVShare'},
    {'1': 'newDestinationWalletAmountVShareBind', '3': 7, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'newDestinationWalletAmountVShareBind'},
    {'1': 'encAnonReceiveFundsVShare', '3': 8, '4': 1, '5': 12, '10': 'encAnonReceiveFundsVShare'},
    {'1': 'anonReceiveFundsVShareBind', '3': 9, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'anonReceiveFundsVShareBind'},
    {'1': 'transparentAmount', '3': 10, '4': 1, '5': 11, '6': '.qadena.qadena.BInt', '10': 'transparentAmount'},
    {'1': 'tokenDenom', '3': 11, '4': 1, '5': 9, '10': 'tokenDenom'},
    {'1': 'hiddenTransferPCProof', '3': 12, '4': 1, '5': 11, '6': '.qadena.qadena.BRangeProof', '10': 'hiddenTransferPCProof'},
    {'1': 'newDestinationPCProof', '3': 13, '4': 1, '5': 11, '6': '.qadena.qadena.BRangeProof', '10': 'newDestinationPCProof'},
    {'1': 'encReceiveFundsVShare', '3': 14, '4': 1, '5': 12, '10': 'encReceiveFundsVShare'},
    {'1': 'receiveFundsVShareBind', '3': 15, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'receiveFundsVShareBind'},
  ],
  '7': {},
};

/// Descriptor for `MsgReceiveFunds`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgReceiveFundsDescriptor = $convert.base64Decode(
    'Cg9Nc2dSZWNlaXZlRnVuZHMSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchIkCg10cmFuc2FjdG'
    'lvbklEGAIgASgJUg10cmFuc2FjdGlvbklEEkQKDWRlc3RpbmF0aW9uUEMYAyABKAsyHi5xYWRl'
    'bmEucWFkZW5hLkJQZWRlcnNlbkNvbW1pdFINZGVzdGluYXRpb25QQxJKChBoaWRkZW5UcmFuc2'
    'ZlclBDGAQgASgLMh4ucWFkZW5hLnFhZGVuYS5CUGVkZXJzZW5Db21taXRSEGhpZGRlblRyYW5z'
    'ZmVyUEMSSgoQbmV3RGVzdGluYXRpb25QQxgFIAEoCzIeLnFhZGVuYS5xYWRlbmEuQlBlZGVyc2'
    'VuQ29tbWl0UhBuZXdEZXN0aW5hdGlvblBDElAKI2VuY05ld0Rlc3RpbmF0aW9uV2FsbGV0QW1v'
    'dW50VlNoYXJlGAYgASgMUiNlbmNOZXdEZXN0aW5hdGlvbldhbGxldEFtb3VudFZTaGFyZRJxCi'
    'RuZXdEZXN0aW5hdGlvbldhbGxldEFtb3VudFZTaGFyZUJpbmQYByABKAsyHS5xYWRlbmEucWFk'
    'ZW5hLlZTaGFyZUJpbmREYXRhUiRuZXdEZXN0aW5hdGlvbldhbGxldEFtb3VudFZTaGFyZUJpbm'
    'QSPAoZZW5jQW5vblJlY2VpdmVGdW5kc1ZTaGFyZRgIIAEoDFIZZW5jQW5vblJlY2VpdmVGdW5k'
    'c1ZTaGFyZRJdChphbm9uUmVjZWl2ZUZ1bmRzVlNoYXJlQmluZBgJIAEoCzIdLnFhZGVuYS5xYW'
    'RlbmEuVlNoYXJlQmluZERhdGFSGmFub25SZWNlaXZlRnVuZHNWU2hhcmVCaW5kEkEKEXRyYW5z'
    'cGFyZW50QW1vdW50GAogASgLMhMucWFkZW5hLnFhZGVuYS5CSW50UhF0cmFuc3BhcmVudEFtb3'
    'VudBIeCgp0b2tlbkRlbm9tGAsgASgJUgp0b2tlbkRlbm9tElAKFWhpZGRlblRyYW5zZmVyUENQ'
    'cm9vZhgMIAEoCzIaLnFhZGVuYS5xYWRlbmEuQlJhbmdlUHJvb2ZSFWhpZGRlblRyYW5zZmVyUE'
    'NQcm9vZhJQChVuZXdEZXN0aW5hdGlvblBDUHJvb2YYDSABKAsyGi5xYWRlbmEucWFkZW5hLkJS'
    'YW5nZVByb29mUhVuZXdEZXN0aW5hdGlvblBDUHJvb2YSNAoVZW5jUmVjZWl2ZUZ1bmRzVlNoYX'
    'JlGA4gASgMUhVlbmNSZWNlaXZlRnVuZHNWU2hhcmUSVQoWcmVjZWl2ZUZ1bmRzVlNoYXJlQmlu'
    'ZBgPIAEoCzIdLnFhZGVuYS5xYWRlbmEuVlNoYXJlQmluZERhdGFSFnJlY2VpdmVGdW5kc1ZTaG'
    'FyZUJpbmQ6DILnsCoHY3JlYXRvcg==');

@$core.Deprecated('Use msgReceiveFundsResponseDescriptor instead')
const MsgReceiveFundsResponse$json = {
  '1': 'MsgReceiveFundsResponse',
};

/// Descriptor for `MsgReceiveFundsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgReceiveFundsResponseDescriptor = $convert.base64Decode(
    'ChdNc2dSZWNlaXZlRnVuZHNSZXNwb25zZQ==');

@$core.Deprecated('Use msgDeploySmartContractDescriptor instead')
const MsgDeploySmartContract$json = {
  '1': 'MsgDeploySmartContract',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'srcWalletID', '3': 2, '4': 1, '5': 9, '10': 'srcWalletID'},
    {'1': 'smartContractHex', '3': 3, '4': 1, '5': 9, '10': 'smartContractHex'},
  ],
  '7': {},
};

/// Descriptor for `MsgDeploySmartContract`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDeploySmartContractDescriptor = $convert.base64Decode(
    'ChZNc2dEZXBsb3lTbWFydENvbnRyYWN0EhgKB2NyZWF0b3IYASABKAlSB2NyZWF0b3ISIAoLc3'
    'JjV2FsbGV0SUQYAiABKAlSC3NyY1dhbGxldElEEioKEHNtYXJ0Q29udHJhY3RIZXgYAyABKAlS'
    'EHNtYXJ0Q29udHJhY3RIZXg6DILnsCoHY3JlYXRvcg==');

@$core.Deprecated('Use msgDeploySmartContractResponseDescriptor instead')
const MsgDeploySmartContractResponse$json = {
  '1': 'MsgDeploySmartContractResponse',
};

/// Descriptor for `MsgDeploySmartContractResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDeploySmartContractResponseDescriptor = $convert.base64Decode(
    'Ch5Nc2dEZXBsb3lTbWFydENvbnRyYWN0UmVzcG9uc2U=');

@$core.Deprecated('Use msgExecuteSmartContractDescriptor instead')
const MsgExecuteSmartContract$json = {
  '1': 'MsgExecuteSmartContract',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'srcWalletID', '3': 2, '4': 1, '5': 9, '10': 'srcWalletID'},
    {'1': 'smartContractHex', '3': 3, '4': 1, '5': 9, '10': 'smartContractHex'},
  ],
  '7': {},
};

/// Descriptor for `MsgExecuteSmartContract`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgExecuteSmartContractDescriptor = $convert.base64Decode(
    'ChdNc2dFeGVjdXRlU21hcnRDb250cmFjdBIYCgdjcmVhdG9yGAEgASgJUgdjcmVhdG9yEiAKC3'
    'NyY1dhbGxldElEGAIgASgJUgtzcmNXYWxsZXRJRBIqChBzbWFydENvbnRyYWN0SGV4GAMgASgJ'
    'UhBzbWFydENvbnRyYWN0SGV4OgyC57AqB2NyZWF0b3I=');

@$core.Deprecated('Use msgExecuteSmartContractResponseDescriptor instead')
const MsgExecuteSmartContractResponse$json = {
  '1': 'MsgExecuteSmartContractResponse',
};

/// Descriptor for `MsgExecuteSmartContractResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgExecuteSmartContractResponseDescriptor = $convert.base64Decode(
    'Ch9Nc2dFeGVjdXRlU21hcnRDb250cmFjdFJlc3BvbnNl');

@$core.Deprecated('Use msgCreateCredentialDescriptor instead')
const MsgCreateCredential$json = {
  '1': 'MsgCreateCredential',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'credentialID', '3': 2, '4': 1, '5': 9, '10': 'credentialID'},
    {'1': 'credentialType', '3': 3, '4': 1, '5': 9, '10': 'credentialType'},
    {'1': 'credentialPedersenCommit', '3': 4, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'credentialPedersenCommit'},
    {'1': 'encCredentialInfoVShare', '3': 5, '4': 1, '5': 12, '10': 'encCredentialInfoVShare'},
    {'1': 'credentialInfoVShareBind', '3': 6, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'credentialInfoVShareBind'},
    {'1': 'encCredentialHashVShare', '3': 7, '4': 1, '5': 12, '10': 'encCredentialHashVShare'},
    {'1': 'credentialHashVShareBind', '3': 8, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'credentialHashVShareBind'},
    {'1': 'findCredentialPedersenCommit', '3': 9, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'findCredentialPedersenCommit'},
    {'1': 'eKYCAppWalletID', '3': 10, '4': 1, '5': 9, '10': 'eKYCAppWalletID'},
    {'1': 'referenceCredentialID', '3': 11, '4': 1, '5': 9, '10': 'referenceCredentialID'},
  ],
  '7': {},
};

/// Descriptor for `MsgCreateCredential`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateCredentialDescriptor = $convert.base64Decode(
    'ChNNc2dDcmVhdGVDcmVkZW50aWFsEhgKB2NyZWF0b3IYASABKAlSB2NyZWF0b3ISIgoMY3JlZG'
    'VudGlhbElEGAIgASgJUgxjcmVkZW50aWFsSUQSJgoOY3JlZGVudGlhbFR5cGUYAyABKAlSDmNy'
    'ZWRlbnRpYWxUeXBlEloKGGNyZWRlbnRpYWxQZWRlcnNlbkNvbW1pdBgEIAEoCzIeLnFhZGVuYS'
    '5xYWRlbmEuQlBlZGVyc2VuQ29tbWl0UhhjcmVkZW50aWFsUGVkZXJzZW5Db21taXQSOAoXZW5j'
    'Q3JlZGVudGlhbEluZm9WU2hhcmUYBSABKAxSF2VuY0NyZWRlbnRpYWxJbmZvVlNoYXJlElkKGG'
    'NyZWRlbnRpYWxJbmZvVlNoYXJlQmluZBgGIAEoCzIdLnFhZGVuYS5xYWRlbmEuVlNoYXJlQmlu'
    'ZERhdGFSGGNyZWRlbnRpYWxJbmZvVlNoYXJlQmluZBI4ChdlbmNDcmVkZW50aWFsSGFzaFZTaG'
    'FyZRgHIAEoDFIXZW5jQ3JlZGVudGlhbEhhc2hWU2hhcmUSWQoYY3JlZGVudGlhbEhhc2hWU2hh'
    'cmVCaW5kGAggASgLMh0ucWFkZW5hLnFhZGVuYS5WU2hhcmVCaW5kRGF0YVIYY3JlZGVudGlhbE'
    'hhc2hWU2hhcmVCaW5kEmIKHGZpbmRDcmVkZW50aWFsUGVkZXJzZW5Db21taXQYCSABKAsyHi5x'
    'YWRlbmEucWFkZW5hLkJQZWRlcnNlbkNvbW1pdFIcZmluZENyZWRlbnRpYWxQZWRlcnNlbkNvbW'
    '1pdBIoCg9lS1lDQXBwV2FsbGV0SUQYCiABKAlSD2VLWUNBcHBXYWxsZXRJRBI0ChVyZWZlcmVu'
    'Y2VDcmVkZW50aWFsSUQYCyABKAlSFXJlZmVyZW5jZUNyZWRlbnRpYWxJRDoMguewKgdjcmVhdG'
    '9y');

@$core.Deprecated('Use msgCreateCredentialResponseDescriptor instead')
const MsgCreateCredentialResponse$json = {
  '1': 'MsgCreateCredentialResponse',
};

/// Descriptor for `MsgCreateCredentialResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateCredentialResponseDescriptor = $convert.base64Decode(
    'ChtNc2dDcmVhdGVDcmVkZW50aWFsUmVzcG9uc2U=');

@$core.Deprecated('Use msgPioneerAddPublicKeyDescriptor instead')
const MsgPioneerAddPublicKey$json = {
  '1': 'MsgPioneerAddPublicKey',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'pubKID', '3': 2, '4': 1, '5': 9, '10': 'pubKID'},
    {'1': 'pubK', '3': 3, '4': 1, '5': 9, '10': 'pubK'},
    {'1': 'pubKType', '3': 4, '4': 1, '5': 9, '10': 'pubKType'},
    {'1': 'shares', '3': 5, '4': 3, '5': 11, '6': '.qadena.qadena.Share', '10': 'shares'},
    {'1': 'remoteReport', '3': 6, '4': 1, '5': 9, '10': 'remoteReport'},
  ],
  '7': {},
};

/// Descriptor for `MsgPioneerAddPublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgPioneerAddPublicKeyDescriptor = $convert.base64Decode(
    'ChZNc2dQaW9uZWVyQWRkUHVibGljS2V5EhgKB2NyZWF0b3IYASABKAlSB2NyZWF0b3ISFgoGcH'
    'ViS0lEGAIgASgJUgZwdWJLSUQSEgoEcHViSxgDIAEoCVIEcHViSxIaCghwdWJLVHlwZRgEIAEo'
    'CVIIcHViS1R5cGUSLAoGc2hhcmVzGAUgAygLMhQucWFkZW5hLnFhZGVuYS5TaGFyZVIGc2hhcm'
    'VzEiIKDHJlbW90ZVJlcG9ydBgGIAEoCVIMcmVtb3RlUmVwb3J0OgyC57AqB2NyZWF0b3I=');

@$core.Deprecated('Use msgPioneerAddPublicKeyResponseDescriptor instead')
const MsgPioneerAddPublicKeyResponse$json = {
  '1': 'MsgPioneerAddPublicKeyResponse',
};

/// Descriptor for `MsgPioneerAddPublicKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgPioneerAddPublicKeyResponseDescriptor = $convert.base64Decode(
    'Ch5Nc2dQaW9uZWVyQWRkUHVibGljS2V5UmVzcG9uc2U=');

@$core.Deprecated('Use msgPioneerUpdateIntervalPublicKeyIDDescriptor instead')
const MsgPioneerUpdateIntervalPublicKeyID$json = {
  '1': 'MsgPioneerUpdateIntervalPublicKeyID',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'pubKID', '3': 2, '4': 1, '5': 9, '10': 'pubKID'},
    {'1': 'nodeID', '3': 3, '4': 1, '5': 9, '10': 'nodeID'},
    {'1': 'nodeType', '3': 4, '4': 1, '5': 9, '10': 'nodeType'},
    {'1': 'externalIPAddress', '3': 5, '4': 1, '5': 9, '10': 'externalIPAddress'},
  ],
  '7': {},
};

/// Descriptor for `MsgPioneerUpdateIntervalPublicKeyID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgPioneerUpdateIntervalPublicKeyIDDescriptor = $convert.base64Decode(
    'CiNNc2dQaW9uZWVyVXBkYXRlSW50ZXJ2YWxQdWJsaWNLZXlJRBIYCgdjcmVhdG9yGAEgASgJUg'
    'djcmVhdG9yEhYKBnB1YktJRBgCIAEoCVIGcHViS0lEEhYKBm5vZGVJRBgDIAEoCVIGbm9kZUlE'
    'EhoKCG5vZGVUeXBlGAQgASgJUghub2RlVHlwZRIsChFleHRlcm5hbElQQWRkcmVzcxgFIAEoCV'
    'IRZXh0ZXJuYWxJUEFkZHJlc3M6DILnsCoHY3JlYXRvcg==');

@$core.Deprecated('Use msgPioneerUpdateIntervalPublicKeyIDResponseDescriptor instead')
const MsgPioneerUpdateIntervalPublicKeyIDResponse$json = {
  '1': 'MsgPioneerUpdateIntervalPublicKeyIDResponse',
};

/// Descriptor for `MsgPioneerUpdateIntervalPublicKeyIDResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgPioneerUpdateIntervalPublicKeyIDResponseDescriptor = $convert.base64Decode(
    'CitNc2dQaW9uZWVyVXBkYXRlSW50ZXJ2YWxQdWJsaWNLZXlJRFJlc3BvbnNl');

@$core.Deprecated('Use msgPioneerEnclaveExchangeDescriptor instead')
const MsgPioneerEnclaveExchange$json = {
  '1': 'MsgPioneerEnclaveExchange',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'msgType', '3': 2, '4': 1, '5': 9, '10': 'msgType'},
    {'1': 'msg', '3': 3, '4': 1, '5': 9, '10': 'msg'},
  ],
  '7': {},
};

/// Descriptor for `MsgPioneerEnclaveExchange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgPioneerEnclaveExchangeDescriptor = $convert.base64Decode(
    'ChlNc2dQaW9uZWVyRW5jbGF2ZUV4Y2hhbmdlEhgKB2NyZWF0b3IYASABKAlSB2NyZWF0b3ISGA'
    'oHbXNnVHlwZRgCIAEoCVIHbXNnVHlwZRIQCgNtc2cYAyABKAlSA21zZzoMguewKgdjcmVhdG9y');

@$core.Deprecated('Use msgPioneerEnclaveExchangeResponseDescriptor instead')
const MsgPioneerEnclaveExchangeResponse$json = {
  '1': 'MsgPioneerEnclaveExchangeResponse',
};

/// Descriptor for `MsgPioneerEnclaveExchangeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgPioneerEnclaveExchangeResponseDescriptor = $convert.base64Decode(
    'CiFNc2dQaW9uZWVyRW5jbGF2ZUV4Y2hhbmdlUmVzcG9uc2U=');

@$core.Deprecated('Use msgPioneerBroadcastSecretSharePrivateKeyDescriptor instead')
const MsgPioneerBroadcastSecretSharePrivateKey$json = {
  '1': 'MsgPioneerBroadcastSecretSharePrivateKey',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'privateKeys', '3': 2, '4': 3, '5': 11, '6': '.qadena.qadena.SecretSharePrivK', '10': 'privateKeys'},
    {'1': 'remoteReport', '3': 3, '4': 1, '5': 9, '10': 'remoteReport'},
  ],
  '7': {},
};

/// Descriptor for `MsgPioneerBroadcastSecretSharePrivateKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgPioneerBroadcastSecretSharePrivateKeyDescriptor = $convert.base64Decode(
    'CihNc2dQaW9uZWVyQnJvYWRjYXN0U2VjcmV0U2hhcmVQcml2YXRlS2V5EhgKB2NyZWF0b3IYAS'
    'ABKAlSB2NyZWF0b3ISQQoLcHJpdmF0ZUtleXMYAiADKAsyHy5xYWRlbmEucWFkZW5hLlNlY3Jl'
    'dFNoYXJlUHJpdktSC3ByaXZhdGVLZXlzEiIKDHJlbW90ZVJlcG9ydBgDIAEoCVIMcmVtb3RlUm'
    'Vwb3J0OgyC57AqB2NyZWF0b3I=');

@$core.Deprecated('Use msgPioneerBroadcastSecretSharePrivateKeyResponseDescriptor instead')
const MsgPioneerBroadcastSecretSharePrivateKeyResponse$json = {
  '1': 'MsgPioneerBroadcastSecretSharePrivateKeyResponse',
};

/// Descriptor for `MsgPioneerBroadcastSecretSharePrivateKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgPioneerBroadcastSecretSharePrivateKeyResponseDescriptor = $convert.base64Decode(
    'CjBNc2dQaW9uZWVyQnJvYWRjYXN0U2VjcmV0U2hhcmVQcml2YXRlS2V5UmVzcG9uc2U=');

@$core.Deprecated('Use msgProtectPrivateKeyDescriptor instead')
const MsgProtectPrivateKey$json = {
  '1': 'MsgProtectPrivateKey',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'threshold', '3': 2, '4': 1, '5': 5, '10': 'threshold'},
    {'1': 'recoverShare', '3': 3, '4': 3, '5': 11, '6': '.qadena.qadena.RecoverShare', '10': 'recoverShare'},
  ],
  '7': {},
};

/// Descriptor for `MsgProtectPrivateKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgProtectPrivateKeyDescriptor = $convert.base64Decode(
    'ChRNc2dQcm90ZWN0UHJpdmF0ZUtleRIYCgdjcmVhdG9yGAEgASgJUgdjcmVhdG9yEhwKCXRocm'
    'VzaG9sZBgCIAEoBVIJdGhyZXNob2xkEj8KDHJlY292ZXJTaGFyZRgDIAMoCzIbLnFhZGVuYS5x'
    'YWRlbmEuUmVjb3ZlclNoYXJlUgxyZWNvdmVyU2hhcmU6DILnsCoHY3JlYXRvcg==');

@$core.Deprecated('Use msgProtectPrivateKeyResponseDescriptor instead')
const MsgProtectPrivateKeyResponse$json = {
  '1': 'MsgProtectPrivateKeyResponse',
};

/// Descriptor for `MsgProtectPrivateKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgProtectPrivateKeyResponseDescriptor = $convert.base64Decode(
    'ChxNc2dQcm90ZWN0UHJpdmF0ZUtleVJlc3BvbnNl');

@$core.Deprecated('Use msgSignRecoverPrivateKeyDescriptor instead')
const MsgSignRecoverPrivateKey$json = {
  '1': 'MsgSignRecoverPrivateKey',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'encDestinationEWalletIDVShare', '3': 2, '4': 1, '5': 12, '10': 'encDestinationEWalletIDVShare'},
    {'1': 'destinationEWalletIDVShareBind', '3': 3, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'destinationEWalletIDVShareBind'},
    {'1': 'recoverShare', '3': 4, '4': 1, '5': 11, '6': '.qadena.qadena.RecoverShare', '10': 'recoverShare'},
  ],
  '7': {},
};

/// Descriptor for `MsgSignRecoverPrivateKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgSignRecoverPrivateKeyDescriptor = $convert.base64Decode(
    'ChhNc2dTaWduUmVjb3ZlclByaXZhdGVLZXkSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchJECh'
    '1lbmNEZXN0aW5hdGlvbkVXYWxsZXRJRFZTaGFyZRgCIAEoDFIdZW5jRGVzdGluYXRpb25FV2Fs'
    'bGV0SURWU2hhcmUSZQoeZGVzdGluYXRpb25FV2FsbGV0SURWU2hhcmVCaW5kGAMgASgLMh0ucW'
    'FkZW5hLnFhZGVuYS5WU2hhcmVCaW5kRGF0YVIeZGVzdGluYXRpb25FV2FsbGV0SURWU2hhcmVC'
    'aW5kEj8KDHJlY292ZXJTaGFyZRgEIAEoCzIbLnFhZGVuYS5xYWRlbmEuUmVjb3ZlclNoYXJlUg'
    'xyZWNvdmVyU2hhcmU6DILnsCoHY3JlYXRvcg==');

@$core.Deprecated('Use msgSignRecoverPrivateKeyResponseDescriptor instead')
const MsgSignRecoverPrivateKeyResponse$json = {
  '1': 'MsgSignRecoverPrivateKeyResponse',
};

/// Descriptor for `MsgSignRecoverPrivateKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgSignRecoverPrivateKeyResponseDescriptor = $convert.base64Decode(
    'CiBNc2dTaWduUmVjb3ZlclByaXZhdGVLZXlSZXNwb25zZQ==');

@$core.Deprecated('Use msgClaimCredentialDescriptor instead')
const MsgClaimCredential$json = {
  '1': 'MsgClaimCredential',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'credentialID', '3': 2, '4': 1, '5': 9, '10': 'credentialID'},
    {'1': 'credentialType', '3': 3, '4': 1, '5': 9, '10': 'credentialType'},
    {'1': 'recoverKey', '3': 4, '4': 1, '5': 8, '10': 'recoverKey'},
    {'1': 'encClaimCredentialExtraParmsVShare', '3': 5, '4': 1, '5': 12, '10': 'encClaimCredentialExtraParmsVShare'},
    {'1': 'claimCredentialExtraParmsVShareBind', '3': 6, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'claimCredentialExtraParmsVShareBind'},
  ],
  '7': {},
};

/// Descriptor for `MsgClaimCredential`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgClaimCredentialDescriptor = $convert.base64Decode(
    'ChJNc2dDbGFpbUNyZWRlbnRpYWwSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchIiCgxjcmVkZW'
    '50aWFsSUQYAiABKAlSDGNyZWRlbnRpYWxJRBImCg5jcmVkZW50aWFsVHlwZRgDIAEoCVIOY3Jl'
    'ZGVudGlhbFR5cGUSHgoKcmVjb3ZlcktleRgEIAEoCFIKcmVjb3ZlcktleRJOCiJlbmNDbGFpbU'
    'NyZWRlbnRpYWxFeHRyYVBhcm1zVlNoYXJlGAUgASgMUiJlbmNDbGFpbUNyZWRlbnRpYWxFeHRy'
    'YVBhcm1zVlNoYXJlEm8KI2NsYWltQ3JlZGVudGlhbEV4dHJhUGFybXNWU2hhcmVCaW5kGAYgAS'
    'gLMh0ucWFkZW5hLnFhZGVuYS5WU2hhcmVCaW5kRGF0YVIjY2xhaW1DcmVkZW50aWFsRXh0cmFQ'
    'YXJtc1ZTaGFyZUJpbmQ6DILnsCoHY3JlYXRvcg==');

@$core.Deprecated('Use msgClaimCredentialResponseDescriptor instead')
const MsgClaimCredentialResponse$json = {
  '1': 'MsgClaimCredentialResponse',
};

/// Descriptor for `MsgClaimCredentialResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgClaimCredentialResponseDescriptor = $convert.base64Decode(
    'ChpNc2dDbGFpbUNyZWRlbnRpYWxSZXNwb25zZQ==');

@$core.Deprecated('Use msgCreateBulkCredentialsDescriptor instead')
const MsgCreateBulkCredentials$json = {
  '1': 'MsgCreateBulkCredentials',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'credentialType', '3': 2, '4': 1, '5': 9, '10': 'credentialType'},
    {'1': 'credentialInfoVShareBind', '3': 3, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'credentialInfoVShareBind'},
    {'1': 'credentialHashVShareBind', '3': 4, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'credentialHashVShareBind'},
    {'1': 'eKYCAppWalletID', '3': 5, '4': 1, '5': 9, '10': 'eKYCAppWalletID'},
    {'1': 'bulkCredentials', '3': 6, '4': 3, '5': 11, '6': '.qadena.qadena.BulkCredential', '10': 'bulkCredentials'},
  ],
  '7': {},
};

/// Descriptor for `MsgCreateBulkCredentials`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateBulkCredentialsDescriptor = $convert.base64Decode(
    'ChhNc2dDcmVhdGVCdWxrQ3JlZGVudGlhbHMSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchImCg'
    '5jcmVkZW50aWFsVHlwZRgCIAEoCVIOY3JlZGVudGlhbFR5cGUSWQoYY3JlZGVudGlhbEluZm9W'
    'U2hhcmVCaW5kGAMgASgLMh0ucWFkZW5hLnFhZGVuYS5WU2hhcmVCaW5kRGF0YVIYY3JlZGVudG'
    'lhbEluZm9WU2hhcmVCaW5kElkKGGNyZWRlbnRpYWxIYXNoVlNoYXJlQmluZBgEIAEoCzIdLnFh'
    'ZGVuYS5xYWRlbmEuVlNoYXJlQmluZERhdGFSGGNyZWRlbnRpYWxIYXNoVlNoYXJlQmluZBIoCg'
    '9lS1lDQXBwV2FsbGV0SUQYBSABKAlSD2VLWUNBcHBXYWxsZXRJRBJHCg9idWxrQ3JlZGVudGlh'
    'bHMYBiADKAsyHS5xYWRlbmEucWFkZW5hLkJ1bGtDcmVkZW50aWFsUg9idWxrQ3JlZGVudGlhbH'
    'M6DILnsCoHY3JlYXRvcg==');

@$core.Deprecated('Use msgCreateBulkCredentialsResponseDescriptor instead')
const MsgCreateBulkCredentialsResponse$json = {
  '1': 'MsgCreateBulkCredentialsResponse',
};

/// Descriptor for `MsgCreateBulkCredentialsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateBulkCredentialsResponseDescriptor = $convert.base64Decode(
    'CiBNc2dDcmVhdGVCdWxrQ3JlZGVudGlhbHNSZXNwb25zZQ==');

