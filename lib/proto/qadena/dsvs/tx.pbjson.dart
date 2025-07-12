//
//  Generated code. Do not modify.
//  source: qadena/dsvs/tx.proto
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
    {'1': 'params', '3': 2, '4': 1, '5': 11, '6': '.qadena.dsvs.Params', '8': {}, '10': 'params'},
  ],
  '7': {},
};

/// Descriptor for `MsgUpdateParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateParamsDescriptor = $convert.base64Decode(
    'Cg9Nc2dVcGRhdGVQYXJhbXMSNgoJYXV0aG9yaXR5GAEgASgJQhjStC0UY29zbW9zLkFkZHJlc3'
    'NTdHJpbmdSCWF1dGhvcml0eRI2CgZwYXJhbXMYAiABKAsyEy5xYWRlbmEuZHN2cy5QYXJhbXNC'
    'CcjeHwCo57AqAVIGcGFyYW1zOkaC57AqCWF1dGhvcml0eYrnsCozZ2l0aHViLmNvbS9jM3F0ZW'
    'NoL3FhZGVuYV92My94L2RzdnMvTXNnVXBkYXRlUGFyYW1z');

@$core.Deprecated('Use msgUpdateParamsResponseDescriptor instead')
const MsgUpdateParamsResponse$json = {
  '1': 'MsgUpdateParamsResponse',
};

/// Descriptor for `MsgUpdateParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateParamsResponseDescriptor = $convert.base64Decode(
    'ChdNc2dVcGRhdGVQYXJhbXNSZXNwb25zZQ==');

@$core.Deprecated('Use msgCreateDocumentDescriptor instead')
const MsgCreateDocument$json = {
  '1': 'MsgCreateDocument',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'documentID', '3': 2, '4': 1, '5': 9, '10': 'documentID'},
    {'1': 'documentType', '3': 3, '4': 1, '5': 9, '10': 'documentType'},
    {'1': 'companyName', '3': 4, '4': 1, '5': 9, '10': 'companyName'},
    {'1': 'requiredSignatory', '3': 5, '4': 3, '5': 11, '6': '.qadena.dsvs.VShareSignatory', '10': 'requiredSignatory'},
    {'1': 'hash', '3': 6, '4': 1, '5': 12, '10': 'hash'},
  ],
  '7': {},
};

/// Descriptor for `MsgCreateDocument`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateDocumentDescriptor = $convert.base64Decode(
    'ChFNc2dDcmVhdGVEb2N1bWVudBIYCgdjcmVhdG9yGAEgASgJUgdjcmVhdG9yEh4KCmRvY3VtZW'
    '50SUQYAiABKAlSCmRvY3VtZW50SUQSIgoMZG9jdW1lbnRUeXBlGAMgASgJUgxkb2N1bWVudFR5'
    'cGUSIAoLY29tcGFueU5hbWUYBCABKAlSC2NvbXBhbnlOYW1lEkoKEXJlcXVpcmVkU2lnbmF0b3'
    'J5GAUgAygLMhwucWFkZW5hLmRzdnMuVlNoYXJlU2lnbmF0b3J5UhFyZXF1aXJlZFNpZ25hdG9y'
    'eRISCgRoYXNoGAYgASgMUgRoYXNoOgyC57AqB2NyZWF0b3I=');

@$core.Deprecated('Use msgCreateDocumentResponseDescriptor instead')
const MsgCreateDocumentResponse$json = {
  '1': 'MsgCreateDocumentResponse',
};

/// Descriptor for `MsgCreateDocumentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateDocumentResponseDescriptor = $convert.base64Decode(
    'ChlNc2dDcmVhdGVEb2N1bWVudFJlc3BvbnNl');

@$core.Deprecated('Use msgSignDocumentDescriptor instead')
const MsgSignDocument$json = {
  '1': 'MsgSignDocument',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'completedSignatory', '3': 2, '4': 1, '5': 11, '6': '.qadena.dsvs.VShareSignatory', '10': 'completedSignatory'},
    {'1': 'currentHash', '3': 3, '4': 1, '5': 12, '10': 'currentHash'},
    {'1': 'hash', '3': 4, '4': 1, '5': 12, '10': 'hash'},
  ],
  '7': {},
};

