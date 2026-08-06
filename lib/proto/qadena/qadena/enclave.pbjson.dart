//
//  Generated code. Do not modify.
//  source: qadena/qadena/enclave.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use helloRequestDescriptor instead')
const HelloRequest$json = {
  '1': 'HelloRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `HelloRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloRequestDescriptor = $convert.base64Decode(
    'CgxIZWxsb1JlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use helloReplyDescriptor instead')
const HelloReply$json = {
  '1': 'HelloReply',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `HelloReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloReplyDescriptor = $convert.base64Decode(
    'CgpIZWxsb1JlcGx5EhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use msgEndBlockDescriptor instead')
const MsgEndBlock$json = {
  '1': 'MsgEndBlock',
};

/// Descriptor for `MsgEndBlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgEndBlockDescriptor = $convert.base64Decode(
    'CgtNc2dFbmRCbG9jaw==');

@$core.Deprecated('Use endBlockReplyDescriptor instead')
const EndBlockReply$json = {
  '1': 'EndBlockReply',
};

/// Descriptor for `EndBlockReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endBlockReplyDescriptor = $convert.base64Decode(
    'Cg1FbmRCbG9ja1JlcGx5');

@$core.Deprecated('Use queryGetSubWalletIDByOriginalWalletIDResponseDescriptor instead')
const QueryGetSubWalletIDByOriginalWalletIDResponse$json = {
  '1': 'QueryGetSubWalletIDByOriginalWalletIDResponse',
  '2': [
    {'1': 'subWalletID', '3': 1, '4': 1, '5': 9, '10': 'subWalletID'},
  ],
};

/// Descriptor for `QueryGetSubWalletIDByOriginalWalletIDResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetSubWalletIDByOriginalWalletIDResponseDescriptor = $convert.base64Decode(
    'Ci1RdWVyeUdldFN1YldhbGxldElEQnlPcmlnaW5hbFdhbGxldElEUmVzcG9uc2USIAoLc3ViV2'
    'FsbGV0SUQYASABKAlSC3N1YldhbGxldElE');

@$core.Deprecated('Use storeHashDescriptor instead')
const StoreHash$json = {
  '1': 'StoreHash',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'hash', '3': 2, '4': 1, '5': 9, '10': 'hash'},
  ],
};

/// Descriptor for `StoreHash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeHashDescriptor = $convert.base64Decode(
    'CglTdG9yZUhhc2gSEAoDa2V5GAEgASgJUgNrZXkSEgoEaGFzaBgCIAEoCVIEaGFzaA==');

@$core.Deprecated('Use msgGetStoreHashDescriptor instead')
const MsgGetStoreHash$json = {
  '1': 'MsgGetStoreHash',
};

/// Descriptor for `MsgGetStoreHash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgGetStoreHashDescriptor = $convert.base64Decode(
    'Cg9Nc2dHZXRTdG9yZUhhc2g=');

@$core.Deprecated('Use getStoreHashReplyDescriptor instead')
const GetStoreHashReply$json = {
  '1': 'GetStoreHashReply',
  '2': [
    {'1': 'hashes', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.StoreHash', '10': 'hashes'},
  ],
};

/// Descriptor for `GetStoreHashReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStoreHashReplyDescriptor = $convert.base64Decode(
    'ChFHZXRTdG9yZUhhc2hSZXBseRIwCgZoYXNoZXMYASADKAsyGC5xYWRlbmEucWFkZW5hLlN0b3'
    'JlSGFzaFIGaGFzaGVz');

@$core.Deprecated('Use msgAddAsValidatorDescriptor instead')
const MsgAddAsValidator$json = {
  '1': 'MsgAddAsValidator',
};

/// Descriptor for `MsgAddAsValidator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgAddAsValidatorDescriptor = $convert.base64Decode(
    'ChFNc2dBZGRBc1ZhbGlkYXRvcg==');

@$core.Deprecated('Use msgSyncEnclaveDescriptor instead')
const MsgSyncEnclave$json = {
  '1': 'MsgSyncEnclave',
  '2': [
    {'1': 'pioneerID', '3': 1, '4': 1, '5': 9, '10': 'pioneerID'},
    {'1': 'externalAddress', '3': 2, '4': 1, '5': 9, '10': 'externalAddress'},
    {'1': 'pioneerArmorPrivK', '3': 3, '4': 1, '5': 9, '10': 'pioneerArmorPrivK'},
    {'1': 'pioneerArmorPassPhrase', '3': 4, '4': 1, '5': 9, '10': 'pioneerArmorPassPhrase'},
    {'1': 'seedNode', '3': 5, '4': 1, '5': 9, '10': 'seedNode'},
  ],
};

/// Descriptor for `MsgSyncEnclave`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgSyncEnclaveDescriptor = $convert.base64Decode(
    'Cg5Nc2dTeW5jRW5jbGF2ZRIcCglwaW9uZWVySUQYASABKAlSCXBpb25lZXJJRBIoCg9leHRlcm'
    '5hbEFkZHJlc3MYAiABKAlSD2V4dGVybmFsQWRkcmVzcxIsChFwaW9uZWVyQXJtb3JQcml2SxgD'
    'IAEoCVIRcGlvbmVlckFybW9yUHJpdksSNgoWcGlvbmVlckFybW9yUGFzc1BocmFzZRgEIAEoCV'
    'IWcGlvbmVlckFybW9yUGFzc1BocmFzZRIaCghzZWVkTm9kZRgFIAEoCVIIc2VlZE5vZGU=');

@$core.Deprecated('Use msgUpgradeEnclaveDescriptor instead')
const MsgUpgradeEnclave$json = {
  '1': 'MsgUpgradeEnclave',
  '2': [
    {'1': 'remoteReport', '3': 1, '4': 1, '5': 12, '10': 'remoteReport'},
    {'1': 'enclavePubK', '3': 2, '4': 1, '5': 9, '10': 'enclavePubK'},
  ],
};

/// Descriptor for `MsgUpgradeEnclave`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpgradeEnclaveDescriptor = $convert.base64Decode(
    'ChFNc2dVcGdyYWRlRW5jbGF2ZRIiCgxyZW1vdGVSZXBvcnQYASABKAxSDHJlbW90ZVJlcG9ydB'
    'IgCgtlbmNsYXZlUHViSxgCIAEoCVILZW5jbGF2ZVB1Yks=');

