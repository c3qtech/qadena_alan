//
//  Generated code. Do not modify.
//  source: qadena/dsvs/query.proto
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
    {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.qadena.dsvs.Params', '8': {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode(
    'ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEjYKBnBhcmFtcxgBIAEoCzITLnFhZGVuYS5kc3ZzLlBhcm'
    'Ftc0IJyN4fAKjnsCoBUgZwYXJhbXM=');

@$core.Deprecated('Use queryGetDocumentHashRequestDescriptor instead')
const QueryGetDocumentHashRequest$json = {
  '1': 'QueryGetDocumentHashRequest',
  '2': [
    {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
  ],
};

/// Descriptor for `QueryGetDocumentHashRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetDocumentHashRequestDescriptor = $convert.base64Decode(
    'ChtRdWVyeUdldERvY3VtZW50SGFzaFJlcXVlc3QSEgoEaGFzaBgBIAEoDFIEaGFzaA==');

@$core.Deprecated('Use queryGetDocumentHashResponseDescriptor instead')
const QueryGetDocumentHashResponse$json = {
  '1': 'QueryGetDocumentHashResponse',
  '2': [
    {'1': 'documentHash', '3': 1, '4': 1, '5': 11, '6': '.qadena.dsvs.DocumentHash', '8': {}, '10': 'documentHash'},
  ],
};

/// Descriptor for `QueryGetDocumentHashResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetDocumentHashResponseDescriptor = $convert.base64Decode(
    'ChxRdWVyeUdldERvY3VtZW50SGFzaFJlc3BvbnNlEkMKDGRvY3VtZW50SGFzaBgBIAEoCzIZLn'
    'FhZGVuYS5kc3ZzLkRvY3VtZW50SGFzaEIEyN4fAFIMZG9jdW1lbnRIYXNo');

@$core.Deprecated('Use queryAllDocumentHashRequestDescriptor instead')
const QueryAllDocumentHashRequest$json = {
  '1': 'QueryAllDocumentHashRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllDocumentHashRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllDocumentHashRequestDescriptor = $convert.base64Decode(
    'ChtRdWVyeUFsbERvY3VtZW50SGFzaFJlcXVlc3QSRgoKcGFnaW5hdGlvbhgBIAEoCzImLmNvc2'
    '1vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlcXVlc3RSCnBhZ2luYXRpb24=');

