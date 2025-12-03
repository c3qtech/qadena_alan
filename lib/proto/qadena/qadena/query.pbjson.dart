//
//  Generated code. Do not modify.
//  source: qadena/qadena/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use queryParamsRequestDescriptor instead')
const QueryParamsRequest$json = {
  '1': 'QueryParamsRequest',
};

/// Descriptor for `QueryParamsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsRequestDescriptor = $convert.base64Decode(
    'ChJRdWVyeVBhcmFtc1JlcXVlc3Q=');

@$core.Deprecated('Use queryParamsResponseDescriptor instead')
const QueryParamsResponse$json = {
  '1': 'QueryParamsResponse',
  '2': [
    {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.Params', '8': {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode(
    'ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEjgKBnBhcmFtcxgBIAEoCzIVLnFhZGVuYS5xYWRlbmEuUG'
    'FyYW1zQgnI3h8AqOewKgFSBnBhcmFtcw==');

@$core.Deprecated('Use queryGetCredentialRequestDescriptor instead')
const QueryGetCredentialRequest$json = {
  '1': 'QueryGetCredentialRequest',
  '2': [
    {'1': 'credentialID', '3': 1, '4': 1, '5': 9, '10': 'credentialID'},
    {'1': 'credentialType', '3': 2, '4': 1, '5': 9, '10': 'credentialType'},
  ],
};

/// Descriptor for `QueryGetCredentialRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetCredentialRequestDescriptor = $convert.base64Decode(
    'ChlRdWVyeUdldENyZWRlbnRpYWxSZXF1ZXN0EiIKDGNyZWRlbnRpYWxJRBgBIAEoCVIMY3JlZG'
    'VudGlhbElEEiYKDmNyZWRlbnRpYWxUeXBlGAIgASgJUg5jcmVkZW50aWFsVHlwZQ==');

@$core.Deprecated('Use queryGetCredentialResponseDescriptor instead')
const QueryGetCredentialResponse$json = {
  '1': 'QueryGetCredentialResponse',
  '2': [
    {'1': 'credential', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.Credential', '8': {}, '10': 'credential'},
  ],
};

/// Descriptor for `QueryGetCredentialResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetCredentialResponseDescriptor = $convert.base64Decode(
    'ChpRdWVyeUdldENyZWRlbnRpYWxSZXNwb25zZRI/CgpjcmVkZW50aWFsGAEgASgLMhkucWFkZW'
    '5hLnFhZGVuYS5DcmVkZW50aWFsQgTI3h8AUgpjcmVkZW50aWFs');

@$core.Deprecated('Use queryAllCredentialRequestDescriptor instead')
const QueryAllCredentialRequest$json = {
  '1': 'QueryAllCredentialRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllCredentialRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllCredentialRequestDescriptor = $convert.base64Decode(
    'ChlRdWVyeUFsbENyZWRlbnRpYWxSZXF1ZXN0EkYKCnBhZ2luYXRpb24YASABKAsyJi5jb3Ntb3'
    'MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXF1ZXN0UgpwYWdpbmF0aW9u');

@$core.Deprecated('Use queryAllCredentialResponseDescriptor instead')
const QueryAllCredentialResponse$json = {
  '1': 'QueryAllCredentialResponse',
  '2': [
    {'1': 'credential', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.Credential', '8': {}, '10': 'credential'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllCredentialResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllCredentialResponseDescriptor = $convert.base64Decode(
    'ChpRdWVyeUFsbENyZWRlbnRpYWxSZXNwb25zZRI/CgpjcmVkZW50aWFsGAEgAygLMhkucWFkZW'
    '5hLnFhZGVuYS5DcmVkZW50aWFsQgTI3h8AUgpjcmVkZW50aWFsEkcKCnBhZ2luYXRpb24YAiAB'
    'KAsyJy5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXNwb25zZVIKcGFnaW5hdGlvbg'
    '==');

@$core.Deprecated('Use queryGetPublicKeyRequestDescriptor instead')
const QueryGetPublicKeyRequest$json = {
  '1': 'QueryGetPublicKeyRequest',
  '2': [
    {'1': 'pubKID', '3': 1, '4': 1, '5': 9, '10': 'pubKID'},
    {'1': 'pubKType', '3': 2, '4': 1, '5': 9, '10': 'pubKType'},
  ],
};

/// Descriptor for `QueryGetPublicKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetPublicKeyRequestDescriptor = $convert.base64Decode(
    'ChhRdWVyeUdldFB1YmxpY0tleVJlcXVlc3QSFgoGcHViS0lEGAEgASgJUgZwdWJLSUQSGgoIcH'
    'ViS1R5cGUYAiABKAlSCHB1YktUeXBl');

@$core.Deprecated('Use queryGetPublicKeyResponseDescriptor instead')
const QueryGetPublicKeyResponse$json = {
  '1': 'QueryGetPublicKeyResponse',
  '2': [
    {'1': 'publicKey', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.PublicKey', '8': {}, '10': 'publicKey'},
  ],
};

/// Descriptor for `QueryGetPublicKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetPublicKeyResponseDescriptor = $convert.base64Decode(
    'ChlRdWVyeUdldFB1YmxpY0tleVJlc3BvbnNlEjwKCXB1YmxpY0tleRgBIAEoCzIYLnFhZGVuYS'
    '5xYWRlbmEuUHVibGljS2V5QgTI3h8AUglwdWJsaWNLZXk=');

@$core.Deprecated('Use queryAllPublicKeyRequestDescriptor instead')
const QueryAllPublicKeyRequest$json = {
  '1': 'QueryAllPublicKeyRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllPublicKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllPublicKeyRequestDescriptor = $convert.base64Decode(
    'ChhRdWVyeUFsbFB1YmxpY0tleVJlcXVlc3QSRgoKcGFnaW5hdGlvbhgBIAEoCzImLmNvc21vcy'
    '5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlcXVlc3RSCnBhZ2luYXRpb24=');

@$core.Deprecated('Use queryAllPublicKeyResponseDescriptor instead')
const QueryAllPublicKeyResponse$json = {
  '1': 'QueryAllPublicKeyResponse',
  '2': [
    {'1': 'publicKey', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.PublicKey', '8': {}, '10': 'publicKey'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllPublicKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllPublicKeyResponseDescriptor = $convert.base64Decode(
    'ChlRdWVyeUFsbFB1YmxpY0tleVJlc3BvbnNlEjwKCXB1YmxpY0tleRgBIAMoCzIYLnFhZGVuYS'
    '5xYWRlbmEuUHVibGljS2V5QgTI3h8AUglwdWJsaWNLZXkSRwoKcGFnaW5hdGlvbhgCIAEoCzIn'
    'LmNvc21vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlc3BvbnNlUgpwYWdpbmF0aW9u');

@$core.Deprecated('Use queryGetWalletRequestDescriptor instead')
const QueryGetWalletRequest$json = {
  '1': 'QueryGetWalletRequest',
  '2': [
    {'1': 'walletID', '3': 1, '4': 1, '5': 9, '10': 'walletID'},
  ],
};

/// Descriptor for `QueryGetWalletRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetWalletRequestDescriptor = $convert.base64Decode(
    'ChVRdWVyeUdldFdhbGxldFJlcXVlc3QSGgoId2FsbGV0SUQYASABKAlSCHdhbGxldElE');

@$core.Deprecated('Use queryGetWalletResponseDescriptor instead')
const QueryGetWalletResponse$json = {
  '1': 'QueryGetWalletResponse',
  '2': [
    {'1': 'wallet', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.Wallet', '8': {}, '10': 'wallet'},
  ],
};

/// Descriptor for `QueryGetWalletResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetWalletResponseDescriptor = $convert.base64Decode(
    'ChZRdWVyeUdldFdhbGxldFJlc3BvbnNlEjMKBndhbGxldBgBIAEoCzIVLnFhZGVuYS5xYWRlbm'
    'EuV2FsbGV0QgTI3h8AUgZ3YWxsZXQ=');

@$core.Deprecated('Use queryAllWalletRequestDescriptor instead')
const QueryAllWalletRequest$json = {
  '1': 'QueryAllWalletRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllWalletRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllWalletRequestDescriptor = $convert.base64Decode(
    'ChVRdWVyeUFsbFdhbGxldFJlcXVlc3QSRgoKcGFnaW5hdGlvbhgBIAEoCzImLmNvc21vcy5iYX'
    'NlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlcXVlc3RSCnBhZ2luYXRpb24=');

@$core.Deprecated('Use queryAllWalletResponseDescriptor instead')
const QueryAllWalletResponse$json = {
  '1': 'QueryAllWalletResponse',
  '2': [
    {'1': 'wallet', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.Wallet', '8': {}, '10': 'wallet'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllWalletResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllWalletResponseDescriptor = $convert.base64Decode(
    'ChZRdWVyeUFsbFdhbGxldFJlc3BvbnNlEjMKBndhbGxldBgBIAMoCzIVLnFhZGVuYS5xYWRlbm'
    'EuV2FsbGV0QgTI3h8AUgZ3YWxsZXQSRwoKcGFnaW5hdGlvbhgCIAEoCzInLmNvc21vcy5iYXNl'
    'LnF1ZXJ5LnYxYmV0YTEuUGFnZVJlc3BvbnNlUgpwYWdpbmF0aW9u');

@$core.Deprecated('Use queryGetIntervalPublicKeyIDRequestDescriptor instead')
const QueryGetIntervalPublicKeyIDRequest$json = {
  '1': 'QueryGetIntervalPublicKeyIDRequest',
  '2': [
    {'1': 'nodeID', '3': 1, '4': 1, '5': 9, '10': 'nodeID'},
    {'1': 'nodeType', '3': 2, '4': 1, '5': 9, '10': 'nodeType'},
  ],
};

/// Descriptor for `QueryGetIntervalPublicKeyIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetIntervalPublicKeyIDRequestDescriptor = $convert.base64Decode(
    'CiJRdWVyeUdldEludGVydmFsUHVibGljS2V5SURSZXF1ZXN0EhYKBm5vZGVJRBgBIAEoCVIGbm'
    '9kZUlEEhoKCG5vZGVUeXBlGAIgASgJUghub2RlVHlwZQ==');

@$core.Deprecated('Use queryGetIntervalPublicKeyIDResponseDescriptor instead')
const QueryGetIntervalPublicKeyIDResponse$json = {
  '1': 'QueryGetIntervalPublicKeyIDResponse',
  '2': [
    {'1': 'intervalPublicKeyID', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.IntervalPublicKeyID', '8': {}, '10': 'intervalPublicKeyID'},
  ],
};

/// Descriptor for `QueryGetIntervalPublicKeyIDResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetIntervalPublicKeyIDResponseDescriptor = $convert.base64Decode(
    'CiNRdWVyeUdldEludGVydmFsUHVibGljS2V5SURSZXNwb25zZRJaChNpbnRlcnZhbFB1YmxpY0'
    'tleUlEGAEgASgLMiIucWFkZW5hLnFhZGVuYS5JbnRlcnZhbFB1YmxpY0tleUlEQgTI3h8AUhNp'
    'bnRlcnZhbFB1YmxpY0tleUlE');

@$core.Deprecated('Use queryAllIntervalPublicKeyIDRequestDescriptor instead')
const QueryAllIntervalPublicKeyIDRequest$json = {
  '1': 'QueryAllIntervalPublicKeyIDRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllIntervalPublicKeyIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllIntervalPublicKeyIDRequestDescriptor = $convert.base64Decode(
    'CiJRdWVyeUFsbEludGVydmFsUHVibGljS2V5SURSZXF1ZXN0EkYKCnBhZ2luYXRpb24YASABKA'
    'syJi5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXF1ZXN0UgpwYWdpbmF0aW9u');

@$core.Deprecated('Use queryAllIntervalPublicKeyIDResponseDescriptor instead')
const QueryAllIntervalPublicKeyIDResponse$json = {
  '1': 'QueryAllIntervalPublicKeyIDResponse',
  '2': [
    {'1': 'intervalPublicKeyID', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.IntervalPublicKeyID', '8': {}, '10': 'intervalPublicKeyID'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllIntervalPublicKeyIDResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllIntervalPublicKeyIDResponseDescriptor = $convert.base64Decode(
    'CiNRdWVyeUFsbEludGVydmFsUHVibGljS2V5SURSZXNwb25zZRJaChNpbnRlcnZhbFB1YmxpY0'
    'tleUlEGAEgAygLMiIucWFkZW5hLnFhZGVuYS5JbnRlcnZhbFB1YmxpY0tleUlEQgTI3h8AUhNp'
    'bnRlcnZhbFB1YmxpY0tleUlEEkcKCnBhZ2luYXRpb24YAiABKAsyJy5jb3Ntb3MuYmFzZS5xdW'
    'VyeS52MWJldGExLlBhZ2VSZXNwb25zZVIKcGFnaW5hdGlvbg==');

@$core.Deprecated('Use queryGetPioneerJarRequestDescriptor instead')
const QueryGetPioneerJarRequest$json = {
  '1': 'QueryGetPioneerJarRequest',
  '2': [
    {'1': 'pioneerID', '3': 1, '4': 1, '5': 9, '10': 'pioneerID'},
  ],
};

/// Descriptor for `QueryGetPioneerJarRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetPioneerJarRequestDescriptor = $convert.base64Decode(
    'ChlRdWVyeUdldFBpb25lZXJKYXJSZXF1ZXN0EhwKCXBpb25lZXJJRBgBIAEoCVIJcGlvbmVlck'
    'lE');

@$core.Deprecated('Use queryGetPioneerJarResponseDescriptor instead')
const QueryGetPioneerJarResponse$json = {
  '1': 'QueryGetPioneerJarResponse',
  '2': [
    {'1': 'pioneerJar', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.PioneerJar', '8': {}, '10': 'pioneerJar'},
  ],
};

/// Descriptor for `QueryGetPioneerJarResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetPioneerJarResponseDescriptor = $convert.base64Decode(
    'ChpRdWVyeUdldFBpb25lZXJKYXJSZXNwb25zZRI/CgpwaW9uZWVySmFyGAEgASgLMhkucWFkZW'
    '5hLnFhZGVuYS5QaW9uZWVySmFyQgTI3h8AUgpwaW9uZWVySmFy');

@$core.Deprecated('Use queryAllPioneerJarRequestDescriptor instead')
const QueryAllPioneerJarRequest$json = {
  '1': 'QueryAllPioneerJarRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllPioneerJarRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllPioneerJarRequestDescriptor = $convert.base64Decode(
    'ChlRdWVyeUFsbFBpb25lZXJKYXJSZXF1ZXN0EkYKCnBhZ2luYXRpb24YASABKAsyJi5jb3Ntb3'
    'MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXF1ZXN0UgpwYWdpbmF0aW9u');

@$core.Deprecated('Use queryAllPioneerJarResponseDescriptor instead')
const QueryAllPioneerJarResponse$json = {
  '1': 'QueryAllPioneerJarResponse',
  '2': [
    {'1': 'pioneerJar', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.PioneerJar', '8': {}, '10': 'pioneerJar'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllPioneerJarResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllPioneerJarResponseDescriptor = $convert.base64Decode(
    'ChpRdWVyeUFsbFBpb25lZXJKYXJSZXNwb25zZRI/CgpwaW9uZWVySmFyGAEgAygLMhkucWFkZW'
    '5hLnFhZGVuYS5QaW9uZWVySmFyQgTI3h8AUgpwaW9uZWVySmFyEkcKCnBhZ2luYXRpb24YAiAB'
    'KAsyJy5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXNwb25zZVIKcGFnaW5hdGlvbg'
    '==');

@$core.Deprecated('Use queryGetJarRegulatorRequestDescriptor instead')
const QueryGetJarRegulatorRequest$json = {
  '1': 'QueryGetJarRegulatorRequest',
  '2': [
    {'1': 'jarID', '3': 1, '4': 1, '5': 9, '10': 'jarID'},
  ],
};

/// Descriptor for `QueryGetJarRegulatorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetJarRegulatorRequestDescriptor = $convert.base64Decode(
    'ChtRdWVyeUdldEphclJlZ3VsYXRvclJlcXVlc3QSFAoFamFySUQYASABKAlSBWphcklE');

@$core.Deprecated('Use queryGetJarRegulatorResponseDescriptor instead')
const QueryGetJarRegulatorResponse$json = {
  '1': 'QueryGetJarRegulatorResponse',
  '2': [
    {'1': 'jarRegulator', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.JarRegulator', '8': {}, '10': 'jarRegulator'},
  ],
};

/// Descriptor for `QueryGetJarRegulatorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetJarRegulatorResponseDescriptor = $convert.base64Decode(
    'ChxRdWVyeUdldEphclJlZ3VsYXRvclJlc3BvbnNlEkUKDGphclJlZ3VsYXRvchgBIAEoCzIbLn'
    'FhZGVuYS5xYWRlbmEuSmFyUmVndWxhdG9yQgTI3h8AUgxqYXJSZWd1bGF0b3I=');

@$core.Deprecated('Use queryAllJarRegulatorRequestDescriptor instead')
const QueryAllJarRegulatorRequest$json = {
  '1': 'QueryAllJarRegulatorRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllJarRegulatorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllJarRegulatorRequestDescriptor = $convert.base64Decode(
    'ChtRdWVyeUFsbEphclJlZ3VsYXRvclJlcXVlc3QSRgoKcGFnaW5hdGlvbhgBIAEoCzImLmNvc2'
    '1vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlcXVlc3RSCnBhZ2luYXRpb24=');

@$core.Deprecated('Use queryAllJarRegulatorResponseDescriptor instead')
const QueryAllJarRegulatorResponse$json = {
  '1': 'QueryAllJarRegulatorResponse',
  '2': [
    {'1': 'jarRegulator', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.JarRegulator', '8': {}, '10': 'jarRegulator'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllJarRegulatorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllJarRegulatorResponseDescriptor = $convert.base64Decode(
    'ChxRdWVyeUFsbEphclJlZ3VsYXRvclJlc3BvbnNlEkUKDGphclJlZ3VsYXRvchgBIAMoCzIbLn'
    'FhZGVuYS5xYWRlbmEuSmFyUmVndWxhdG9yQgTI3h8AUgxqYXJSZWd1bGF0b3ISRwoKcGFnaW5h'
    'dGlvbhgCIAEoCzInLmNvc21vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlc3BvbnNlUgpwYW'
    'dpbmF0aW9u');

@$core.Deprecated('Use queryGetSuspiciousTransactionRequestDescriptor instead')
const QueryGetSuspiciousTransactionRequest$json = {
  '1': 'QueryGetSuspiciousTransactionRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `QueryGetSuspiciousTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetSuspiciousTransactionRequestDescriptor = $convert.base64Decode(
    'CiRRdWVyeUdldFN1c3BpY2lvdXNUcmFuc2FjdGlvblJlcXVlc3QSDgoCaWQYASABKARSAmlk');

@$core.Deprecated('Use queryGetSuspiciousTransactionResponseDescriptor instead')
const QueryGetSuspiciousTransactionResponse$json = {
  '1': 'QueryGetSuspiciousTransactionResponse',
  '2': [
    {'1': 'SuspiciousTransaction', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.SuspiciousTransaction', '8': {}, '10': 'SuspiciousTransaction'},
  ],
};

/// Descriptor for `QueryGetSuspiciousTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetSuspiciousTransactionResponseDescriptor = $convert.base64Decode(
    'CiVRdWVyeUdldFN1c3BpY2lvdXNUcmFuc2FjdGlvblJlc3BvbnNlEmAKFVN1c3BpY2lvdXNUcm'
    'Fuc2FjdGlvbhgBIAEoCzIkLnFhZGVuYS5xYWRlbmEuU3VzcGljaW91c1RyYW5zYWN0aW9uQgTI'
    '3h8AUhVTdXNwaWNpb3VzVHJhbnNhY3Rpb24=');

@$core.Deprecated('Use queryAllSuspiciousTransactionRequestDescriptor instead')
const QueryAllSuspiciousTransactionRequest$json = {
  '1': 'QueryAllSuspiciousTransactionRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllSuspiciousTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllSuspiciousTransactionRequestDescriptor = $convert.base64Decode(
    'CiRRdWVyeUFsbFN1c3BpY2lvdXNUcmFuc2FjdGlvblJlcXVlc3QSRgoKcGFnaW5hdGlvbhgBIA'
    'EoCzImLmNvc21vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlcXVlc3RSCnBhZ2luYXRpb24=');

@$core.Deprecated('Use queryAllSuspiciousTransactionResponseDescriptor instead')
const QueryAllSuspiciousTransactionResponse$json = {
  '1': 'QueryAllSuspiciousTransactionResponse',
  '2': [
    {'1': 'SuspiciousTransaction', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.SuspiciousTransaction', '8': {}, '10': 'SuspiciousTransaction'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllSuspiciousTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllSuspiciousTransactionResponseDescriptor = $convert.base64Decode(
    'CiVRdWVyeUFsbFN1c3BpY2lvdXNUcmFuc2FjdGlvblJlc3BvbnNlEmAKFVN1c3BpY2lvdXNUcm'
    'Fuc2FjdGlvbhgBIAMoCzIkLnFhZGVuYS5xYWRlbmEuU3VzcGljaW91c1RyYW5zYWN0aW9uQgTI'
    '3h8AUhVTdXNwaWNpb3VzVHJhbnNhY3Rpb24SRwoKcGFnaW5hdGlvbhgCIAEoCzInLmNvc21vcy'
    '5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlc3BvbnNlUgpwYWdpbmF0aW9u');

@$core.Deprecated('Use queryGetProtectKeyRequestDescriptor instead')
const QueryGetProtectKeyRequest$json = {
  '1': 'QueryGetProtectKeyRequest',
  '2': [
    {'1': 'walletID', '3': 1, '4': 1, '5': 9, '10': 'walletID'},
  ],
};

/// Descriptor for `QueryGetProtectKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetProtectKeyRequestDescriptor = $convert.base64Decode(
    'ChlRdWVyeUdldFByb3RlY3RLZXlSZXF1ZXN0EhoKCHdhbGxldElEGAEgASgJUgh3YWxsZXRJRA'
    '==');

@$core.Deprecated('Use queryGetProtectKeyResponseDescriptor instead')
const QueryGetProtectKeyResponse$json = {
  '1': 'QueryGetProtectKeyResponse',
  '2': [
    {'1': 'protectKey', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.ProtectKey', '8': {}, '10': 'protectKey'},
  ],
};

/// Descriptor for `QueryGetProtectKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetProtectKeyResponseDescriptor = $convert.base64Decode(
    'ChpRdWVyeUdldFByb3RlY3RLZXlSZXNwb25zZRI/Cgpwcm90ZWN0S2V5GAEgASgLMhkucWFkZW'
    '5hLnFhZGVuYS5Qcm90ZWN0S2V5QgTI3h8AUgpwcm90ZWN0S2V5');

@$core.Deprecated('Use queryAllProtectKeyRequestDescriptor instead')
const QueryAllProtectKeyRequest$json = {
  '1': 'QueryAllProtectKeyRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
    {'1': 'credentialID', '3': 2, '4': 1, '5': 9, '10': 'credentialID'},
  ],
};

/// Descriptor for `QueryAllProtectKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllProtectKeyRequestDescriptor = $convert.base64Decode(
    'ChlRdWVyeUFsbFByb3RlY3RLZXlSZXF1ZXN0EkYKCnBhZ2luYXRpb24YASABKAsyJi5jb3Ntb3'
    'MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXF1ZXN0UgpwYWdpbmF0aW9uEiIKDGNyZWRlbnRp'
    'YWxJRBgCIAEoCVIMY3JlZGVudGlhbElE');

@$core.Deprecated('Use queryAllProtectKeyResponseDescriptor instead')
const QueryAllProtectKeyResponse$json = {
  '1': 'QueryAllProtectKeyResponse',
  '2': [
    {'1': 'protectKey', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.ProtectKey', '8': {}, '10': 'protectKey'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllProtectKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllProtectKeyResponseDescriptor = $convert.base64Decode(
    'ChpRdWVyeUFsbFByb3RlY3RLZXlSZXNwb25zZRI/Cgpwcm90ZWN0S2V5GAEgAygLMhkucWFkZW'
    '5hLnFhZGVuYS5Qcm90ZWN0S2V5QgTI3h8AUgpwcm90ZWN0S2V5EkcKCnBhZ2luYXRpb24YAiAB'
    'KAsyJy5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXNwb25zZVIKcGFnaW5hdGlvbg'
    '==');

@$core.Deprecated('Use queryGetRecoverKeyRequestDescriptor instead')
const QueryGetRecoverKeyRequest$json = {
  '1': 'QueryGetRecoverKeyRequest',
  '2': [
    {'1': 'walletID', '3': 1, '4': 1, '5': 9, '10': 'walletID'},
    {'1': 'timestamp', '3': 2, '4': 1, '5': 3, '10': 'timestamp'},
    {'1': 'timestampSignature', '3': 3, '4': 1, '5': 12, '10': 'timestampSignature'},
  ],
};

/// Descriptor for `QueryGetRecoverKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetRecoverKeyRequestDescriptor = $convert.base64Decode(
    'ChlRdWVyeUdldFJlY292ZXJLZXlSZXF1ZXN0EhoKCHdhbGxldElEGAEgASgJUgh3YWxsZXRJRB'
    'IcCgl0aW1lc3RhbXAYAiABKANSCXRpbWVzdGFtcBIuChJ0aW1lc3RhbXBTaWduYXR1cmUYAyAB'
    'KAxSEnRpbWVzdGFtcFNpZ25hdHVyZQ==');

@$core.Deprecated('Use queryGetRecoverKeyResponseDescriptor instead')
const QueryGetRecoverKeyResponse$json = {
  '1': 'QueryGetRecoverKeyResponse',
  '2': [
    {'1': 'recoverKey', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.RecoverKey', '8': {}, '10': 'recoverKey'},
  ],
};

/// Descriptor for `QueryGetRecoverKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetRecoverKeyResponseDescriptor = $convert.base64Decode(
    'ChpRdWVyeUdldFJlY292ZXJLZXlSZXNwb25zZRI/CgpyZWNvdmVyS2V5GAEgASgLMhkucWFkZW'
    '5hLnFhZGVuYS5SZWNvdmVyS2V5QgTI3h8AUgpyZWNvdmVyS2V5');

@$core.Deprecated('Use queryAllRecoverKeyRequestDescriptor instead')
const QueryAllRecoverKeyRequest$json = {
  '1': 'QueryAllRecoverKeyRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
    {'1': 'credentialID', '3': 2, '4': 1, '5': 9, '10': 'credentialID'},
  ],
};

/// Descriptor for `QueryAllRecoverKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllRecoverKeyRequestDescriptor = $convert.base64Decode(
    'ChlRdWVyeUFsbFJlY292ZXJLZXlSZXF1ZXN0EkYKCnBhZ2luYXRpb24YASABKAsyJi5jb3Ntb3'
    'MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXF1ZXN0UgpwYWdpbmF0aW9uEiIKDGNyZWRlbnRp'
    'YWxJRBgCIAEoCVIMY3JlZGVudGlhbElE');

@$core.Deprecated('Use queryAllRecoverKeyResponseDescriptor instead')
const QueryAllRecoverKeyResponse$json = {
  '1': 'QueryAllRecoverKeyResponse',
  '2': [
    {'1': 'recoverKey', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.RecoverKey', '8': {}, '10': 'recoverKey'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllRecoverKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllRecoverKeyResponseDescriptor = $convert.base64Decode(
    'ChpRdWVyeUFsbFJlY292ZXJLZXlSZXNwb25zZRI/CgpyZWNvdmVyS2V5GAEgAygLMhkucWFkZW'
    '5hLnFhZGVuYS5SZWNvdmVyS2V5QgTI3h8AUgpyZWNvdmVyS2V5EkcKCnBhZ2luYXRpb24YAiAB'
    'KAsyJy5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXNwb25zZVIKcGFnaW5hdGlvbg'
    '==');

@$core.Deprecated('Use queryTreasuryRequestDescriptor instead')
const QueryTreasuryRequest$json = {
  '1': 'QueryTreasuryRequest',
};

/// Descriptor for `QueryTreasuryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTreasuryRequestDescriptor = $convert.base64Decode(
    'ChRRdWVyeVRyZWFzdXJ5UmVxdWVzdA==');

@$core.Deprecated('Use queryTreasuryResponseDescriptor instead')
const QueryTreasuryResponse$json = {
  '1': 'QueryTreasuryResponse',
  '2': [
    {'1': 'totalBalance', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'totalBalance'},
    {'1': 'encryptedBalance', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'encryptedBalance'},
  ],
};

/// Descriptor for `QueryTreasuryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTreasuryResponseDescriptor = $convert.base64Decode(
    'ChVRdWVyeVRyZWFzdXJ5UmVzcG9uc2USQwoMdG90YWxCYWxhbmNlGAEgASgLMhkuY29zbW9zLm'
    'Jhc2UudjFiZXRhMS5Db2luQgTI3h8AUgx0b3RhbEJhbGFuY2USSwoQZW5jcnlwdGVkQmFsYW5j'
    'ZRgCIAEoCzIZLmNvc21vcy5iYXNlLnYxYmV0YTEuQ29pbkIEyN4fAFIQZW5jcnlwdGVkQmFsYW'
    '5jZQ==');

@$core.Deprecated('Use queryAccountRequestDescriptor instead')
const QueryAccountRequest$json = {
  '1': 'QueryAccountRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `QueryAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAccountRequestDescriptor = $convert.base64Decode(
    'ChNRdWVyeUFjY291bnRSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWU=');

@$core.Deprecated('Use queryAccountResponseDescriptor instead')
const QueryAccountResponse$json = {
  '1': 'QueryAccountResponse',
  '2': [
    {'1': 'transparentBalance', '3': 1, '4': 1, '5': 9, '10': 'transparentBalance'},
    {'1': 'encryptedBalance', '3': 2, '4': 1, '5': 9, '10': 'encryptedBalance'},
  ],
};

/// Descriptor for `QueryAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAccountResponseDescriptor = $convert.base64Decode(
    'ChRRdWVyeUFjY291bnRSZXNwb25zZRIuChJ0cmFuc3BhcmVudEJhbGFuY2UYASABKAlSEnRyYW'
    '5zcGFyZW50QmFsYW5jZRIqChBlbmNyeXB0ZWRCYWxhbmNlGAIgASgJUhBlbmNyeXB0ZWRCYWxh'
    'bmNl');

@$core.Deprecated('Use queryIncentivesRequestDescriptor instead')
const QueryIncentivesRequest$json = {
  '1': 'QueryIncentivesRequest',
};

/// Descriptor for `QueryIncentivesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryIncentivesRequestDescriptor = $convert.base64Decode(
    'ChZRdWVyeUluY2VudGl2ZXNSZXF1ZXN0');

@$core.Deprecated('Use queryIncentivesResponseDescriptor instead')
const QueryIncentivesResponse$json = {
  '1': 'QueryIncentivesResponse',
  '2': [
    {'1': 'createWalletIncentive', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'createWalletIncentive'},
    {'1': 'createEphemeralWalletIncentive', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'createEphemeralWalletIncentive'},
    {'1': 'createWalletTransparentIncentive', '3': 3, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'createWalletTransparentIncentive'},
    {'1': 'createEphemeralWalletTransparentIncentive', '3': 4, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'createEphemeralWalletTransparentIncentive'},
  ],
};

/// Descriptor for `QueryIncentivesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryIncentivesResponseDescriptor = $convert.base64Decode(
    'ChdRdWVyeUluY2VudGl2ZXNSZXNwb25zZRJVChVjcmVhdGVXYWxsZXRJbmNlbnRpdmUYASABKA'
    'syGS5jb3Ntb3MuYmFzZS52MWJldGExLkNvaW5CBMjeHwBSFWNyZWF0ZVdhbGxldEluY2VudGl2'
    'ZRJnCh5jcmVhdGVFcGhlbWVyYWxXYWxsZXRJbmNlbnRpdmUYAiABKAsyGS5jb3Ntb3MuYmFzZS'
    '52MWJldGExLkNvaW5CBMjeHwBSHmNyZWF0ZUVwaGVtZXJhbFdhbGxldEluY2VudGl2ZRJrCiBj'
    'cmVhdGVXYWxsZXRUcmFuc3BhcmVudEluY2VudGl2ZRgDIAEoCzIZLmNvc21vcy5iYXNlLnYxYm'
    'V0YTEuQ29pbkIEyN4fAFIgY3JlYXRlV2FsbGV0VHJhbnNwYXJlbnRJbmNlbnRpdmUSfQopY3Jl'
    'YXRlRXBoZW1lcmFsV2FsbGV0VHJhbnNwYXJlbnRJbmNlbnRpdmUYBCABKAsyGS5jb3Ntb3MuYm'
    'FzZS52MWJldGExLkNvaW5CBMjeHwBSKWNyZWF0ZUVwaGVtZXJhbFdhbGxldFRyYW5zcGFyZW50'
    'SW5jZW50aXZl');

@$core.Deprecated('Use queryEnclaveValidateEnclaveIdentityRequestDescriptor instead')
const QueryEnclaveValidateEnclaveIdentityRequest$json = {
  '1': 'QueryEnclaveValidateEnclaveIdentityRequest',
  '2': [
    {'1': 'remoteReport', '3': 1, '4': 1, '5': 12, '10': 'remoteReport'},
    {'1': 'uniqueID', '3': 2, '4': 1, '5': 9, '10': 'uniqueID'},
    {'1': 'signerID', '3': 3, '4': 1, '5': 9, '10': 'signerID'},
    {'1': 'productID', '3': 4, '4': 1, '5': 9, '10': 'productID'},
  ],
};

/// Descriptor for `QueryEnclaveValidateEnclaveIdentityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryEnclaveValidateEnclaveIdentityRequestDescriptor = $convert.base64Decode(
    'CipRdWVyeUVuY2xhdmVWYWxpZGF0ZUVuY2xhdmVJZGVudGl0eVJlcXVlc3QSIgoMcmVtb3RlUm'
    'Vwb3J0GAEgASgMUgxyZW1vdGVSZXBvcnQSGgoIdW5pcXVlSUQYAiABKAlSCHVuaXF1ZUlEEhoK'
    'CHNpZ25lcklEGAMgASgJUghzaWduZXJJRBIcCglwcm9kdWN0SUQYBCABKAlSCXByb2R1Y3RJRA'
    '==');

@$core.Deprecated('Use queryEnclaveValidateEnclaveIdentityResponseDescriptor instead')
const QueryEnclaveValidateEnclaveIdentityResponse$json = {
  '1': 'QueryEnclaveValidateEnclaveIdentityResponse',
  '2': [
    {'1': 'remoteReport', '3': 1, '4': 1, '5': 12, '10': 'remoteReport'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `QueryEnclaveValidateEnclaveIdentityResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryEnclaveValidateEnclaveIdentityResponseDescriptor = $convert.base64Decode(
    'CitRdWVyeUVuY2xhdmVWYWxpZGF0ZUVuY2xhdmVJZGVudGl0eVJlc3BvbnNlEiIKDHJlbW90ZV'
    'JlcG9ydBgBIAEoDFIMcmVtb3RlUmVwb3J0EhYKBnN0YXR1cxgCIAEoCVIGc3RhdHVz');

@$core.Deprecated('Use queryEnclaveSyncEnclaveRequestDescriptor instead')
const QueryEnclaveSyncEnclaveRequest$json = {
  '1': 'QueryEnclaveSyncEnclaveRequest',
  '2': [
    {'1': 'remoteReport', '3': 1, '4': 1, '5': 12, '10': 'remoteReport'},
    {'1': 'enclavePubK', '3': 2, '4': 1, '5': 9, '10': 'enclavePubK'},
  ],
};

/// Descriptor for `QueryEnclaveSyncEnclaveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryEnclaveSyncEnclaveRequestDescriptor = $convert.base64Decode(
    'Ch5RdWVyeUVuY2xhdmVTeW5jRW5jbGF2ZVJlcXVlc3QSIgoMcmVtb3RlUmVwb3J0GAEgASgMUg'
    'xyZW1vdGVSZXBvcnQSIAoLZW5jbGF2ZVB1YksYAiABKAlSC2VuY2xhdmVQdWJL');

@$core.Deprecated('Use queryEnclaveSyncEnclaveResponseDescriptor instead')
const QueryEnclaveSyncEnclaveResponse$json = {
  '1': 'QueryEnclaveSyncEnclaveResponse',
  '2': [
    {'1': 'remoteReport', '3': 1, '4': 1, '5': 12, '10': 'remoteReport'},
    {'1': 'encEnclaveParamsEnclavePubK', '3': 2, '4': 1, '5': 12, '10': 'encEnclaveParamsEnclavePubK'},
  ],
};

/// Descriptor for `QueryEnclaveSyncEnclaveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryEnclaveSyncEnclaveResponseDescriptor = $convert.base64Decode(
    'Ch9RdWVyeUVuY2xhdmVTeW5jRW5jbGF2ZVJlc3BvbnNlEiIKDHJlbW90ZVJlcG9ydBgBIAEoDF'
    'IMcmVtb3RlUmVwb3J0EkAKG2VuY0VuY2xhdmVQYXJhbXNFbmNsYXZlUHViSxgCIAEoDFIbZW5j'
    'RW5jbGF2ZVBhcmFtc0VuY2xhdmVQdWJL');

@$core.Deprecated('Use queryEnclaveSecretShareRequestDescriptor instead')
const QueryEnclaveSecretShareRequest$json = {
  '1': 'QueryEnclaveSecretShareRequest',
  '2': [
    {'1': 'remoteReport', '3': 1, '4': 1, '5': 12, '10': 'remoteReport'},
    {'1': 'enclavePubK', '3': 2, '4': 1, '5': 9, '10': 'enclavePubK'},
    {'1': 'pubKID', '3': 3, '4': 1, '5': 9, '10': 'pubKID'},
  ],
};

/// Descriptor for `QueryEnclaveSecretShareRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryEnclaveSecretShareRequestDescriptor = $convert.base64Decode(
    'Ch5RdWVyeUVuY2xhdmVTZWNyZXRTaGFyZVJlcXVlc3QSIgoMcmVtb3RlUmVwb3J0GAEgASgMUg'
    'xyZW1vdGVSZXBvcnQSIAoLZW5jbGF2ZVB1YksYAiABKAlSC2VuY2xhdmVQdWJLEhYKBnB1YktJ'
    'RBgDIAEoCVIGcHViS0lE');

@$core.Deprecated('Use queryEnclaveSecretShareResponseDescriptor instead')
const QueryEnclaveSecretShareResponse$json = {
  '1': 'QueryEnclaveSecretShareResponse',
  '2': [
    {'1': 'remoteReport', '3': 1, '4': 1, '5': 12, '10': 'remoteReport'},
    {'1': 'encSecretShareEnclavePubK', '3': 2, '4': 1, '5': 12, '10': 'encSecretShareEnclavePubK'},
  ],
};

/// Descriptor for `QueryEnclaveSecretShareResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryEnclaveSecretShareResponseDescriptor = $convert.base64Decode(
    'Ch9RdWVyeUVuY2xhdmVTZWNyZXRTaGFyZVJlc3BvbnNlEiIKDHJlbW90ZVJlcG9ydBgBIAEoDF'
    'IMcmVtb3RlUmVwb3J0EjwKGWVuY1NlY3JldFNoYXJlRW5jbGF2ZVB1YksYAiABKAxSGWVuY1Nl'
    'Y3JldFNoYXJlRW5jbGF2ZVB1Yks=');

@$core.Deprecated('Use queryEnclaveRecoverKeyShareRequestDescriptor instead')
const QueryEnclaveRecoverKeyShareRequest$json = {
  '1': 'QueryEnclaveRecoverKeyShareRequest',
  '2': [
    {'1': 'remoteReport', '3': 1, '4': 1, '5': 12, '10': 'remoteReport'},
    {'1': 'newWalletID', '3': 2, '4': 1, '5': 9, '10': 'newWalletID'},
    {'1': 'shareWalletID', '3': 3, '4': 1, '5': 9, '10': 'shareWalletID'},
    {'1': 'encShareWalletPubK', '3': 4, '4': 1, '5': 12, '10': 'encShareWalletPubK'},
  ],
};

/// Descriptor for `QueryEnclaveRecoverKeyShareRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryEnclaveRecoverKeyShareRequestDescriptor = $convert.base64Decode(
    'CiJRdWVyeUVuY2xhdmVSZWNvdmVyS2V5U2hhcmVSZXF1ZXN0EiIKDHJlbW90ZVJlcG9ydBgBIA'
    'EoDFIMcmVtb3RlUmVwb3J0EiAKC25ld1dhbGxldElEGAIgASgJUgtuZXdXYWxsZXRJRBIkCg1z'
    'aGFyZVdhbGxldElEGAMgASgJUg1zaGFyZVdhbGxldElEEi4KEmVuY1NoYXJlV2FsbGV0UHViSx'
    'gEIAEoDFISZW5jU2hhcmVXYWxsZXRQdWJL');

@$core.Deprecated('Use queryEnclaveRecoverKeyShareResponseDescriptor instead')
const QueryEnclaveRecoverKeyShareResponse$json = {
  '1': 'QueryEnclaveRecoverKeyShareResponse',
  '2': [
    {'1': 'remoteReport', '3': 1, '4': 1, '5': 12, '10': 'remoteReport'},
    {'1': 'encShareWalletPubK', '3': 2, '4': 1, '5': 12, '10': 'encShareWalletPubK'},
  ],
};

/// Descriptor for `QueryEnclaveRecoverKeyShareResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryEnclaveRecoverKeyShareResponseDescriptor = $convert.base64Decode(
    'CiNRdWVyeUVuY2xhdmVSZWNvdmVyS2V5U2hhcmVSZXNwb25zZRIiCgxyZW1vdGVSZXBvcnQYAS'
    'ABKAxSDHJlbW90ZVJlcG9ydBIuChJlbmNTaGFyZVdhbGxldFB1YksYAiABKAxSEmVuY1NoYXJl'
    'V2FsbGV0UHViSw==');

