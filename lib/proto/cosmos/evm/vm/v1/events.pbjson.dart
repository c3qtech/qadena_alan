//
//  Generated code. Do not modify.
//  source: cosmos/evm/vm/v1/events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eventEthereumTxDescriptor instead')
const EventEthereumTx$json = {
  '1': 'EventEthereumTx',
  '2': [
    {'1': 'amount', '3': 1, '4': 1, '5': 9, '10': 'amount'},
    {'1': 'eth_hash', '3': 2, '4': 1, '5': 9, '10': 'ethHash'},
    {'1': 'index', '3': 3, '4': 1, '5': 9, '10': 'index'},
    {'1': 'gas_used', '3': 4, '4': 1, '5': 9, '10': 'gasUsed'},
    {'1': 'hash', '3': 5, '4': 1, '5': 9, '10': 'hash'},
    {'1': 'recipient', '3': 6, '4': 1, '5': 9, '10': 'recipient'},
    {'1': 'eth_tx_failed', '3': 7, '4': 1, '5': 9, '10': 'ethTxFailed'},
  ],
};

/// Descriptor for `EventEthereumTx`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventEthereumTxDescriptor = $convert.base64Decode(
    'Cg9FdmVudEV0aGVyZXVtVHgSFgoGYW1vdW50GAEgASgJUgZhbW91bnQSGQoIZXRoX2hhc2gYAi'
    'ABKAlSB2V0aEhhc2gSFAoFaW5kZXgYAyABKAlSBWluZGV4EhkKCGdhc191c2VkGAQgASgJUgdn'
    'YXNVc2VkEhIKBGhhc2gYBSABKAlSBGhhc2gSHAoJcmVjaXBpZW50GAYgASgJUglyZWNpcGllbn'
    'QSIgoNZXRoX3R4X2ZhaWxlZBgHIAEoCVILZXRoVHhGYWlsZWQ=');

@$core.Deprecated('Use eventTxLogDescriptor instead')
const EventTxLog$json = {
  '1': 'EventTxLog',
  '2': [
    {'1': 'tx_logs', '3': 1, '4': 3, '5': 9, '10': 'txLogs'},
  ],
};

/// Descriptor for `EventTxLog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventTxLogDescriptor = $convert.base64Decode(
    'CgpFdmVudFR4TG9nEhcKB3R4X2xvZ3MYASADKAlSBnR4TG9ncw==');

@$core.Deprecated('Use eventMessageDescriptor instead')
const EventMessage$json = {
  '1': 'EventMessage',
  '2': [
    {'1': 'module', '3': 1, '4': 1, '5': 9, '10': 'module'},
    {'1': 'sender', '3': 2, '4': 1, '5': 9, '10': 'sender'},
    {'1': 'tx_type', '3': 3, '4': 1, '5': 9, '10': 'txType'},
  ],
};

/// Descriptor for `EventMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventMessageDescriptor = $convert.base64Decode(
    'CgxFdmVudE1lc3NhZ2USFgoGbW9kdWxlGAEgASgJUgZtb2R1bGUSFgoGc2VuZGVyGAIgASgJUg'
    'ZzZW5kZXISFwoHdHhfdHlwZRgDIAEoCVIGdHhUeXBl');

@$core.Deprecated('Use eventBlockBloomDescriptor instead')
const EventBlockBloom$json = {
  '1': 'EventBlockBloom',
  '2': [
    {'1': 'bloom', '3': 1, '4': 1, '5': 9, '10': 'bloom'},
  ],
};

/// Descriptor for `EventBlockBloom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventBlockBloomDescriptor = $convert.base64Decode(
    'Cg9FdmVudEJsb2NrQmxvb20SFAoFYmxvb20YASABKAlSBWJsb29t');