@$core.Deprecated('Use upgradeEnclaveReplyDescriptor instead')
const UpgradeEnclaveReply$json = {
  '1': 'UpgradeEnclaveReply',
  '2': [
    {'1': 'remoteReport', '3': 1, '4': 1, '5': 12, '10': 'remoteReport'},
    {'1': 'encEnclavePrivateStateEnclavePubK', '3': 2, '4': 1, '5': 12, '10': 'encEnclavePrivateStateEnclavePubK'},
  ],
};

/// Descriptor for `UpgradeEnclaveReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upgradeEnclaveReplyDescriptor = $convert.base64Decode(
    'ChNVcGdyYWRlRW5jbGF2ZVJlcGx5EiIKDHJlbW90ZVJlcG9ydBgBIAEoDFIMcmVtb3RlUmVwb3'
    'J0EkwKIWVuY0VuY2xhdmVQcml2YXRlU3RhdGVFbmNsYXZlUHViSxgCIAEoDFIhZW5jRW5jbGF2'
    'ZVByaXZhdGVTdGF0ZUVuY2xhdmVQdWJL');

@$core.Deprecated('Use msgExportPrivateKeyDescriptor instead')
const MsgExportPrivateKey$json = {
  '1': 'MsgExportPrivateKey',
  '2': [
    {'1': 'pubKID', '3': 1, '4': 1, '5': 9, '10': 'pubKID'},
  ],
};

/// Descriptor for `MsgExportPrivateKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgExportPrivateKeyDescriptor = $convert.base64Decode(
    'ChNNc2dFeHBvcnRQcml2YXRlS2V5EhYKBnB1YktJRBgBIAEoCVIGcHViS0lE');

@$core.Deprecated('Use msgRemovePrivateKeyDescriptor instead')
const MsgRemovePrivateKey$json = {
  '1': 'MsgRemovePrivateKey',
  '2': [
    {'1': 'pubKID', '3': 1, '4': 1, '5': 9, '10': 'pubKID'},
  ],
};

/// Descriptor for `MsgRemovePrivateKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRemovePrivateKeyDescriptor = $convert.base64Decode(
    'ChNNc2dSZW1vdmVQcml2YXRlS2V5EhYKBnB1YktJRBgBIAEoCVIGcHViS0lE');

@$core.Deprecated('Use msgExportPrivateStateDescriptor instead')
const MsgExportPrivateState$json = {
  '1': 'MsgExportPrivateState',
};

/// Descriptor for `MsgExportPrivateState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgExportPrivateStateDescriptor = $convert.base64Decode(
    'ChVNc2dFeHBvcnRQcml2YXRlU3RhdGU=');

@$core.Deprecated('Use msgUpdateSSIntervalKeyDescriptor instead')
const MsgUpdateSSIntervalKey$json = {
  '1': 'MsgUpdateSSIntervalKey',
};

/// Descriptor for `MsgUpdateSSIntervalKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateSSIntervalKeyDescriptor = $convert.base64Decode(
    'ChZNc2dVcGRhdGVTU0ludGVydmFsS2V5');

@$core.Deprecated('Use updateSSIntervalKeyReplyDescriptor instead')
const UpdateSSIntervalKeyReply$json = {
  '1': 'UpdateSSIntervalKeyReply',
};

/// Descriptor for `UpdateSSIntervalKeyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSSIntervalKeyReplyDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVTU0ludGVydmFsS2V5UmVwbHk=');

@$core.Deprecated('Use removePrivateKeyReplyDescriptor instead')
const RemovePrivateKeyReply$json = {
  '1': 'RemovePrivateKeyReply',
};

/// Descriptor for `RemovePrivateKeyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removePrivateKeyReplyDescriptor = $convert.base64Decode(
    'ChVSZW1vdmVQcml2YXRlS2V5UmVwbHk=');

@$core.Deprecated('Use exportPrivateKeyReplyDescriptor instead')
const ExportPrivateKeyReply$json = {
  '1': 'ExportPrivateKeyReply',
  '2': [
    {'1': 'privK', '3': 1, '4': 1, '5': 9, '10': 'privK'},
  ],
};

/// Descriptor for `ExportPrivateKeyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportPrivateKeyReplyDescriptor = $convert.base64Decode(
    'ChVFeHBvcnRQcml2YXRlS2V5UmVwbHkSFAoFcHJpdksYASABKAlSBXByaXZL');

@$core.Deprecated('Use exportPrivateStateReplyDescriptor instead')
const ExportPrivateStateReply$json = {
  '1': 'ExportPrivateStateReply',
  '2': [
    {'1': 'state', '3': 1, '4': 1, '5': 9, '10': 'state'},
  ],
};

/// Descriptor for `ExportPrivateStateReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportPrivateStateReplyDescriptor = $convert.base64Decode(
    'ChdFeHBvcnRQcml2YXRlU3RhdGVSZXBseRIUCgVzdGF0ZRgBIAEoCVIFc3RhdGU=');

@$core.Deprecated('Use validateAuthenticateServiceProviderRequestDescriptor instead')
const ValidateAuthenticateServiceProviderRequest$json = {
  '1': 'ValidateAuthenticateServiceProviderRequest',
  '2': [
    {'1': 'pubKID', '3': 1, '4': 1, '5': 9, '10': 'pubKID'},
    {'1': 'serviceProviderType', '3': 2, '4': 1, '5': 9, '10': 'serviceProviderType'},
  ],
};

/// Descriptor for `ValidateAuthenticateServiceProviderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateAuthenticateServiceProviderRequestDescriptor = $convert.base64Decode(
    'CipWYWxpZGF0ZUF1dGhlbnRpY2F0ZVNlcnZpY2VQcm92aWRlclJlcXVlc3QSFgoGcHViS0lEGA'
    'EgASgJUgZwdWJLSUQSMAoTc2VydmljZVByb3ZpZGVyVHlwZRgCIAEoCVITc2VydmljZVByb3Zp'
    'ZGVyVHlwZQ==');

@$core.Deprecated('Use validateAuthenticateServiceProviderReplyDescriptor instead')
const ValidateAuthenticateServiceProviderReply$json = {
  '1': 'ValidateAuthenticateServiceProviderReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `ValidateAuthenticateServiceProviderReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateAuthenticateServiceProviderReplyDescriptor = $convert.base64Decode(
    'CihWYWxpZGF0ZUF1dGhlbnRpY2F0ZVNlcnZpY2VQcm92aWRlclJlcGx5EhYKBnN0YXR1cxgBIA'
    'EoCFIGc3RhdHVz');