@$core.Deprecated('Use queryFindCredentialRequestDescriptor instead')
const QueryFindCredentialRequest$json = {
  '1': 'QueryFindCredentialRequest',
  '2': [
    {'1': 'credentialPC', '3': 1, '4': 1, '5': 12, '10': 'credentialPC'},
    {'1': 'credentialType', '3': 2, '4': 1, '5': 9, '10': 'credentialType'},
    {'1': 'sSIntervalPubKID', '3': 3, '4': 1, '5': 9, '10': 'sSIntervalPubKID'},
    {'1': 'encUserCredentialPubKSSIntervalPubK', '3': 4, '4': 1, '5': 12, '10': 'encUserCredentialPubKSSIntervalPubK'},
    {'1': 'encProofPCSSIntervalPubK', '3': 5, '4': 1, '5': 12, '10': 'encProofPCSSIntervalPubK'},
    {'1': 'encCheckPCSSIntervalPubK', '3': 6, '4': 1, '5': 12, '10': 'encCheckPCSSIntervalPubK'},
  ],
};

/// Descriptor for `QueryFindCredentialRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryFindCredentialRequestDescriptor = $convert.base64Decode(
    'ChpRdWVyeUZpbmRDcmVkZW50aWFsUmVxdWVzdBIiCgxjcmVkZW50aWFsUEMYASABKAxSDGNyZW'
    'RlbnRpYWxQQxImCg5jcmVkZW50aWFsVHlwZRgCIAEoCVIOY3JlZGVudGlhbFR5cGUSKgoQc1NJ'
    'bnRlcnZhbFB1YktJRBgDIAEoCVIQc1NJbnRlcnZhbFB1YktJRBJQCiNlbmNVc2VyQ3JlZGVudG'
    'lhbFB1YktTU0ludGVydmFsUHViSxgEIAEoDFIjZW5jVXNlckNyZWRlbnRpYWxQdWJLU1NJbnRl'
    'cnZhbFB1YksSOgoYZW5jUHJvb2ZQQ1NTSW50ZXJ2YWxQdWJLGAUgASgMUhhlbmNQcm9vZlBDU1'
    'NJbnRlcnZhbFB1YksSOgoYZW5jQ2hlY2tQQ1NTSW50ZXJ2YWxQdWJLGAYgASgMUhhlbmNDaGVj'
    'a1BDU1NJbnRlcnZhbFB1Yks=');