/// Descriptor for `MsgSignDocument`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgSignDocumentDescriptor = $convert.base64Decode(
    'Cg9Nc2dTaWduRG9jdW1lbnQSGAoHY3JlYXRvchgBIAEoCVIHY3JlYXRvchJMChJjb21wbGV0ZW'
    'RTaWduYXRvcnkYAiABKAsyHC5xYWRlbmEuZHN2cy5WU2hhcmVTaWduYXRvcnlSEmNvbXBsZXRl'
    'ZFNpZ25hdG9yeRIgCgtjdXJyZW50SGFzaBgDIAEoDFILY3VycmVudEhhc2gSEgoEaGFzaBgEIA'
    'EoDFIEaGFzaDoMguewKgdjcmVhdG9y');

@$core.Deprecated('Use msgSignDocumentResponseDescriptor instead')
const MsgSignDocumentResponse$json = {
  '1': 'MsgSignDocumentResponse',
};

/// Descriptor for `MsgSignDocumentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgSignDocumentResponseDescriptor = $convert.base64Decode(
    'ChdNc2dTaWduRG9jdW1lbnRSZXNwb25zZQ==');

@$core.Deprecated('Use msgRegisterAuthorizedSignatoryDescriptor instead')
const MsgRegisterAuthorizedSignatory$json = {
  '1': 'MsgRegisterAuthorizedSignatory',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'vShareAuthorizedSignatory', '3': 2, '4': 1, '5': 11, '6': '.qadena.dsvs.VShareAuthorizedSignatory', '10': 'vShareAuthorizedSignatory'},
  ],
  '7': {},
};

/// Descriptor for `MsgRegisterAuthorizedSignatory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRegisterAuthorizedSignatoryDescriptor = $convert.base64Decode(
    'Ch5Nc2dSZWdpc3RlckF1dGhvcml6ZWRTaWduYXRvcnkSGAoHY3JlYXRvchgBIAEoCVIHY3JlYX'
    'RvchJkChl2U2hhcmVBdXRob3JpemVkU2lnbmF0b3J5GAIgASgLMiYucWFkZW5hLmRzdnMuVlNo'
    'YXJlQXV0aG9yaXplZFNpZ25hdG9yeVIZdlNoYXJlQXV0aG9yaXplZFNpZ25hdG9yeToMguewKg'
    'djcmVhdG9y');

@$core.Deprecated('Use msgRegisterAuthorizedSignatoryResponseDescriptor instead')
const MsgRegisterAuthorizedSignatoryResponse$json = {
  '1': 'MsgRegisterAuthorizedSignatoryResponse',
};

/// Descriptor for `MsgRegisterAuthorizedSignatoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRegisterAuthorizedSignatoryResponseDescriptor = $convert.base64Decode(
    'CiZNc2dSZWdpc3RlckF1dGhvcml6ZWRTaWduYXRvcnlSZXNwb25zZQ==');

@$core.Deprecated('Use msgRemoveDocumentDescriptor instead')
const MsgRemoveDocument$json = {
  '1': 'MsgRemoveDocument',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'documentID', '3': 2, '4': 1, '5': 9, '10': 'documentID'},
  ],
  '7': {},
};

/// Descriptor for `MsgRemoveDocument`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRemoveDocumentDescriptor = $convert.base64Decode(
    'ChFNc2dSZW1vdmVEb2N1bWVudBIYCgdjcmVhdG9yGAEgASgJUgdjcmVhdG9yEh4KCmRvY3VtZW'
    '50SUQYAiABKAlSCmRvY3VtZW50SUQ6DILnsCoHY3JlYXRvcg==');

@$core.Deprecated('Use msgRemoveDocumentResponseDescriptor instead')
const MsgRemoveDocumentResponse$json = {
  '1': 'MsgRemoveDocumentResponse',
};

/// Descriptor for `MsgRemoveDocumentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgRemoveDocumentResponseDescriptor = $convert.base64Decode(
    'ChlNc2dSZW1vdmVEb2N1bWVudFJlc3BvbnNl');