@$core.Deprecated('Use msgInitEnclaveDescriptor instead')
const MsgInitEnclave$json = {
  '1': 'MsgInitEnclave',
  '2': [
    {'1': 'pioneerID', '3': 1, '4': 1, '5': 9, '10': 'pioneerID'},
    {'1': 'externalAddress', '3': 2, '4': 1, '5': 9, '10': 'externalAddress'},
    {'1': 'pioneerArmorPrivK', '3': 3, '4': 1, '5': 9, '10': 'pioneerArmorPrivK'},
    {'1': 'pioneerArmorPassPhrase', '3': 4, '4': 1, '5': 9, '10': 'pioneerArmorPassPhrase'},
    {'1': 'jarID', '3': 5, '4': 1, '5': 9, '10': 'jarID'},
    {'1': 'regulatorID', '3': 6, '4': 1, '5': 9, '10': 'regulatorID'},
    {'1': 'signerID', '3': 7, '4': 1, '5': 9, '10': 'signerID'},
    {'1': 'uniqueID', '3': 8, '4': 1, '5': 9, '10': 'uniqueID'},
  ],
};

/// Descriptor for `MsgInitEnclave`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgInitEnclaveDescriptor = $convert.base64Decode(
    'Cg5Nc2dJbml0RW5jbGF2ZRIcCglwaW9uZWVySUQYASABKAlSCXBpb25lZXJJRBIoCg9leHRlcm'
    '5hbEFkZHJlc3MYAiABKAlSD2V4dGVybmFsQWRkcmVzcxIsChFwaW9uZWVyQXJtb3JQcml2SxgD'
    'IAEoCVIRcGlvbmVlckFybW9yUHJpdksSNgoWcGlvbmVlckFybW9yUGFzc1BocmFzZRgEIAEoCV'
    'IWcGlvbmVlckFybW9yUGFzc1BocmFzZRIUCgVqYXJJRBgFIAEoCVIFamFySUQSIAoLcmVndWxh'
    'dG9ySUQYBiABKAlSC3JlZ3VsYXRvcklEEhoKCHNpZ25lcklEGAcgASgJUghzaWduZXJJRBIaCg'
    'h1bmlxdWVJRBgIIAEoCVIIdW5pcXVlSUQ=');

@$core.Deprecated('Use vShareSignatoryDescriptor instead')
const VShareSignatory$json = {
  '1': 'VShareSignatory',
  '2': [
    {'1': 'encSignatoryVShare', '3': 1, '4': 1, '5': 12, '10': 'encSignatoryVShare'},
    {'1': 'signatoryVShareBind', '3': 2, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'signatoryVShareBind'},
    {'1': 'time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'time'},
    {'1': 'WalletID', '3': 4, '4': 1, '5': 9, '10': 'WalletID'},
  ],
};

/// Descriptor for `VShareSignatory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vShareSignatoryDescriptor = $convert.base64Decode(
    'Cg9WU2hhcmVTaWduYXRvcnkSLgoSZW5jU2lnbmF0b3J5VlNoYXJlGAEgASgMUhJlbmNTaWduYX'
    'RvcnlWU2hhcmUSTwoTc2lnbmF0b3J5VlNoYXJlQmluZBgCIAEoCzIdLnFhZGVuYS5xYWRlbmEu'
    'VlNoYXJlQmluZERhdGFSE3NpZ25hdG9yeVZTaGFyZUJpbmQSOAoEdGltZRgDIAEoCzIaLmdvb2'
    'dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCCMjeHwCQ3x8BUgR0aW1lEhoKCFdhbGxldElEGAQgASgJ'
    'UghXYWxsZXRJRA==');

@$core.Deprecated('Use validateAuthorizedSignerRequestDescriptor instead')
const ValidateAuthorizedSignerRequest$json = {
  '1': 'ValidateAuthorizedSignerRequest',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'requestingSignatory', '3': 2, '4': 1, '5': 11, '6': '.qadena.qadena.VShareSignatory', '10': 'requestingSignatory'},
    {'1': 'requiredSignatory', '3': 3, '4': 3, '5': 11, '6': '.qadena.qadena.VShareSignatory', '10': 'requiredSignatory'},
    {'1': 'completedSignatory', '3': 4, '4': 3, '5': 11, '6': '.qadena.qadena.VShareSignatory', '10': 'completedSignatory'},
  ],
};

/// Descriptor for `ValidateAuthorizedSignerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateAuthorizedSignerRequestDescriptor = $convert.base64Decode(
    'Ch9WYWxpZGF0ZUF1dGhvcml6ZWRTaWduZXJSZXF1ZXN0EhgKB2NyZWF0b3IYASABKAlSB2NyZW'
    'F0b3ISUAoTcmVxdWVzdGluZ1NpZ25hdG9yeRgCIAEoCzIeLnFhZGVuYS5xYWRlbmEuVlNoYXJl'
    'U2lnbmF0b3J5UhNyZXF1ZXN0aW5nU2lnbmF0b3J5EkwKEXJlcXVpcmVkU2lnbmF0b3J5GAMgAy'
    'gLMh4ucWFkZW5hLnFhZGVuYS5WU2hhcmVTaWduYXRvcnlSEXJlcXVpcmVkU2lnbmF0b3J5Ek4K'
    'EmNvbXBsZXRlZFNpZ25hdG9yeRgEIAMoCzIeLnFhZGVuYS5xYWRlbmEuVlNoYXJlU2lnbmF0b3'
    'J5UhJjb21wbGV0ZWRTaWduYXRvcnk=');

@$core.Deprecated('Use validateAuthorizedSignerReplyDescriptor instead')
const ValidateAuthorizedSignerReply$json = {
  '1': 'ValidateAuthorizedSignerReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `ValidateAuthorizedSignerReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateAuthorizedSignerReplyDescriptor = $convert.base64Decode(
    'Ch1WYWxpZGF0ZUF1dGhvcml6ZWRTaWduZXJSZXBseRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cw'
    '==');

@$core.Deprecated('Use validateAuthorizedSignatoryRequestDescriptor instead')
const ValidateAuthorizedSignatoryRequest$json = {
  '1': 'ValidateAuthorizedSignatoryRequest',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'signatory', '3': 2, '4': 1, '5': 11, '6': '.qadena.qadena.VShareSignatory', '10': 'signatory'},
    {'1': 'currentSignatory', '3': 3, '4': 3, '5': 11, '6': '.qadena.qadena.VShareSignatory', '10': 'currentSignatory'},
  ],
};

