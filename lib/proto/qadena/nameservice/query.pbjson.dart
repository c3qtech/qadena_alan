//
//  Generated code. Do not modify.
//  source: qadena/nameservice/query.proto
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
    {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.qadena.nameservice.Params', '8': {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode(
    'ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEj0KBnBhcmFtcxgBIAEoCzIaLnFhZGVuYS5uYW1lc2Vydm'
    'ljZS5QYXJhbXNCCcjeHwCo57AqAVIGcGFyYW1z');

@$core.Deprecated('Use queryGetNameBindingRequestDescriptor instead')
const QueryGetNameBindingRequest$json = {
  '1': 'QueryGetNameBindingRequest',
  '2': [
    {'1': 'credential', '3': 1, '4': 1, '5': 9, '10': 'credential'},
    {'1': 'credentialType', '3': 2, '4': 1, '5': 9, '10': 'credentialType'},
  ],
};

/// Descriptor for `QueryGetNameBindingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetNameBindingRequestDescriptor = $convert.base64Decode(
    'ChpRdWVyeUdldE5hbWVCaW5kaW5nUmVxdWVzdBIeCgpjcmVkZW50aWFsGAEgASgJUgpjcmVkZW'
    '50aWFsEiYKDmNyZWRlbnRpYWxUeXBlGAIgASgJUg5jcmVkZW50aWFsVHlwZQ==');

@$core.Deprecated('Use queryGetNameBindingResponseDescriptor instead')
const QueryGetNameBindingResponse$json = {
  '1': 'QueryGetNameBindingResponse',
  '2': [
    {'1': 'nameBinding', '3': 1, '4': 1, '5': 11, '6': '.qadena.nameservice.NameBinding', '8': {}, '10': 'nameBinding'},
  ],
};

/// Descriptor for `QueryGetNameBindingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetNameBindingResponseDescriptor = $convert.base64Decode(
    'ChtRdWVyeUdldE5hbWVCaW5kaW5nUmVzcG9uc2USRwoLbmFtZUJpbmRpbmcYASABKAsyHy5xYW'
    'RlbmEubmFtZXNlcnZpY2UuTmFtZUJpbmRpbmdCBMjeHwBSC25hbWVCaW5kaW5n');

@$core.Deprecated('Use queryAllNameBindingRequestDescriptor instead')
const QueryAllNameBindingRequest$json = {
  '1': 'QueryAllNameBindingRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllNameBindingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllNameBindingRequestDescriptor = $convert.base64Decode(
    'ChpRdWVyeUFsbE5hbWVCaW5kaW5nUmVxdWVzdBJGCgpwYWdpbmF0aW9uGAEgASgLMiYuY29zbW'
    '9zLmJhc2UucXVlcnkudjFiZXRhMS5QYWdlUmVxdWVzdFIKcGFnaW5hdGlvbg==');

@$core.Deprecated('Use queryAllNameBindingResponseDescriptor instead')
const QueryAllNameBindingResponse$json = {
  '1': 'QueryAllNameBindingResponse',
  '2': [
    {'1': 'nameBinding', '3': 1, '4': 3, '5': 11, '6': '.qadena.nameservice.NameBinding', '8': {}, '10': 'nameBinding'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllNameBindingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllNameBindingResponseDescriptor = $convert.base64Decode(
    'ChtRdWVyeUFsbE5hbWVCaW5kaW5nUmVzcG9uc2USRwoLbmFtZUJpbmRpbmcYASADKAsyHy5xYW'
    'RlbmEubmFtZXNlcnZpY2UuTmFtZUJpbmRpbmdCBMjeHwBSC25hbWVCaW5kaW5nEkcKCnBhZ2lu'
    'YXRpb24YAiABKAsyJy5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXNwb25zZVIKcG'
    'FnaW5hdGlvbg==');

