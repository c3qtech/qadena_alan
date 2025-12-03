//
//  Generated code. Do not modify.
//  source: qadena/dsvs/document.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use documentDescriptor instead')
const Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'documentID', '3': 1, '4': 1, '5': 9, '10': 'documentID'},
    {'1': 'documentType', '3': 2, '4': 1, '5': 9, '10': 'documentType'},
    {'1': 'companyName', '3': 3, '4': 1, '5': 9, '10': 'companyName'},
    {'1': 'requiredSignatory', '3': 4, '4': 3, '5': 11, '6': '.qadena.dsvs.VShareSignatory', '10': 'requiredSignatory'},
    {'1': 'completedSignatory', '3': 5, '4': 3, '5': 11, '6': '.qadena.dsvs.VShareSignatory', '10': 'completedSignatory'},
    {'1': 'hash', '3': 6, '4': 3, '5': 11, '6': '.qadena.dsvs.HashInfo', '10': 'hash'},
    {'1': 'metadata', '3': 7, '4': 1, '5': 9, '10': 'metadata'},
  ],
};

/// Descriptor for `Document`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentDescriptor = $convert.base64Decode(
    'CghEb2N1bWVudBIeCgpkb2N1bWVudElEGAEgASgJUgpkb2N1bWVudElEEiIKDGRvY3VtZW50VH'
    'lwZRgCIAEoCVIMZG9jdW1lbnRUeXBlEiAKC2NvbXBhbnlOYW1lGAMgASgJUgtjb21wYW55TmFt'
    'ZRJKChFyZXF1aXJlZFNpZ25hdG9yeRgEIAMoCzIcLnFhZGVuYS5kc3ZzLlZTaGFyZVNpZ25hdG'
    '9yeVIRcmVxdWlyZWRTaWduYXRvcnkSTAoSY29tcGxldGVkU2lnbmF0b3J5GAUgAygLMhwucWFk'
    'ZW5hLmRzdnMuVlNoYXJlU2lnbmF0b3J5UhJjb21wbGV0ZWRTaWduYXRvcnkSKQoEaGFzaBgGIA'
    'MoCzIVLnFhZGVuYS5kc3ZzLkhhc2hJbmZvUgRoYXNoEhoKCG1ldGFkYXRhGAcgASgJUghtZXRh'
    'ZGF0YQ==');

