//
//  Generated code. Do not modify.
//  source: qadena/qadena/public_key.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use publicKeyDescriptor instead')
const PublicKey$json = {
  '1': 'PublicKey',
  '2': [
    {'1': 'pubKID', '3': 1, '4': 1, '5': 9, '10': 'pubKID'},
    {'1': 'pubKType', '3': 2, '4': 1, '5': 9, '10': 'pubKType'},
    {'1': 'pubK', '3': 3, '4': 1, '5': 9, '10': 'pubK'},
    {'1': 'shares', '3': 4, '4': 3, '5': 11, '6': '.qadena.qadena.Share', '10': 'shares'},
    {'1': 'remoteReport', '3': 5, '4': 1, '5': 9, '10': 'remoteReport'},
  ],
};

/// Descriptor for `PublicKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publicKeyDescriptor = $convert.base64Decode(
    'CglQdWJsaWNLZXkSFgoGcHViS0lEGAEgASgJUgZwdWJLSUQSGgoIcHViS1R5cGUYAiABKAlSCH'
    'B1YktUeXBlEhIKBHB1YksYAyABKAlSBHB1YksSLAoGc2hhcmVzGAQgAygLMhQucWFkZW5hLnFh'
    'ZGVuYS5TaGFyZVIGc2hhcmVzEiIKDHJlbW90ZVJlcG9ydBgFIAEoCVIMcmVtb3RlUmVwb3J0');

