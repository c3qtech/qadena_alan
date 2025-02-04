//
//  Generated code. Do not modify.
//  source: qadena/dsvs/genesis.proto
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
    {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.qadena.dsvs.Params', '8': {}, '10': 'params'},
    {'1': 'documentHashList', '3': 2, '4': 3, '5': 11, '6': '.qadena.dsvs.DocumentHash', '8': {}, '10': 'documentHashList'},
    {'1': 'documentList', '3': 3, '4': 3, '5': 11, '6': '.qadena.dsvs.Document', '8': {}, '10': 'documentList'},
    {'1': 'authorizedSignatoryList', '3': 4, '4': 3, '5': 11, '6': '.qadena.dsvs.AuthorizedSignatory', '8': {}, '10': 'authorizedSignatoryList'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode(
    'CgxHZW5lc2lzU3RhdGUSNgoGcGFyYW1zGAEgASgLMhMucWFkZW5hLmRzdnMuUGFyYW1zQgnI3h'
    '8AqOewKgFSBnBhcmFtcxJLChBkb2N1bWVudEhhc2hMaXN0GAIgAygLMhkucWFkZW5hLmRzdnMu'
    'RG9jdW1lbnRIYXNoQgTI3h8AUhBkb2N1bWVudEhhc2hMaXN0Ej8KDGRvY3VtZW50TGlzdBgDIA'
    'MoCzIVLnFhZGVuYS5kc3ZzLkRvY3VtZW50QgTI3h8AUgxkb2N1bWVudExpc3QSYAoXYXV0aG9y'
    'aXplZFNpZ25hdG9yeUxpc3QYBCADKAsyIC5xYWRlbmEuZHN2cy5BdXRob3JpemVkU2lnbmF0b3'
    'J5QgTI3h8AUhdhdXRob3JpemVkU2lnbmF0b3J5TGlzdA==');

