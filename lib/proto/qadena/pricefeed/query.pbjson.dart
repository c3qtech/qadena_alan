//
//  Generated code. Do not modify.
//  source: qadena/pricefeed/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use queryParamsRequestDescriptor instead')
const QueryParamsRequest$json = {
  '1': 'QueryParamsRequest',
};

/// Descriptor for `QueryParamsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsRequestDescriptor = $convert.base64Decode(
    'ChJRdWVyeVBhcmFtc1JlcXVlc3Q=');

@$core.Deprecated('Use queryParamsResponseDescriptor instead')
const QueryParamsResponse$json = {
  '1': 'QueryParamsResponse',
  '2': [
    {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.qadena.pricefeed.Params', '8': {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode(
    'ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEjsKBnBhcmFtcxgBIAEoCzIYLnFhZGVuYS5wcmljZWZlZW'
    'QuUGFyYW1zQgnI3h8AqOewKgFSBnBhcmFtcw==');

@$core.Deprecated('Use queryGetPostedPriceRequestDescriptor instead')
const QueryGetPostedPriceRequest$json = {
  '1': 'QueryGetPostedPriceRequest',
  '2': [
    {'1': 'marketId', '3': 1, '4': 1, '5': 9, '10': 'marketId'},
    {'1': 'oracleAddress', '3': 2, '4': 1, '5': 12, '8': {}, '10': 'oracleAddress'},
  ],
};

/// Descriptor for `QueryGetPostedPriceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetPostedPriceRequestDescriptor = $convert.base64Decode(
    'ChpRdWVyeUdldFBvc3RlZFByaWNlUmVxdWVzdBIaCghtYXJrZXRJZBgBIAEoCVIIbWFya2V0SW'
    'QSbgoNb3JhY2xlQWRkcmVzcxgCIAEoDEJI+t4fLWdpdGh1Yi5jb20vY29zbW9zL2Nvc21vcy1z'
    'ZGsvdHlwZXMuQWNjQWRkcmVzc9K0LRNjb3Ntb3MuQWRkcmVzc0J5dGVzUg1vcmFjbGVBZGRyZX'
    'Nz');

@$core.Deprecated('Use queryGetPostedPriceResponseDescriptor instead')
const QueryGetPostedPriceResponse$json = {
  '1': 'QueryGetPostedPriceResponse',
  '2': [
    {'1': 'postedPrice', '3': 1, '4': 1, '5': 11, '6': '.qadena.pricefeed.PostedPrice', '8': {}, '10': 'postedPrice'},
  ],
};

/// Descriptor for `QueryGetPostedPriceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetPostedPriceResponseDescriptor = $convert.base64Decode(
    'ChtRdWVyeUdldFBvc3RlZFByaWNlUmVzcG9uc2USRQoLcG9zdGVkUHJpY2UYASABKAsyHS5xYW'
    'RlbmEucHJpY2VmZWVkLlBvc3RlZFByaWNlQgTI3h8AUgtwb3N0ZWRQcmljZQ==');

@$core.Deprecated('Use queryAllPostedPriceRequestDescriptor instead')
const QueryAllPostedPriceRequest$json = {
  '1': 'QueryAllPostedPriceRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllPostedPriceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllPostedPriceRequestDescriptor = $convert.base64Decode(
    'ChpRdWVyeUFsbFBvc3RlZFByaWNlUmVxdWVzdBJGCgpwYWdpbmF0aW9uGAEgASgLMiYuY29zbW'
    '9zLmJhc2UucXVlcnkudjFiZXRhMS5QYWdlUmVxdWVzdFIKcGFnaW5hdGlvbg==');

@$core.Deprecated('Use queryAllPostedPriceResponseDescriptor instead')
const QueryAllPostedPriceResponse$json = {
  '1': 'QueryAllPostedPriceResponse',
  '2': [
    {'1': 'postedPrice', '3': 1, '4': 3, '5': 11, '6': '.qadena.pricefeed.PostedPrice', '8': {}, '10': 'postedPrice'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllPostedPriceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllPostedPriceResponseDescriptor = $convert.base64Decode(
    'ChtRdWVyeUFsbFBvc3RlZFByaWNlUmVzcG9uc2USRQoLcG9zdGVkUHJpY2UYASADKAsyHS5xYW'
    'RlbmEucHJpY2VmZWVkLlBvc3RlZFByaWNlQgTI3h8AUgtwb3N0ZWRQcmljZRJHCgpwYWdpbmF0'
    'aW9uGAIgASgLMicuY29zbW9zLmJhc2UucXVlcnkudjFiZXRhMS5QYWdlUmVzcG9uc2VSCnBhZ2'
    'luYXRpb24=');

@$core.Deprecated('Use queryPriceRequestDescriptor instead')
const QueryPriceRequest$json = {
  '1': 'QueryPriceRequest',
  '2': [
    {'1': 'marketId', '3': 1, '4': 1, '5': 9, '10': 'marketId'},
  ],
};

/// Descriptor for `QueryPriceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPriceRequestDescriptor = $convert.base64Decode(
    'ChFRdWVyeVByaWNlUmVxdWVzdBIaCghtYXJrZXRJZBgBIAEoCVIIbWFya2V0SWQ=');

@$core.Deprecated('Use queryPriceResponseDescriptor instead')
const QueryPriceResponse$json = {
  '1': 'QueryPriceResponse',
  '2': [
    {'1': 'price', '3': 1, '4': 1, '5': 11, '6': '.qadena.pricefeed.CurrentPrice', '10': 'price'},
  ],
};

/// Descriptor for `QueryPriceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPriceResponseDescriptor = $convert.base64Decode(
    'ChJRdWVyeVByaWNlUmVzcG9uc2USNAoFcHJpY2UYASABKAsyHi5xYWRlbmEucHJpY2VmZWVkLk'
    'N1cnJlbnRQcmljZVIFcHJpY2U=');

@$core.Deprecated('Use queryPricesRequestDescriptor instead')
const QueryPricesRequest$json = {
  '1': 'QueryPricesRequest',
  '2': [
    {'1': 'marketId', '3': 1, '4': 1, '5': 9, '10': 'marketId'},
  ],
};

/// Descriptor for `QueryPricesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPricesRequestDescriptor = $convert.base64Decode(
    'ChJRdWVyeVByaWNlc1JlcXVlc3QSGgoIbWFya2V0SWQYASABKAlSCG1hcmtldElk');