/// Descriptor for `ValidateAuthorizedSignatoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateAuthorizedSignatoryRequestDescriptor = $convert.base64Decode(
    'CiJWYWxpZGF0ZUF1dGhvcml6ZWRTaWduYXRvcnlSZXF1ZXN0EhgKB2NyZWF0b3IYASABKAlSB2'
    'NyZWF0b3ISPAoJc2lnbmF0b3J5GAIgASgLMh4ucWFkZW5hLnFhZGVuYS5WU2hhcmVTaWduYXRv'
    'cnlSCXNpZ25hdG9yeRJKChBjdXJyZW50U2lnbmF0b3J5GAMgAygLMh4ucWFkZW5hLnFhZGVuYS'
    '5WU2hhcmVTaWduYXRvcnlSEGN1cnJlbnRTaWduYXRvcnk=');

@$core.Deprecated('Use validateAuthorizedSignatoryReplyDescriptor instead')
const ValidateAuthorizedSignatoryReply$json = {
  '1': 'ValidateAuthorizedSignatoryReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `ValidateAuthorizedSignatoryReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateAuthorizedSignatoryReplyDescriptor = $convert.base64Decode(
    'CiBWYWxpZGF0ZUF1dGhvcml6ZWRTaWduYXRvcnlSZXBseRIWCgZzdGF0dXMYASABKAhSBnN0YX'
    'R1cw==');

@$core.Deprecated('Use msgUpdateHeightDescriptor instead')
const MsgUpdateHeight$json = {
  '1': 'MsgUpdateHeight',
  '2': [
    {'1': 'height', '3': 1, '4': 1, '5': 3, '10': 'height'},
    {'1': 'isProposer', '3': 2, '4': 1, '5': 8, '10': 'isProposer'},
  ],
};

/// Descriptor for `MsgUpdateHeight`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateHeightDescriptor = $convert.base64Decode(
    'Cg9Nc2dVcGRhdGVIZWlnaHQSFgoGaGVpZ2h0GAEgASgDUgZoZWlnaHQSHgoKaXNQcm9wb3Nlch'
    'gCIAEoCFIKaXNQcm9wb3Nlcg==');

@$core.Deprecated('Use msgScanTransactionsDescriptor instead')
const MsgScanTransactions$json = {
  '1': 'MsgScanTransactions',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'timestamp'},
    {'1': 'height', '3': 2, '4': 1, '5': 3, '10': 'height'},
    {'1': 'msg', '3': 3, '4': 1, '5': 11, '6': '.qadena.qadena.MsgTransferFunds', '10': 'msg'},
    {'1': 'exchangerate', '3': 4, '4': 1, '5': 9, '10': 'exchangerate'},
    {'1': 'params', '3': 5, '4': 1, '5': 11, '6': '.qadena.qadena.Params', '8': {}, '10': 'params'},
    {'1': 'countryThresholds', '3': 6, '4': 3, '5': 11, '6': '.qadena.qadena.ScanCountryThreshold', '10': 'countryThresholds'},
    {'1': 'defaultThresholdAttoUSD', '3': 7, '4': 1, '5': 9, '10': 'defaultThresholdAttoUSD'},
  ],
};

/// Descriptor for `MsgScanTransactions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgScanTransactionsDescriptor = $convert.base64Decode(
    'ChNNc2dTY2FuVHJhbnNhY3Rpb25zEkIKCXRpbWVzdGFtcBgBIAEoCzIaLmdvb2dsZS5wcm90b2'
    'J1Zi5UaW1lc3RhbXBCCMjeHwCQ3x8BUgl0aW1lc3RhbXASFgoGaGVpZ2h0GAIgASgDUgZoZWln'
    'aHQSMQoDbXNnGAMgASgLMh8ucWFkZW5hLnFhZGVuYS5Nc2dUcmFuc2ZlckZ1bmRzUgNtc2cSIg'
    'oMZXhjaGFuZ2VyYXRlGAQgASgJUgxleGNoYW5nZXJhdGUSMwoGcGFyYW1zGAUgASgLMhUucWFk'
    'ZW5hLnFhZGVuYS5QYXJhbXNCBMjeHwBSBnBhcmFtcxJRChFjb3VudHJ5VGhyZXNob2xkcxgGIA'
    'MoCzIjLnFhZGVuYS5xYWRlbmEuU2NhbkNvdW50cnlUaHJlc2hvbGRSEWNvdW50cnlUaHJlc2hv'
    'bGRzEjgKF2RlZmF1bHRUaHJlc2hvbGRBdHRvVVNEGAcgASgJUhdkZWZhdWx0VGhyZXNob2xkQX'
    'R0b1VTRA==');

@$core.Deprecated('Use scanCountryThresholdDescriptor instead')
const ScanCountryThreshold$json = {
  '1': 'ScanCountryThreshold',
  '2': [
    {'1': 'country', '3': 1, '4': 1, '5': 9, '10': 'country'},
    {'1': 'thresholdAttoUSD', '3': 2, '4': 1, '5': 9, '10': 'thresholdAttoUSD'},
  ],
};

/// Descriptor for `ScanCountryThreshold`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scanCountryThresholdDescriptor = $convert.base64Decode(
    'ChRTY2FuQ291bnRyeVRocmVzaG9sZBIYCgdjb3VudHJ5GAEgASgJUgdjb3VudHJ5EioKEHRocm'
    'VzaG9sZEF0dG9VU0QYAiABKAlSEHRocmVzaG9sZEF0dG9VU0Q=');

@$core.Deprecated('Use msgScanBankSendDescriptor instead')
const MsgScanBankSend$json = {
  '1': 'MsgScanBankSend',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'timestamp'},
    {'1': 'height', '3': 2, '4': 1, '5': 3, '10': 'height'},
    {'1': 'srcWalletID', '3': 3, '4': 1, '5': 9, '10': 'srcWalletID'},
    {'1': 'dstWalletID', '3': 4, '4': 1, '5': 9, '10': 'dstWalletID'},
    {'1': 'coins', '3': 5, '4': 3, '5': 11, '6': '.qadena.qadena.ScanBankSendCoin', '10': 'coins'},
    {'1': 'params', '3': 6, '4': 1, '5': 11, '6': '.qadena.qadena.Params', '8': {}, '10': 'params'},
    {'1': 'countryThresholds', '3': 7, '4': 3, '5': 11, '6': '.qadena.qadena.ScanCountryThreshold', '10': 'countryThresholds'},
    {'1': 'defaultThresholdAttoUSD', '3': 8, '4': 1, '5': 9, '10': 'defaultThresholdAttoUSD'},
    {'1': 'jarID', '3': 9, '4': 1, '5': 9, '10': 'jarID'},
  ],
};

