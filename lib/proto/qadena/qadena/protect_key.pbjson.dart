//
//  Generated code. Do not modify.
//  source: qadena/qadena/protect_key.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use protectKeyDescriptor instead')
const ProtectKey$json = {
  '1': 'ProtectKey',
  '2': [
    {'1': 'walletID', '3': 1, '4': 1, '5': 9, '10': 'walletID'},
    {'1': 'threshold', '3': 2, '4': 1, '5': 5, '10': 'threshold'},
    {'1': 'recoverShare', '3': 3, '4': 3, '5': 11, '6': '.qadena.qadena.RecoverShare', '10': 'recoverShare'},
  ],
};

/// Descriptor for `ProtectKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protectKeyDescriptor = $convert.base64Decode(
    'CgpQcm90ZWN0S2V5EhoKCHdhbGxldElEGAEgASgJUgh3YWxsZXRJRBIcCgl0aHJlc2hvbGQYAi'
    'ABKAVSCXRocmVzaG9sZBI/CgxyZWNvdmVyU2hhcmUYAyADKAsyGy5xYWRlbmEucWFkZW5hLlJl'
    'Y292ZXJTaGFyZVIMcmVjb3ZlclNoYXJl');

