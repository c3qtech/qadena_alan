//
//  Generated code. Do not modify.
//  source: qadena/nameservice/genesis.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use genesisStateDescriptor instead')
const GenesisState$json = {
  '1': 'GenesisState',
  '2': [
    {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.qadena.nameservice.Params', '8': {}, '10': 'params'},
    {'1': 'nameBindingList', '3': 2, '4': 3, '5': 11, '6': '.qadena.nameservice.NameBinding', '8': {}, '10': 'nameBindingList'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode(
    'CgxHZW5lc2lzU3RhdGUSPQoGcGFyYW1zGAEgASgLMhoucWFkZW5hLm5hbWVzZXJ2aWNlLlBhcm'
    'Ftc0IJyN4fAKjnsCoBUgZwYXJhbXMSTwoPbmFtZUJpbmRpbmdMaXN0GAIgAygLMh8ucWFkZW5h'
    'Lm5hbWVzZXJ2aWNlLk5hbWVCaW5kaW5nQgTI3h8AUg9uYW1lQmluZGluZ0xpc3Q=');