/// Descriptor for `MsgScanBankSend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgScanBankSendDescriptor = $convert.base64Decode(
    'Cg9Nc2dTY2FuQmFua1NlbmQSQgoJdGltZXN0YW1wGAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLl'
    'RpbWVzdGFtcEIIyN4fAJDfHwFSCXRpbWVzdGFtcBIWCgZoZWlnaHQYAiABKANSBmhlaWdodBIg'
    'CgtzcmNXYWxsZXRJRBgDIAEoCVILc3JjV2FsbGV0SUQSIAoLZHN0V2FsbGV0SUQYBCABKAlSC2'
    'RzdFdhbGxldElEEjUKBWNvaW5zGAUgAygLMh8ucWFkZW5hLnFhZGVuYS5TY2FuQmFua1NlbmRD'
    'b2luUgVjb2lucxIzCgZwYXJhbXMYBiABKAsyFS5xYWRlbmEucWFkZW5hLlBhcmFtc0IEyN4fAF'
    'IGcGFyYW1zElEKEWNvdW50cnlUaHJlc2hvbGRzGAcgAygLMiMucWFkZW5hLnFhZGVuYS5TY2Fu'
    'Q291bnRyeVRocmVzaG9sZFIRY291bnRyeVRocmVzaG9sZHMSOAoXZGVmYXVsdFRocmVzaG9sZE'
    'F0dG9VU0QYCCABKAlSF2RlZmF1bHRUaHJlc2hvbGRBdHRvVVNEEhQKBWphcklEGAkgASgJUgVq'
    'YXJJRA==');

@$core.Deprecated('Use scanBankSendCoinDescriptor instead')
const ScanBankSendCoin$json = {
  '1': 'ScanBankSendCoin',
  '2': [
    {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
    {'1': 'amount', '3': 2, '4': 1, '5': 9, '10': 'amount'},
    {'1': 'usdAmountAttoUSD', '3': 3, '4': 1, '5': 9, '10': 'usdAmountAttoUSD'},
  ],
};

/// Descriptor for `ScanBankSendCoin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scanBankSendCoinDescriptor = $convert.base64Decode(
    'ChBTY2FuQmFua1NlbmRDb2luEhQKBWRlbm9tGAEgASgJUgVkZW5vbRIWCgZhbW91bnQYAiABKA'
    'lSBmFtb3VudBIqChB1c2RBbW91bnRBdHRvVVNEGAMgASgJUhB1c2RBbW91bnRBdHRvVVNE');

@$core.Deprecated('Use scanBankSendReplyDescriptor instead')
const ScanBankSendReply$json = {
  '1': 'ScanBankSendReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `ScanBankSendReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scanBankSendReplyDescriptor = $convert.base64Decode(
    'ChFTY2FuQmFua1NlbmRSZXBseRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cw==');

@$core.Deprecated('Use msgSyncWalletsDescriptor instead')
const MsgSyncWallets$json = {
  '1': 'MsgSyncWallets',
  '2': [
    {'1': 'clear', '3': 1, '4': 1, '5': 8, '10': 'clear'},
  ],
};

/// Descriptor for `MsgSyncWallets`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgSyncWalletsDescriptor = $convert.base64Decode(
    'Cg5Nc2dTeW5jV2FsbGV0cxIUCgVjbGVhchgBIAEoCFIFY2xlYXI=');

@$core.Deprecated('Use syncWalletsReplyDescriptor instead')
const SyncWalletsReply$json = {
  '1': 'SyncWalletsReply',
  '2': [
    {'1': 'wallets', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.Wallet', '10': 'wallets'},
  ],
};

/// Descriptor for `SyncWalletsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncWalletsReplyDescriptor = $convert.base64Decode(
    'ChBTeW5jV2FsbGV0c1JlcGx5Ei8KB3dhbGxldHMYASADKAsyFS5xYWRlbmEucWFkZW5hLldhbG'
    'xldFIHd2FsbGV0cw==');

@$core.Deprecated('Use msgSyncCredentialsDescriptor instead')
const MsgSyncCredentials$json = {
  '1': 'MsgSyncCredentials',
  '2': [
    {'1': 'clear', '3': 1, '4': 1, '5': 8, '10': 'clear'},
  ],
};

/// Descriptor for `MsgSyncCredentials`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgSyncCredentialsDescriptor = $convert.base64Decode(
    'ChJNc2dTeW5jQ3JlZGVudGlhbHMSFAoFY2xlYXIYASABKAhSBWNsZWFy');

@$core.Deprecated('Use credentialRefDescriptor instead')
const CredentialRef$json = {
  '1': 'CredentialRef',
  '2': [
    {'1': 'credentialID', '3': 1, '4': 1, '5': 9, '10': 'credentialID'},
    {'1': 'credentialType', '3': 2, '4': 1, '5': 9, '10': 'credentialType'},
  ],
};

/// Descriptor for `CredentialRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List credentialRefDescriptor = $convert.base64Decode(
    'Cg1DcmVkZW50aWFsUmVmEiIKDGNyZWRlbnRpYWxJRBgBIAEoCVIMY3JlZGVudGlhbElEEiYKDm'
    'NyZWRlbnRpYWxUeXBlGAIgASgJUg5jcmVkZW50aWFsVHlwZQ==');

@$core.Deprecated('Use syncCredentialsReplyDescriptor instead')
const SyncCredentialsReply$json = {
  '1': 'SyncCredentialsReply',
  '2': [
    {'1': 'credentials', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.Credential', '10': 'credentials'},
    {'1': 'removedCredentials', '3': 2, '4': 3, '5': 11, '6': '.qadena.qadena.CredentialRef', '10': 'removedCredentials'},
  ],
};

/// Descriptor for `SyncCredentialsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncCredentialsReplyDescriptor = $convert.base64Decode(
    'ChRTeW5jQ3JlZGVudGlhbHNSZXBseRI7CgtjcmVkZW50aWFscxgBIAMoCzIZLnFhZGVuYS5xYW'
    'RlbmEuQ3JlZGVudGlhbFILY3JlZGVudGlhbHMSTAoScmVtb3ZlZENyZWRlbnRpYWxzGAIgAygL'
    'MhwucWFkZW5hLnFhZGVuYS5DcmVkZW50aWFsUmVmUhJyZW1vdmVkQ3JlZGVudGlhbHM=');

