//
//  Generated code. Do not modify.
//  source: cosmos/evm/erc20/v1/events.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eventRegisterPairDescriptor instead')
const EventRegisterPair$json = {
  '1': 'EventRegisterPair',
  '2': [
    {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
    {'1': 'erc20_address', '3': 2, '4': 1, '5': 9, '10': 'erc20Address'},
  ],
};

/// Descriptor for `EventRegisterPair`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventRegisterPairDescriptor = $convert.base64Decode(
    'ChFFdmVudFJlZ2lzdGVyUGFpchIUCgVkZW5vbRgBIAEoCVIFZGVub20SIwoNZXJjMjBfYWRkcm'
    'VzcxgCIAEoCVIMZXJjMjBBZGRyZXNz');

@$core.Deprecated('Use eventToggleTokenConversionDescriptor instead')
const EventToggleTokenConversion$json = {
  '1': 'EventToggleTokenConversion',
  '2': [
    {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
    {'1': 'erc20_address', '3': 2, '4': 1, '5': 9, '10': 'erc20Address'},
  ],
};

/// Descriptor for `EventToggleTokenConversion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventToggleTokenConversionDescriptor = $convert.base64Decode(
    'ChpFdmVudFRvZ2dsZVRva2VuQ29udmVyc2lvbhIUCgVkZW5vbRgBIAEoCVIFZGVub20SIwoNZX'
    'JjMjBfYWRkcmVzcxgCIAEoCVIMZXJjMjBBZGRyZXNz');

@$core.Deprecated('Use eventConvertCoinDescriptor instead')
const EventConvertCoin$json = {
  '1': 'EventConvertCoin',
  '2': [
    {'1': 'sender', '3': 1, '4': 1, '5': 9, '10': 'sender'},
    {'1': 'receiver', '3': 2, '4': 1, '5': 9, '10': 'receiver'},
    {'1': 'amount', '3': 3, '4': 1, '5': 9, '10': 'amount'},
    {'1': 'denom', '3': 4, '4': 1, '5': 9, '10': 'denom'},
    {'1': 'erc20_address', '3': 5, '4': 1, '5': 9, '10': 'erc20Address'},
  ],
};

/// Descriptor for `EventConvertCoin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventConvertCoinDescriptor = $convert.base64Decode(
    'ChBFdmVudENvbnZlcnRDb2luEhYKBnNlbmRlchgBIAEoCVIGc2VuZGVyEhoKCHJlY2VpdmVyGA'
    'IgASgJUghyZWNlaXZlchIWCgZhbW91bnQYAyABKAlSBmFtb3VudBIUCgVkZW5vbRgEIAEoCVIF'
    'ZGVub20SIwoNZXJjMjBfYWRkcmVzcxgFIAEoCVIMZXJjMjBBZGRyZXNz');

@$core.Deprecated('Use eventConvertERC20Descriptor instead')
const EventConvertERC20$json = {
  '1': 'EventConvertERC20',
  '2': [
    {'1': 'sender', '3': 1, '4': 1, '5': 9, '10': 'sender'},
    {'1': 'receiver', '3': 2, '4': 1, '5': 9, '10': 'receiver'},
    {'1': 'amount', '3': 3, '4': 1, '5': 9, '10': 'amount'},
    {'1': 'denom', '3': 4, '4': 1, '5': 9, '10': 'denom'},
    {'1': 'contract_address', '3': 5, '4': 1, '5': 9, '10': 'contractAddress'},
  ],
};

/// Descriptor for `EventConvertERC20`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventConvertERC20Descriptor = $convert.base64Decode(
    'ChFFdmVudENvbnZlcnRFUkMyMBIWCgZzZW5kZXIYASABKAlSBnNlbmRlchIaCghyZWNlaXZlch'
    'gCIAEoCVIIcmVjZWl2ZXISFgoGYW1vdW50GAMgASgJUgZhbW91bnQSFAoFZGVub20YBCABKAlS'
    'BWRlbm9tEikKEGNvbnRyYWN0X2FkZHJlc3MYBSABKAlSD2NvbnRyYWN0QWRkcmVzcw==');