@$core.Deprecated('Use queryFindCredentialResponseDescriptor instead')
const QueryFindCredentialResponse$json = {
  '1': 'QueryFindCredentialResponse',
  '2': [
    {'1': 'encPersonalInfoUserCredentialPubK', '3': 1, '4': 1, '5': 12, '10': 'encPersonalInfoUserCredentialPubK'},
    {'1': 'encCredentialIDUserCredentialPubK', '3': 2, '4': 1, '5': 12, '10': 'encCredentialIDUserCredentialPubK'},
  ],
};

/// Descriptor for `QueryFindCredentialResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryFindCredentialResponseDescriptor = $convert.base64Decode(
    'ChtRdWVyeUZpbmRDcmVkZW50aWFsUmVzcG9uc2USTAohZW5jUGVyc29uYWxJbmZvVXNlckNyZW'
    'RlbnRpYWxQdWJLGAEgASgMUiFlbmNQZXJzb25hbEluZm9Vc2VyQ3JlZGVudGlhbFB1YksSTAoh'
    'ZW5jQ3JlZGVudGlhbElEVXNlckNyZWRlbnRpYWxQdWJLGAIgASgMUiFlbmNDcmVkZW50aWFsSU'
    'RVc2VyQ3JlZGVudGlhbFB1Yks=');