@$core.Deprecated('Use enclaveRemoveCredentialRequestDescriptor instead')
const EnclaveRemoveCredentialRequest$json = {
  '1': 'EnclaveRemoveCredentialRequest',
  '2': [
    {'1': 'credential', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.Credential', '10': 'credential'},
    {'1': 'requesterWalletID', '3': 2, '4': 1, '5': 9, '10': 'requesterWalletID'},
  ],
};

/// Descriptor for `EnclaveRemoveCredentialRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enclaveRemoveCredentialRequestDescriptor = $convert.base64Decode(
    'Ch5FbmNsYXZlUmVtb3ZlQ3JlZGVudGlhbFJlcXVlc3QSOQoKY3JlZGVudGlhbBgBIAEoCzIZLn'
    'FhZGVuYS5xYWRlbmEuQ3JlZGVudGlhbFIKY3JlZGVudGlhbBIsChFyZXF1ZXN0ZXJXYWxsZXRJ'
    'RBgCIAEoCVIRcmVxdWVzdGVyV2FsbGV0SUQ=');

@$core.Deprecated('Use enclaveUpdateCredentialRequestDescriptor instead')
const EnclaveUpdateCredentialRequest$json = {
  '1': 'EnclaveUpdateCredentialRequest',
  '2': [
    {'1': 'msg', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.MsgUpdateCredential', '10': 'msg'},
    {'1': 'blockHeight', '3': 2, '4': 1, '5': 3, '10': 'blockHeight'},
    {'1': 'params', '3': 3, '4': 1, '5': 11, '6': '.qadena.qadena.Params', '8': {}, '10': 'params'},
  ],
};

/// Descriptor for `EnclaveUpdateCredentialRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enclaveUpdateCredentialRequestDescriptor = $convert.base64Decode(
    'Ch5FbmNsYXZlVXBkYXRlQ3JlZGVudGlhbFJlcXVlc3QSNAoDbXNnGAEgASgLMiIucWFkZW5hLn'
    'FhZGVuYS5Nc2dVcGRhdGVDcmVkZW50aWFsUgNtc2cSIAoLYmxvY2tIZWlnaHQYAiABKANSC2Js'
    'b2NrSGVpZ2h0EjMKBnBhcmFtcxgDIAEoCzIVLnFhZGVuYS5xYWRlbmEuUGFyYW1zQgTI3h8AUg'
    'ZwYXJhbXM=');

@$core.Deprecated('Use msgSyncRecoverKeysDescriptor instead')
const MsgSyncRecoverKeys$json = {
  '1': 'MsgSyncRecoverKeys',
  '2': [
    {'1': 'clear', '3': 1, '4': 1, '5': 8, '10': 'clear'},
  ],
};

/// Descriptor for `MsgSyncRecoverKeys`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgSyncRecoverKeysDescriptor = $convert.base64Decode(
    'ChJNc2dTeW5jUmVjb3ZlcktleXMSFAoFY2xlYXIYASABKAhSBWNsZWFy');

@$core.Deprecated('Use syncRecoverKeysReplyDescriptor instead')
const SyncRecoverKeysReply$json = {
  '1': 'SyncRecoverKeysReply',
  '2': [
    {'1': 'recoverKeys', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.RecoverKey', '10': 'recoverKeys'},
  ],
};

/// Descriptor for `SyncRecoverKeysReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncRecoverKeysReplyDescriptor = $convert.base64Decode(
    'ChRTeW5jUmVjb3ZlcktleXNSZXBseRI7CgtyZWNvdmVyS2V5cxgBIAMoCzIZLnFhZGVuYS5xYW'
    'RlbmEuUmVjb3ZlcktleVILcmVjb3ZlcktleXM=');

@$core.Deprecated('Use setSecretSharePrivateKeyReplyDescriptor instead')
const SetSecretSharePrivateKeyReply$json = {
  '1': 'SetSecretSharePrivateKeyReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SetSecretSharePrivateKeyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setSecretSharePrivateKeyReplyDescriptor = $convert.base64Decode(
    'Ch1TZXRTZWNyZXRTaGFyZVByaXZhdGVLZXlSZXBseRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cw'
    '==');

@$core.Deprecated('Use msgSyncSuspiciousTransactionsDescriptor instead')
const MsgSyncSuspiciousTransactions$json = {
  '1': 'MsgSyncSuspiciousTransactions',
  '2': [
    {'1': 'clear', '3': 1, '4': 1, '5': 8, '10': 'clear'},
  ],
};

/// Descriptor for `MsgSyncSuspiciousTransactions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgSyncSuspiciousTransactionsDescriptor = $convert.base64Decode(
    'Ch1Nc2dTeW5jU3VzcGljaW91c1RyYW5zYWN0aW9ucxIUCgVjbGVhchgBIAEoCFIFY2xlYXI=');

@$core.Deprecated('Use syncSuspiciousTransactionsReplyDescriptor instead')
const SyncSuspiciousTransactionsReply$json = {
  '1': 'SyncSuspiciousTransactionsReply',
  '2': [
    {'1': 'suspiciousTransactions', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.SuspiciousTransaction', '10': 'suspiciousTransactions'},
  ],
};

/// Descriptor for `SyncSuspiciousTransactionsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncSuspiciousTransactionsReplyDescriptor = $convert.base64Decode(
    'Ch9TeW5jU3VzcGljaW91c1RyYW5zYWN0aW9uc1JlcGx5ElwKFnN1c3BpY2lvdXNUcmFuc2FjdG'
    'lvbnMYASADKAsyJC5xYWRlbmEucWFkZW5hLlN1c3BpY2lvdXNUcmFuc2FjdGlvblIWc3VzcGlj'
    'aW91c1RyYW5zYWN0aW9ucw==');

