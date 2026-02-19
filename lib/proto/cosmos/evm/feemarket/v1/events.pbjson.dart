//
//  Generated code. Do not modify.
//  source: cosmos/evm/feemarket/v1/events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eventFeeMarketDescriptor instead')
const EventFeeMarket$json = {
  '1': 'EventFeeMarket',
  '2': [
    {'1': 'base_fee', '3': 1, '4': 1, '5': 9, '10': 'baseFee'},
  ],
};

/// Descriptor for `EventFeeMarket`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventFeeMarketDescriptor = $convert.base64Decode(
    'Cg5FdmVudEZlZU1hcmtldBIZCghiYXNlX2ZlZRgBIAEoCVIHYmFzZUZlZQ==');

@$core.Deprecated('Use eventBlockGasDescriptor instead')
const EventBlockGas$json = {
  '1': 'EventBlockGas',
  '2': [
    {'1': 'height', '3': 1, '4': 1, '5': 9, '10': 'height'},
    {'1': 'amount', '3': 2, '4': 1, '5': 9, '10': 'amount'},
  ],
};

/// Descriptor for `EventBlockGas`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventBlockGasDescriptor = $convert.base64Decode(
    'Cg1FdmVudEJsb2NrR2FzEhYKBmhlaWdodBgBIAEoCVIGaGVpZ2h0EhYKBmFtb3VudBgCIAEoCV'
    'IGYW1vdW50');