@$core.Deprecated('Use queryGetEnclaveIdentityRequestDescriptor instead')
const QueryGetEnclaveIdentityRequest$json = {
  '1': 'QueryGetEnclaveIdentityRequest',
  '2': [
    {'1': 'uniqueID', '3': 1, '4': 1, '5': 9, '10': 'uniqueID'},
  ],
};

/// Descriptor for `QueryGetEnclaveIdentityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetEnclaveIdentityRequestDescriptor = $convert.base64Decode(
    'Ch5RdWVyeUdldEVuY2xhdmVJZGVudGl0eVJlcXVlc3QSGgoIdW5pcXVlSUQYASABKAlSCHVuaX'
    'F1ZUlE');

@$core.Deprecated('Use queryGetEnclaveIdentityResponseDescriptor instead')
const QueryGetEnclaveIdentityResponse$json = {
  '1': 'QueryGetEnclaveIdentityResponse',
  '2': [
    {'1': 'enclaveIdentity', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.EnclaveIdentity', '8': {}, '10': 'enclaveIdentity'},
  ],
};

/// Descriptor for `QueryGetEnclaveIdentityResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetEnclaveIdentityResponseDescriptor = $convert.base64Decode(
    'Ch9RdWVyeUdldEVuY2xhdmVJZGVudGl0eVJlc3BvbnNlEk4KD2VuY2xhdmVJZGVudGl0eRgBIA'
    'EoCzIeLnFhZGVuYS5xYWRlbmEuRW5jbGF2ZUlkZW50aXR5QgTI3h8AUg9lbmNsYXZlSWRlbnRp'
    'dHk=');

