//
//  Generated code. Do not modify.
//  source: cosmos/evm/server/v1/indexer.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use txResultDescriptor instead')
const TxResult$json = {
  '1': 'TxResult',
  '2': [
    {'1': 'height', '3': 1, '4': 1, '5': 3, '10': 'height'},
    {'1': 'tx_index', '3': 2, '4': 1, '5': 13, '10': 'txIndex'},
    {'1': 'msg_index', '3': 3, '4': 1, '5': 13, '10': 'msgIndex'},
    {'1': 'eth_tx_index', '3': 4, '4': 1, '5': 5, '10': 'ethTxIndex'},
    {'1': 'failed', '3': 5, '4': 1, '5': 8, '10': 'failed'},
    {'1': 'gas_used', '3': 6, '4': 1, '5': 4, '10': 'gasUsed'},
    {'1': 'cumulative_gas_used', '3': 7, '4': 1, '5': 4, '10': 'cumulativeGasUsed'},
  ],
  '7': {},
};

/// Descriptor for `TxResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txResultDescriptor = $convert.base64Decode(
    'CghUeFJlc3VsdBIWCgZoZWlnaHQYASABKANSBmhlaWdodBIZCgh0eF9pbmRleBgCIAEoDVIHdH'
    'hJbmRleBIbCgltc2dfaW5kZXgYAyABKA1SCG1zZ0luZGV4EiAKDGV0aF90eF9pbmRleBgEIAEo'
    'BVIKZXRoVHhJbmRleBIWCgZmYWlsZWQYBSABKAhSBmZhaWxlZBIZCghnYXNfdXNlZBgGIAEoBF'
    'IHZ2FzVXNlZBIuChNjdW11bGF0aXZlX2dhc191c2VkGAcgASgEUhFjdW11bGF0aXZlR2FzVXNl'
    'ZDoEiKAfAA==');