@$core.Deprecated('Use initEnclaveReplyDescriptor instead')
const InitEnclaveReply$json = {
  '1': 'InitEnclaveReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `InitEnclaveReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initEnclaveReplyDescriptor = $convert.base64Decode(
    'ChBJbml0RW5jbGF2ZVJlcGx5EhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVz');

@$core.Deprecated('Use updateHeightReplyDescriptor instead')
const UpdateHeightReply$json = {
  '1': 'UpdateHeightReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `UpdateHeightReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateHeightReplyDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVIZWlnaHRSZXBseRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cw==');

@$core.Deprecated('Use msgTransactionCompleteDescriptor instead')
const MsgTransactionComplete$json = {
  '1': 'MsgTransactionComplete',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `MsgTransactionComplete`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgTransactionCompleteDescriptor = $convert.base64Decode(
    'ChZNc2dUcmFuc2FjdGlvbkNvbXBsZXRlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use transactionCompleteReplyDescriptor instead')
const TransactionCompleteReply$json = {
  '1': 'TransactionCompleteReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `TransactionCompleteReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionCompleteReplyDescriptor = $convert.base64Decode(
    'ChhUcmFuc2FjdGlvbkNvbXBsZXRlUmVwbHkSFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');

@$core.Deprecated('Use syncEnclaveReplyDescriptor instead')
const SyncEnclaveReply$json = {
  '1': 'SyncEnclaveReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SyncEnclaveReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncEnclaveReplyDescriptor = $convert.base64Decode(
    'ChBTeW5jRW5jbGF2ZVJlcGx5EhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVz');

@$core.Deprecated('Use addAsValidatorReplyDescriptor instead')
const AddAsValidatorReply$json = {
  '1': 'AddAsValidatorReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `AddAsValidatorReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addAsValidatorReplyDescriptor = $convert.base64Decode(
    'ChNBZGRBc1ZhbGlkYXRvclJlcGx5EhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVz');

@$core.Deprecated('Use setWalletReplyDescriptor instead')
const SetWalletReply$json = {
  '1': 'SetWalletReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SetWalletReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setWalletReplyDescriptor = $convert.base64Decode(
    'Cg5TZXRXYWxsZXRSZXBseRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cw==');

@$core.Deprecated('Use setEnclaveIdentityReplyDescriptor instead')
const SetEnclaveIdentityReply$json = {
  '1': 'SetEnclaveIdentityReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SetEnclaveIdentityReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setEnclaveIdentityReplyDescriptor = $convert.base64Decode(
    'ChdTZXRFbmNsYXZlSWRlbnRpdHlSZXBseRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cw==');

@$core.Deprecated('Use pioneerUpdateEnclaveIdentityDescriptor instead')
const PioneerUpdateEnclaveIdentity$json = {
  '1': 'PioneerUpdateEnclaveIdentity',
  '2': [
    {'1': 'enclaveIdentity', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.EnclaveIdentity', '10': 'enclaveIdentity'},
    {'1': 'remoteReport', '3': 2, '4': 1, '5': 12, '10': 'remoteReport'},
  ],
};

/// Descriptor for `PioneerUpdateEnclaveIdentity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pioneerUpdateEnclaveIdentityDescriptor = $convert.base64Decode(
    'ChxQaW9uZWVyVXBkYXRlRW5jbGF2ZUlkZW50aXR5EkgKD2VuY2xhdmVJZGVudGl0eRgBIAEoCz'
    'IeLnFhZGVuYS5xYWRlbmEuRW5jbGF2ZUlkZW50aXR5Ug9lbmNsYXZlSWRlbnRpdHkSIgoMcmVt'
    'b3RlUmVwb3J0GAIgASgMUgxyZW1vdGVSZXBvcnQ=');

@$core.Deprecated('Use updateEnclaveIdentityReplyDescriptor instead')
const UpdateEnclaveIdentityReply$json = {
  '1': 'UpdateEnclaveIdentityReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `UpdateEnclaveIdentityReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateEnclaveIdentityReplyDescriptor = $convert.base64Decode(
    'ChpVcGRhdGVFbmNsYXZlSWRlbnRpdHlSZXBseRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cw==');

@$core.Deprecated('Use setProtectKeyReplyDescriptor instead')
const SetProtectKeyReply$json = {
  '1': 'SetProtectKeyReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SetProtectKeyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setProtectKeyReplyDescriptor = $convert.base64Decode(
    'ChJTZXRQcm90ZWN0S2V5UmVwbHkSFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');

@$core.Deprecated('Use setRecoverKeyReplyDescriptor instead')
const SetRecoverKeyReply$json = {
  '1': 'SetRecoverKeyReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SetRecoverKeyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRecoverKeyReplyDescriptor = $convert.base64Decode(
    'ChJTZXRSZWNvdmVyS2V5UmVwbHkSFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');

@$core.Deprecated('Use setCredentialReplyDescriptor instead')
const SetCredentialReply$json = {
  '1': 'SetCredentialReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SetCredentialReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setCredentialReplyDescriptor = $convert.base64Decode(
    'ChJTZXRDcmVkZW50aWFsUmVwbHkSFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');

@$core.Deprecated('Use removeCredentialReplyDescriptor instead')
const RemoveCredentialReply$json = {
  '1': 'RemoveCredentialReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `RemoveCredentialReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeCredentialReplyDescriptor = $convert.base64Decode(
    'ChVSZW1vdmVDcmVkZW50aWFsUmVwbHkSFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');

@$core.Deprecated('Use recoverKeyReplyDescriptor instead')
const RecoverKeyReply$json = {
  '1': 'RecoverKeyReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `RecoverKeyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoverKeyReplyDescriptor = $convert.base64Decode(
    'Cg9SZWNvdmVyS2V5UmVwbHkSFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');

@$core.Deprecated('Use signRecoverKeyReplyDescriptor instead')
const SignRecoverKeyReply$json = {
  '1': 'SignRecoverKeyReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SignRecoverKeyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signRecoverKeyReplyDescriptor = $convert.base64Decode(
    'ChNTaWduUmVjb3ZlcktleVJlcGx5EhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVz');

@$core.Deprecated('Use setPublicKeyReplyDescriptor instead')
const SetPublicKeyReply$json = {
  '1': 'SetPublicKeyReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SetPublicKeyReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setPublicKeyReplyDescriptor = $convert.base64Decode(
    'ChFTZXRQdWJsaWNLZXlSZXBseRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cw==');

@$core.Deprecated('Use setJarRegulatorReplyDescriptor instead')
const SetJarRegulatorReply$json = {
  '1': 'SetJarRegulatorReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SetJarRegulatorReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setJarRegulatorReplyDescriptor = $convert.base64Decode(
    'ChRTZXRKYXJSZWd1bGF0b3JSZXBseRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cw==');

@$core.Deprecated('Use setPioneerJarReplyDescriptor instead')
const SetPioneerJarReply$json = {
  '1': 'SetPioneerJarReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SetPioneerJarReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setPioneerJarReplyDescriptor = $convert.base64Decode(
    'ChJTZXRQaW9uZWVySmFyUmVwbHkSFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');

@$core.Deprecated('Use setIntervalPublicKeyIdReplyDescriptor instead')
const SetIntervalPublicKeyIdReply$json = {
  '1': 'SetIntervalPublicKeyIdReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SetIntervalPublicKeyIdReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setIntervalPublicKeyIdReplyDescriptor = $convert.base64Decode(
    'ChtTZXRJbnRlcnZhbFB1YmxpY0tleUlkUmVwbHkSFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');

@$core.Deprecated('Use validateDestinationWalletReplyDescriptor instead')
const ValidateDestinationWalletReply$json = {
  '1': 'ValidateDestinationWalletReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
  ],
};

