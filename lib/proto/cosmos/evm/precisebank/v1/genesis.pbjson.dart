//
//  Generated code. Do not modify.
//  source: cosmos/evm/precisebank/v1/genesis.proto
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
    {'1': 'balances', '3': 1, '4': 3, '5': 11, '6': '.cosmos.evm.precisebank.v1.FractionalBalance', '8': {}, '10': 'balances'},
    {'1': 'remainder', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'remainder'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode(
    'CgxHZW5lc2lzU3RhdGUSZAoIYmFsYW5jZXMYASADKAsyLC5jb3Ntb3MuZXZtLnByZWNpc2ViYW'
    '5rLnYxLkZyYWN0aW9uYWxCYWxhbmNlQhrI3h8Aqt8fEkZyYWN0aW9uYWxCYWxhbmNlc1IIYmFs'
    'YW5jZXMSSQoJcmVtYWluZGVyGAIgASgJQivI3h8A2t4fFWNvc21vc3Nkay5pby9tYXRoLkludN'
    'K0LQpjb3Ntb3MuSW50UglyZW1haW5kZXI=');

@$core.Deprecated('Use fractionalBalanceDescriptor instead')
const FractionalBalance$json = {
  '1': 'FractionalBalance',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'address'},
    {'1': 'amount', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'amount'},
  ],
  '7': {},
};

/// Descriptor for `FractionalBalance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fractionalBalanceDescriptor = $convert.base64Decode(
    'ChFGcmFjdGlvbmFsQmFsYW5jZRIyCgdhZGRyZXNzGAEgASgJQhjStC0UY29zbW9zLkFkZHJlc3'
    'NTdHJpbmdSB2FkZHJlc3MSQwoGYW1vdW50GAIgASgJQivI3h8A2t4fFWNvc21vc3Nkay5pby9t'
    'YXRoLkludNK0LQpjb3Ntb3MuSW50UgZhbW91bnQ6CIigHwDooB8A');

