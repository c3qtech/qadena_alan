//
//  Generated code. Do not modify.
//  source: qadena/pricefeed/genesis.proto
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
    {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.qadena.pricefeed.Params', '8': {}, '10': 'params'},
    {'1': 'postedPriceList', '3': 2, '4': 3, '5': 11, '6': '.qadena.pricefeed.PostedPrice', '8': {}, '10': 'postedPriceList'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode(
    'CgxHZW5lc2lzU3RhdGUSOwoGcGFyYW1zGAEgASgLMhgucWFkZW5hLnByaWNlZmVlZC5QYXJhbX'
    'NCCcjeHwCo57AqAVIGcGFyYW1zEk0KD3Bvc3RlZFByaWNlTGlzdBgCIAMoCzIdLnFhZGVuYS5w'
    'cmljZWZlZWQuUG9zdGVkUHJpY2VCBMjeHwBSD3Bvc3RlZFByaWNlTGlzdA==');

