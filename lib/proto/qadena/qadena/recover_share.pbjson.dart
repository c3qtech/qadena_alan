//
//  Generated code. Do not modify.
//  source: qadena/qadena/recover_share.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use recoverShareDescriptor instead')
const RecoverShare$json = {
  '1': 'RecoverShare',
  '2': [
    {'1': 'walletID', '3': 1, '4': 1, '5': 9, '10': 'walletID'},
    {'1': 'encWalletPubKShare', '3': 2, '4': 1, '5': 12, '10': 'encWalletPubKShare'},
  ],
};

/// Descriptor for `RecoverShare`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoverShareDescriptor = $convert.base64Decode(
    'CgxSZWNvdmVyU2hhcmUSGgoId2FsbGV0SUQYASABKAlSCHdhbGxldElEEi4KEmVuY1dhbGxldF'
    'B1YktTaGFyZRgCIAEoDFISZW5jV2FsbGV0UHViS1NoYXJl');