/// Descriptor for `ValidateDestinationWalletReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateDestinationWalletReplyDescriptor = $convert.base64Decode(
    'Ch5WYWxpZGF0ZURlc3RpbmF0aW9uV2FsbGV0UmVwbHkSFgoGc3RhdHVzGAEgASgFUgZzdGF0dX'
    'M=');

@$core.Deprecated('Use validateCredentialReplyDescriptor instead')
const ValidateCredentialReply$json = {
  '1': 'ValidateCredentialReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `ValidateCredentialReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateCredentialReplyDescriptor = $convert.base64Decode(
    'ChdWYWxpZGF0ZUNyZWRlbnRpYWxSZXBseRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cw==');

@$core.Deprecated('Use validatePersonalInfoReplyDescriptor instead')
const ValidatePersonalInfoReply$json = {
  '1': 'ValidatePersonalInfoReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
    {'1': 'reason', '3': 2, '4': 1, '5': 5, '10': 'reason'},
  ],
};

/// Descriptor for `ValidatePersonalInfoReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatePersonalInfoReplyDescriptor = $convert.base64Decode(
    'ChlWYWxpZGF0ZVBlcnNvbmFsSW5mb1JlcGx5EhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVzEhYKBn'
    'JlYXNvbhgCIAEoBVIGcmVhc29u');

@$core.Deprecated('Use validateTransferPrimeReplyDescriptor instead')
const ValidateTransferPrimeReply$json = {
  '1': 'ValidateTransferPrimeReply',
  '2': [
    {'1': 'updateSourceWallet', '3': 1, '4': 1, '5': 8, '10': 'updateSourceWallet'},
  ],
};

/// Descriptor for `ValidateTransferPrimeReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateTransferPrimeReplyDescriptor = $convert.base64Decode(
    'ChpWYWxpZGF0ZVRyYW5zZmVyUHJpbWVSZXBseRIuChJ1cGRhdGVTb3VyY2VXYWxsZXQYASABKA'
    'hSEnVwZGF0ZVNvdXJjZVdhbGxldA==');

@$core.Deprecated('Use validateTransferDoublePrimeReplyDescriptor instead')
const ValidateTransferDoublePrimeReply$json = {
  '1': 'ValidateTransferDoublePrimeReply',
  '2': [
    {'1': 'updateDestinationWallet', '3': 1, '4': 1, '5': 8, '10': 'updateDestinationWallet'},
  ],
};

/// Descriptor for `ValidateTransferDoublePrimeReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateTransferDoublePrimeReplyDescriptor = $convert.base64Decode(
    'CiBWYWxpZGF0ZVRyYW5zZmVyRG91YmxlUHJpbWVSZXBseRI4Chd1cGRhdGVEZXN0aW5hdGlvbl'
    'dhbGxldBgBIAEoCFIXdXBkYXRlRGVzdGluYXRpb25XYWxsZXQ=');

@$core.Deprecated('Use scanTransactionReplyDescriptor instead')
const ScanTransactionReply$json = {
  '1': 'ScanTransactionReply',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `ScanTransactionReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scanTransactionReplyDescriptor = $convert.base64Decode(
    'ChRTY2FuVHJhbnNhY3Rpb25SZXBseRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cw==');

@$core.Deprecated('Use enclaveStoreStringArrayDescriptor instead')
const EnclaveStoreStringArray$json = {
  '1': 'EnclaveStoreStringArray',
  '2': [
    {'1': 'a', '3': 1, '4': 3, '5': 9, '10': 'a'},
  ],
};

/// Descriptor for `EnclaveStoreStringArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enclaveStoreStringArrayDescriptor = $convert.base64Decode(
    'ChdFbmNsYXZlU3RvcmVTdHJpbmdBcnJheRIMCgFhGAEgAygJUgFh');

@$core.Deprecated('Use enclaveStoreStringDescriptor instead')
const EnclaveStoreString$json = {
  '1': 'EnclaveStoreString',
  '2': [
    {'1': 's', '3': 1, '4': 1, '5': 9, '10': 's'},
  ],
};

/// Descriptor for `EnclaveStoreString`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enclaveStoreStringDescriptor = $convert.base64Decode(
    'ChJFbmNsYXZlU3RvcmVTdHJpbmcSDAoBcxgBIAEoCVIBcw==');

@$core.Deprecated('Use enclaveEnclaveIdentityArrayDescriptor instead')
const EnclaveEnclaveIdentityArray$json = {
  '1': 'EnclaveEnclaveIdentityArray',
  '2': [
    {'1': 'identity', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.EnclaveIdentity', '10': 'identity'},
  ],
};

/// Descriptor for `EnclaveEnclaveIdentityArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enclaveEnclaveIdentityArrayDescriptor = $convert.base64Decode(
    'ChtFbmNsYXZlRW5jbGF2ZUlkZW50aXR5QXJyYXkSOgoIaWRlbnRpdHkYASADKAsyHi5xYWRlbm'
    'EucWFkZW5hLkVuY2xhdmVJZGVudGl0eVIIaWRlbnRpdHk=');

