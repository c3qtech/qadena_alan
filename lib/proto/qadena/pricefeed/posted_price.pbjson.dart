//
//  Generated code. Do not modify.
//  source: qadena/pricefeed/posted_price.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use postedPriceDescriptor instead')
const PostedPrice$json = {
  '1': 'PostedPrice',
  '2': [
    {'1': 'marketId', '3': 1, '4': 1, '5': 9, '10': 'marketId'},
    {'1': 'oracleAddress', '3': 2, '4': 1, '5': 12, '8': {}, '10': 'oracleAddress'},
    {'1': 'price', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'price'},
    {'1': 'expiry', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'expiry'},
  ],
};

/// Descriptor for `PostedPrice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postedPriceDescriptor = $convert.base64Decode(
    'CgtQb3N0ZWRQcmljZRIaCghtYXJrZXRJZBgBIAEoCVIIbWFya2V0SWQSbgoNb3JhY2xlQWRkcm'
    'VzcxgCIAEoDEJI+t4fLWdpdGh1Yi5jb20vY29zbW9zL2Nvc21vcy1zZGsvdHlwZXMuQWNjQWRk'
    'cmVzc9K0LRNjb3Ntb3MuQWRkcmVzc0J5dGVzUg1vcmFjbGVBZGRyZXNzEjkKBXByaWNlGAMgAS'
    'gJQiPI3h8A2t4fG2Nvc21vc3Nkay5pby9tYXRoLkxlZ2FjeURlY1IFcHJpY2USPAoGZXhwaXJ5'
    'GAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIIyN4fAJDfHwFSBmV4cGlyeQ==');

