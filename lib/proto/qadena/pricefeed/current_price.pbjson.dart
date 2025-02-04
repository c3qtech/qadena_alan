//
//  Generated code. Do not modify.
//  source: qadena/pricefeed/current_price.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use currentPriceDescriptor instead')
const CurrentPrice$json = {
  '1': 'CurrentPrice',
  '2': [
    {'1': 'marketId', '3': 1, '4': 1, '5': 9, '10': 'marketId'},
    {'1': 'price', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'price'},
  ],
};

/// Descriptor for `CurrentPrice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List currentPriceDescriptor = $convert.base64Decode(
    'CgxDdXJyZW50UHJpY2USGgoIbWFya2V0SWQYASABKAlSCG1hcmtldElkEjkKBXByaWNlGAIgAS'
    'gJQiPI3h8A2t4fG2Nvc21vc3Nkay5pby9tYXRoLkxlZ2FjeURlY1IFcHJpY2U=');

