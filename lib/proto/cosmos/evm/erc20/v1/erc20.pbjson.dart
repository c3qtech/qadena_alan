//
//  Generated code. Do not modify.
//  source: cosmos/evm/erc20/v1/erc20.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use ownerDescriptor instead')
const Owner$json = {
  '1': 'Owner',
  '2': [
    {'1': 'OWNER_UNSPECIFIED', '2': 0},
    {'1': 'OWNER_MODULE', '2': 1},
    {'1': 'OWNER_EXTERNAL', '2': 2},
  ],
  '3': {},
};

/// Descriptor for `Owner`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ownerDescriptor = $convert.base64Decode(
    'CgVPd25lchIVChFPV05FUl9VTlNQRUNJRklFRBAAEhAKDE9XTkVSX01PRFVMRRABEhIKDk9XTk'
    'VSX0VYVEVSTkFMEAIaBIijHgA=');

@$core.Deprecated('Use tokenPairDescriptor instead')
const TokenPair$json = {
  '1': 'TokenPair',
  '2': [
    {'1': 'erc20_address', '3': 1, '4': 1, '5': 9, '10': 'erc20Address'},
    {'1': 'denom', '3': 2, '4': 1, '5': 9, '10': 'denom'},
    {'1': 'enabled', '3': 3, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'contract_owner', '3': 4, '4': 1, '5': 14, '6': '.cosmos.evm.erc20.v1.Owner', '10': 'contractOwner'},
  ],
  '7': {},
};

/// Descriptor for `TokenPair`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenPairDescriptor = $convert.base64Decode(
    'CglUb2tlblBhaXISIwoNZXJjMjBfYWRkcmVzcxgBIAEoCVIMZXJjMjBBZGRyZXNzEhQKBWRlbm'
    '9tGAIgASgJUgVkZW5vbRIYCgdlbmFibGVkGAMgASgIUgdlbmFibGVkEkEKDmNvbnRyYWN0X293'
    'bmVyGAQgASgOMhouY29zbW9zLmV2bS5lcmMyMC52MS5Pd25lclINY29udHJhY3RPd25lcjoE6K'
    'AfAQ==');

@$core.Deprecated('Use allowanceDescriptor instead')
const Allowance$json = {
  '1': 'Allowance',
  '2': [
    {'1': 'erc20_address', '3': 1, '4': 1, '5': 9, '10': 'erc20Address'},
    {'1': 'owner', '3': 2, '4': 1, '5': 9, '10': 'owner'},
    {'1': 'spender', '3': 3, '4': 1, '5': 9, '10': 'spender'},
    {'1': 'value', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'value'},
  ],
  '7': {},
};

/// Descriptor for `Allowance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allowanceDescriptor = $convert.base64Decode(
    'CglBbGxvd2FuY2USIwoNZXJjMjBfYWRkcmVzcxgBIAEoCVIMZXJjMjBBZGRyZXNzEhQKBW93bm'
    'VyGAIgASgJUgVvd25lchIYCgdzcGVuZGVyGAMgASgJUgdzcGVuZGVyEjMKBXZhbHVlGAQgASgJ'
    'Qh3I3h8A2t4fFWNvc21vc3Nkay5pby9tYXRoLkludFIFdmFsdWU6BOigHwA=');

@$core.Deprecated('Use registerCoinProposalDescriptor instead')
const RegisterCoinProposal$json = {
  '1': 'RegisterCoinProposal',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'metadata', '3': 3, '4': 3, '5': 11, '6': '.cosmos.bank.v1beta1.Metadata', '8': {}, '10': 'metadata'},
  ],
  '7': {},
};

/// Descriptor for `RegisterCoinProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerCoinProposalDescriptor = $convert.base64Decode(
    'ChRSZWdpc3RlckNvaW5Qcm9wb3NhbBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcH'
    'Rpb24YAiABKAlSC2Rlc2NyaXB0aW9uEj8KCG1ldGFkYXRhGAMgAygLMh0uY29zbW9zLmJhbmsu'
    'djFiZXRhMS5NZXRhZGF0YUIEyN4fAFIIbWV0YWRhdGE6BOigHwA=');

@$core.Deprecated('Use proposalMetadataDescriptor instead')
const ProposalMetadata$json = {
  '1': 'ProposalMetadata',
  '2': [
    {'1': 'metadata', '3': 1, '4': 3, '5': 11, '6': '.cosmos.bank.v1beta1.Metadata', '8': {}, '10': 'metadata'},
  ],
};

/// Descriptor for `ProposalMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List proposalMetadataDescriptor = $convert.base64Decode(
    'ChBQcm9wb3NhbE1ldGFkYXRhEj8KCG1ldGFkYXRhGAEgAygLMh0uY29zbW9zLmJhbmsudjFiZX'
    'RhMS5NZXRhZGF0YUIEyN4fAFIIbWV0YWRhdGE=');

@$core.Deprecated('Use registerERC20ProposalDescriptor instead')
const RegisterERC20Proposal$json = {
  '1': 'RegisterERC20Proposal',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'erc20addresses', '3': 3, '4': 3, '5': 9, '10': 'erc20addresses'},
  ],
  '7': {},
};

/// Descriptor for `RegisterERC20Proposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerERC20ProposalDescriptor = $convert.base64Decode(
    'ChVSZWdpc3RlckVSQzIwUHJvcG9zYWwSFAoFdGl0bGUYASABKAlSBXRpdGxlEiAKC2Rlc2NyaX'
    'B0aW9uGAIgASgJUgtkZXNjcmlwdGlvbhImCg5lcmMyMGFkZHJlc3NlcxgDIAMoCVIOZXJjMjBh'
    'ZGRyZXNzZXM6BOigHwA=');

@$core.Deprecated('Use toggleTokenConversionProposalDescriptor instead')
const ToggleTokenConversionProposal$json = {
  '1': 'ToggleTokenConversionProposal',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
  '7': {},
};

/// Descriptor for `ToggleTokenConversionProposal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List toggleTokenConversionProposalDescriptor = $convert.base64Decode(
    'Ch1Ub2dnbGVUb2tlbkNvbnZlcnNpb25Qcm9wb3NhbBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIA'
    'oLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9uEhQKBXRva2VuGAMgASgJUgV0b2tlbjoE'
    '6KAfAQ==');

