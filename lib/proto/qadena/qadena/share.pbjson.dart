//
//  Generated code. Do not modify.
//  source: qadena/qadena/share.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use shareDescriptor instead')
const Share$json = {
  '1': 'Share',
  '2': [
    {'1': 'pioneerID', '3': 1, '4': 1, '5': 9, '10': 'pioneerID'},
    {'1': 'encEnclaveShare', '3': 2, '4': 1, '5': 12, '10': 'encEnclaveShare'},
  ],
};

/// Descriptor for `Share`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareDescriptor = $convert.base64Decode(
    'CgVTaGFyZRIcCglwaW9uZWVySUQYASABKAlSCXBpb25lZXJJRBIoCg9lbmNFbmNsYXZlU2hhcm'
    'UYAiABKAxSD2VuY0VuY2xhdmVTaGFyZQ==');