@$core.Deprecated('Use queryAllEnclaveIdentityRequestDescriptor instead')
const QueryAllEnclaveIdentityRequest$json = {
  '1': 'QueryAllEnclaveIdentityRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllEnclaveIdentityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllEnclaveIdentityRequestDescriptor = $convert.base64Decode(
    'Ch5RdWVyeUFsbEVuY2xhdmVJZGVudGl0eVJlcXVlc3QSRgoKcGFnaW5hdGlvbhgBIAEoCzImLm'
    'Nvc21vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlcXVlc3RSCnBhZ2luYXRpb24=');

@$core.Deprecated('Use queryAllEnclaveIdentityResponseDescriptor instead')
const QueryAllEnclaveIdentityResponse$json = {
  '1': 'QueryAllEnclaveIdentityResponse',
  '2': [
    {'1': 'enclaveIdentity', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.EnclaveIdentity', '8': {}, '10': 'enclaveIdentity'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllEnclaveIdentityResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllEnclaveIdentityResponseDescriptor = $convert.base64Decode(
    'Ch9RdWVyeUFsbEVuY2xhdmVJZGVudGl0eVJlc3BvbnNlEk4KD2VuY2xhdmVJZGVudGl0eRgBIA'
    'MoCzIeLnFhZGVuYS5xYWRlbmEuRW5jbGF2ZUlkZW50aXR5QgTI3h8AUg9lbmNsYXZlSWRlbnRp'
    'dHkSRwoKcGFnaW5hdGlvbhgCIAEoCzInLmNvc21vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZV'
    'Jlc3BvbnNlUgpwYWdpbmF0aW9u');