@$core.Deprecated('Use queryPricesResponseDescriptor instead')
const QueryPricesResponse$json = {
  '1': 'QueryPricesResponse',
  '2': [
    {'1': 'prices', '3': 1, '4': 3, '5': 11, '6': '.qadena.pricefeed.CurrentPrice', '10': 'prices'},
  ],
};

/// Descriptor for `QueryPricesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryPricesResponseDescriptor = $convert.base64Decode(
    'ChNRdWVyeVByaWNlc1Jlc3BvbnNlEjYKBnByaWNlcxgBIAMoCzIeLnFhZGVuYS5wcmljZWZlZW'
    'QuQ3VycmVudFByaWNlUgZwcmljZXM=');

@$core.Deprecated('Use queryRawPricesRequestDescriptor instead')
const QueryRawPricesRequest$json = {
  '1': 'QueryRawPricesRequest',
  '2': [
    {'1': 'marketId', '3': 1, '4': 1, '5': 9, '10': 'marketId'},
  ],
};

/// Descriptor for `QueryRawPricesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryRawPricesRequestDescriptor = $convert.base64Decode(
    'ChVRdWVyeVJhd1ByaWNlc1JlcXVlc3QSGgoIbWFya2V0SWQYASABKAlSCG1hcmtldElk');

@$core.Deprecated('Use queryRawPricesResponseDescriptor instead')
const QueryRawPricesResponse$json = {
  '1': 'QueryRawPricesResponse',
  '2': [
    {'1': 'rawPrices', '3': 1, '4': 3, '5': 11, '6': '.qadena.pricefeed.PostedPrice', '10': 'rawPrices'},
  ],
};

/// Descriptor for `QueryRawPricesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryRawPricesResponseDescriptor = $convert.base64Decode(
    'ChZRdWVyeVJhd1ByaWNlc1Jlc3BvbnNlEjsKCXJhd1ByaWNlcxgBIAMoCzIdLnFhZGVuYS5wcm'
    'ljZWZlZWQuUG9zdGVkUHJpY2VSCXJhd1ByaWNlcw==');

@$core.Deprecated('Use queryOraclesRequestDescriptor instead')
const QueryOraclesRequest$json = {
  '1': 'QueryOraclesRequest',
  '2': [
    {'1': 'marketId', '3': 1, '4': 1, '5': 9, '10': 'marketId'},
  ],
};

/// Descriptor for `QueryOraclesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryOraclesRequestDescriptor = $convert.base64Decode(
    'ChNRdWVyeU9yYWNsZXNSZXF1ZXN0EhoKCG1hcmtldElkGAEgASgJUghtYXJrZXRJZA==');

@$core.Deprecated('Use queryOraclesResponseDescriptor instead')
const QueryOraclesResponse$json = {
  '1': 'QueryOraclesResponse',
  '2': [
    {'1': 'oracles', '3': 1, '4': 3, '5': 9, '10': 'oracles'},
  ],
};

/// Descriptor for `QueryOraclesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryOraclesResponseDescriptor = $convert.base64Decode(
    'ChRRdWVyeU9yYWNsZXNSZXNwb25zZRIYCgdvcmFjbGVzGAEgAygJUgdvcmFjbGVz');

@$core.Deprecated('Use queryMarketsRequestDescriptor instead')
const QueryMarketsRequest$json = {
  '1': 'QueryMarketsRequest',
};

/// Descriptor for `QueryMarketsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryMarketsRequestDescriptor = $convert.base64Decode(
    'ChNRdWVyeU1hcmtldHNSZXF1ZXN0');

@$core.Deprecated('Use queryMarketsResponseDescriptor instead')
const QueryMarketsResponse$json = {
  '1': 'QueryMarketsResponse',
  '2': [
    {'1': 'markets', '3': 1, '4': 3, '5': 11, '6': '.qadena.pricefeed.Market', '10': 'markets'},
  ],
};

/// Descriptor for `QueryMarketsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryMarketsResponseDescriptor = $convert.base64Decode(
    'ChRRdWVyeU1hcmtldHNSZXNwb25zZRIyCgdtYXJrZXRzGAEgAygLMhgucWFkZW5hLnByaWNlZm'
    'VlZC5NYXJrZXRSB21hcmtldHM=');

