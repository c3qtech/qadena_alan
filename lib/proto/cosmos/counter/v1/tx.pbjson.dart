//
//  Generated code. Do not modify.
//  source: cosmos/counter/v1/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use msgIncreaseCounterDescriptor instead')
const MsgIncreaseCounter$json = {
  '1': 'MsgIncreaseCounter',
  '2': [
    {'1': 'signer', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'signer'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
  ],
  '7': {},
};

/// Descriptor for `MsgIncreaseCounter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgIncreaseCounterDescriptor = $convert.base64Decode(
    'ChJNc2dJbmNyZWFzZUNvdW50ZXISMAoGc2lnbmVyGAEgASgJQhjStC0UY29zbW9zLkFkZHJlc3'
    'NTdHJpbmdSBnNpZ25lchIUCgVjb3VudBgCIAEoA1IFY291bnQ6K4LnsCoGc2lnbmVyiuewKhtj'
    'b3Ntb3Mtc2RrL2luY3JlYXNlX2NvdW50ZXI=');

@$core.Deprecated('Use msgIncreaseCountResponseDescriptor instead')
const MsgIncreaseCountResponse$json = {
  '1': 'MsgIncreaseCountResponse',
  '2': [
    {'1': 'new_count', '3': 1, '4': 1, '5': 3, '10': 'newCount'},
  ],
};

/// Descriptor for `MsgIncreaseCountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgIncreaseCountResponseDescriptor = $convert.base64Decode(
    'ChhNc2dJbmNyZWFzZUNvdW50UmVzcG9uc2USGwoJbmV3X2NvdW50GAEgASgDUghuZXdDb3VudA'
    '==');