@$core.Deprecated('Use queryAllDocumentHashResponseDescriptor instead')
const QueryAllDocumentHashResponse$json = {
  '1': 'QueryAllDocumentHashResponse',
  '2': [
    {'1': 'documentHash', '3': 1, '4': 3, '5': 11, '6': '.qadena.dsvs.DocumentHash', '8': {}, '10': 'documentHash'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllDocumentHashResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllDocumentHashResponseDescriptor = $convert.base64Decode(
    'ChxRdWVyeUFsbERvY3VtZW50SGFzaFJlc3BvbnNlEkMKDGRvY3VtZW50SGFzaBgBIAMoCzIZLn'
    'FhZGVuYS5kc3ZzLkRvY3VtZW50SGFzaEIEyN4fAFIMZG9jdW1lbnRIYXNoEkcKCnBhZ2luYXRp'
    'b24YAiABKAsyJy5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXNwb25zZVIKcGFnaW'
    '5hdGlvbg==');

@$core.Deprecated('Use queryGetDocumentRequestDescriptor instead')
const QueryGetDocumentRequest$json = {
  '1': 'QueryGetDocumentRequest',
  '2': [
    {'1': 'documentID', '3': 1, '4': 1, '5': 9, '10': 'documentID'},
  ],
};

/// Descriptor for `QueryGetDocumentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetDocumentRequestDescriptor = $convert.base64Decode(
    'ChdRdWVyeUdldERvY3VtZW50UmVxdWVzdBIeCgpkb2N1bWVudElEGAEgASgJUgpkb2N1bWVudE'
    'lE');

@$core.Deprecated('Use queryGetDocumentResponseDescriptor instead')
const QueryGetDocumentResponse$json = {
  '1': 'QueryGetDocumentResponse',
  '2': [
    {'1': 'document', '3': 1, '4': 1, '5': 11, '6': '.qadena.dsvs.Document', '8': {}, '10': 'document'},
  ],
};

/// Descriptor for `QueryGetDocumentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetDocumentResponseDescriptor = $convert.base64Decode(
    'ChhRdWVyeUdldERvY3VtZW50UmVzcG9uc2USNwoIZG9jdW1lbnQYASABKAsyFS5xYWRlbmEuZH'
    'N2cy5Eb2N1bWVudEIEyN4fAFIIZG9jdW1lbnQ=');

@$core.Deprecated('Use queryAllDocumentRequestDescriptor instead')
const QueryAllDocumentRequest$json = {
  '1': 'QueryAllDocumentRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllDocumentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllDocumentRequestDescriptor = $convert.base64Decode(
    'ChdRdWVyeUFsbERvY3VtZW50UmVxdWVzdBJGCgpwYWdpbmF0aW9uGAEgASgLMiYuY29zbW9zLm'
    'Jhc2UucXVlcnkudjFiZXRhMS5QYWdlUmVxdWVzdFIKcGFnaW5hdGlvbg==');

@$core.Deprecated('Use queryAllDocumentResponseDescriptor instead')
const QueryAllDocumentResponse$json = {
  '1': 'QueryAllDocumentResponse',
  '2': [
    {'1': 'document', '3': 1, '4': 3, '5': 11, '6': '.qadena.dsvs.Document', '8': {}, '10': 'document'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllDocumentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllDocumentResponseDescriptor = $convert.base64Decode(
    'ChhRdWVyeUFsbERvY3VtZW50UmVzcG9uc2USNwoIZG9jdW1lbnQYASADKAsyFS5xYWRlbmEuZH'
    'N2cy5Eb2N1bWVudEIEyN4fAFIIZG9jdW1lbnQSRwoKcGFnaW5hdGlvbhgCIAEoCzInLmNvc21v'
    'cy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlc3BvbnNlUgpwYWdpbmF0aW9u');

@$core.Deprecated('Use queryGetAuthorizedSignatoryRequestDescriptor instead')
const QueryGetAuthorizedSignatoryRequest$json = {
  '1': 'QueryGetAuthorizedSignatoryRequest',
  '2': [
    {'1': 'walletID', '3': 1, '4': 1, '5': 9, '10': 'walletID'},
  ],
};

/// Descriptor for `QueryGetAuthorizedSignatoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetAuthorizedSignatoryRequestDescriptor = $convert.base64Decode(
    'CiJRdWVyeUdldEF1dGhvcml6ZWRTaWduYXRvcnlSZXF1ZXN0EhoKCHdhbGxldElEGAEgASgJUg'
    'h3YWxsZXRJRA==');

@$core.Deprecated('Use queryGetAuthorizedSignatoryResponseDescriptor instead')
const QueryGetAuthorizedSignatoryResponse$json = {
  '1': 'QueryGetAuthorizedSignatoryResponse',
  '2': [
    {'1': 'authorizedSignatory', '3': 1, '4': 1, '5': 11, '6': '.qadena.dsvs.AuthorizedSignatory', '8': {}, '10': 'authorizedSignatory'},
  ],
};

/// Descriptor for `QueryGetAuthorizedSignatoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetAuthorizedSignatoryResponseDescriptor = $convert.base64Decode(
    'CiNRdWVyeUdldEF1dGhvcml6ZWRTaWduYXRvcnlSZXNwb25zZRJYChNhdXRob3JpemVkU2lnbm'
    'F0b3J5GAEgASgLMiAucWFkZW5hLmRzdnMuQXV0aG9yaXplZFNpZ25hdG9yeUIEyN4fAFITYXV0'
    'aG9yaXplZFNpZ25hdG9yeQ==');

@$core.Deprecated('Use queryAllAuthorizedSignatoryRequestDescriptor instead')
const QueryAllAuthorizedSignatoryRequest$json = {
  '1': 'QueryAllAuthorizedSignatoryRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllAuthorizedSignatoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllAuthorizedSignatoryRequestDescriptor = $convert.base64Decode(
    'CiJRdWVyeUFsbEF1dGhvcml6ZWRTaWduYXRvcnlSZXF1ZXN0EkYKCnBhZ2luYXRpb24YASABKA'
    'syJi5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXF1ZXN0UgpwYWdpbmF0aW9u');

@$core.Deprecated('Use queryAllAuthorizedSignatoryResponseDescriptor instead')
const QueryAllAuthorizedSignatoryResponse$json = {
  '1': 'QueryAllAuthorizedSignatoryResponse',
  '2': [
    {'1': 'authorizedSignatory', '3': 1, '4': 3, '5': 11, '6': '.qadena.dsvs.AuthorizedSignatory', '8': {}, '10': 'authorizedSignatory'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllAuthorizedSignatoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllAuthorizedSignatoryResponseDescriptor = $convert.base64Decode(
    'CiNRdWVyeUFsbEF1dGhvcml6ZWRTaWduYXRvcnlSZXNwb25zZRJYChNhdXRob3JpemVkU2lnbm'
    'F0b3J5GAEgAygLMiAucWFkZW5hLmRzdnMuQXV0aG9yaXplZFNpZ25hdG9yeUIEyN4fAFITYXV0'
    'aG9yaXplZFNpZ25hdG9yeRJHCgpwYWdpbmF0aW9uGAIgASgLMicuY29zbW9zLmJhc2UucXVlcn'
    'kudjFiZXRhMS5QYWdlUmVzcG9uc2VSCnBhZ2luYXRpb24=');

