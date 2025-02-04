//
//  Generated code. Do not modify.
//  source: qadena/nameservice/tx.proto
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
    {'1': 'params', '3': 2, '4': 1, '5': 11, '6': '.qadena.nameservice.Params', '8': {}, '10': 'params'},
  ],
  '7': {},
};

/// Descriptor for `MsgUpdateParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateParamsDescriptor = $convert.base64Decode(
    'Cg9Nc2dVcGRhdGVQYXJhbXMSNgoJYXV0aG9yaXR5GAEgASgJQhjStC0UY29zbW9zLkFkZHJlc3'
    'NTdHJpbmdSCWF1dGhvcml0eRI9CgZwYXJhbXMYAiABKAsyGi5xYWRlbmEubmFtZXNlcnZpY2Uu'
    'UGFyYW1zQgnI3h8AqOewKgFSBnBhcmFtczo3guewKglhdXRob3JpdHmK57AqJHFhZGVuYS94L2'
    '5hbWVzZXJ2aWNlL01zZ1VwZGF0ZVBhcmFtcw==');

@$core.Deprecated('Use msgUpdateParamsResponseDescriptor instead')
const MsgUpdateParamsResponse$json = {
  '1': 'MsgUpdateParamsResponse',
};

/// Descriptor for `MsgUpdateParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateParamsResponseDescriptor = $convert.base64Decode(
    'ChdNc2dVcGRhdGVQYXJhbXNSZXNwb25zZQ==');

@$core.Deprecated('Use msgBindCredentialDescriptor instead')
const MsgBindCredential$json = {
  '1': 'MsgBindCredential',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'credentialType', '3': 2, '4': 1, '5': 9, '10': 'credentialType'},
    {'1': 'credentialInfo', '3': 3, '4': 1, '5': 9, '10': 'credentialInfo'},
    {'1': 'credentialPedersenCommit', '3': 4, '4': 1, '5': 11, '6': '.qadena.nameservice.BPedersenCommit', '10': 'credentialPedersenCommit'},
  ],
  '7': {},
};

/// Descriptor for `MsgBindCredential`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgBindCredentialDescriptor = $convert.base64Decode(
    'ChFNc2dCaW5kQ3JlZGVudGlhbBIYCgdjcmVhdG9yGAEgASgJUgdjcmVhdG9yEiYKDmNyZWRlbn'
    'RpYWxUeXBlGAIgASgJUg5jcmVkZW50aWFsVHlwZRImCg5jcmVkZW50aWFsSW5mbxgDIAEoCVIO'
    'Y3JlZGVudGlhbEluZm8SXwoYY3JlZGVudGlhbFBlZGVyc2VuQ29tbWl0GAQgASgLMiMucWFkZW'
    '5hLm5hbWVzZXJ2aWNlLkJQZWRlcnNlbkNvbW1pdFIYY3JlZGVudGlhbFBlZGVyc2VuQ29tbWl0'
    'OgyC57AqB2NyZWF0b3I=');

@$core.Deprecated('Use msgBindCredentialResponseDescriptor instead')
const MsgBindCredentialResponse$json = {
  '1': 'MsgBindCredentialResponse',
};

/// Descriptor for `MsgBindCredentialResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgBindCredentialResponseDescriptor = $convert.base64Decode(
    'ChlNc2dCaW5kQ3JlZGVudGlhbFJlc3BvbnNl');

