//
//  Generated code. Do not modify.
//  source: qadena/dsvs/document_hash.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use documentHashDescriptor instead')
const DocumentHash$json = {
  '1': 'DocumentHash',
  '2': [
    {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
    {'1': 'documentID', '3': 2, '4': 1, '5': 9, '10': 'documentID'},
  ],
};

/// Descriptor for `DocumentHash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentHashDescriptor = $convert.base64Decode(
    'CgxEb2N1bWVudEhhc2gSEgoEaGFzaBgBIAEoDFIEaGFzaBIeCgpkb2N1bWVudElEGAIgASgJUg'
    'pkb2N1bWVudElE');

