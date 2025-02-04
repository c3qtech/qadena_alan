//
//  Generated code. Do not modify.
//  source: qadena/pricefeed/market.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use marketDescriptor instead')
const Market$json = {
  '1': 'Market',
  '2': [
    {'1': 'marketId', '3': 1, '4': 1, '5': 9, '10': 'marketId'},
    {'1': 'baseAsset', '3': 2, '4': 1, '5': 9, '10': 'baseAsset'},
    {'1': 'quoteAsset', '3': 3, '4': 1, '5': 9, '10': 'quoteAsset'},
    {'1': 'oracles', '3': 4, '4': 3, '5': 12, '8': {}, '10': 'oracles'},
    {'1': 'active', '3': 5, '4': 1, '5': 8, '10': 'active'},
  ],
};

/// Descriptor for `Market`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List marketDescriptor = $convert.base64Decode(
    'CgZNYXJrZXQSGgoIbWFya2V0SWQYASABKAlSCG1hcmtldElkEhwKCWJhc2VBc3NldBgCIAEoCV'
    'IJYmFzZUFzc2V0Eh4KCnF1b3RlQXNzZXQYAyABKAlSCnF1b3RlQXNzZXQSYgoHb3JhY2xlcxgE'
    'IAMoDEJI+t4fLWdpdGh1Yi5jb20vY29zbW9zL2Nvc21vcy1zZGsvdHlwZXMuQWNjQWRkcmVzc9'
    'K0LRNjb3Ntb3MuQWRkcmVzc0J5dGVzUgdvcmFjbGVzEhYKBmFjdGl2ZRgFIAEoCFIGYWN0aXZl');

