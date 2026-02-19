//
//  Generated code. Do not modify.
//  source: cosmos/evm/vm/v1/genesis.proto
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
    {'1': 'accounts', '3': 1, '4': 3, '5': 11, '6': '.cosmos.evm.vm.v1.GenesisAccount', '8': {}, '10': 'accounts'},
    {'1': 'params', '3': 2, '4': 1, '5': 11, '6': '.cosmos.evm.vm.v1.Params', '8': {}, '10': 'params'},
    {'1': 'preinstalls', '3': 3, '4': 3, '5': 11, '6': '.cosmos.evm.vm.v1.Preinstall', '8': {}, '10': 'preinstalls'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode(
    'CgxHZW5lc2lzU3RhdGUSRwoIYWNjb3VudHMYASADKAsyIC5jb3Ntb3MuZXZtLnZtLnYxLkdlbm'
    'VzaXNBY2NvdW50QgnI3h8AqOewKgFSCGFjY291bnRzEjsKBnBhcmFtcxgCIAEoCzIYLmNvc21v'
    'cy5ldm0udm0udjEuUGFyYW1zQgnI3h8AqOewKgFSBnBhcmFtcxJJCgtwcmVpbnN0YWxscxgDIA'
    'MoCzIcLmNvc21vcy5ldm0udm0udjEuUHJlaW5zdGFsbEIJyN4fAKjnsCoBUgtwcmVpbnN0YWxs'
    'cw==');

@$core.Deprecated('Use genesisAccountDescriptor instead')
const GenesisAccount$json = {
  '1': 'GenesisAccount',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'storage', '3': 3, '4': 3, '5': 11, '6': '.cosmos.evm.vm.v1.State', '8': {}, '10': 'storage'},
  ],
};

/// Descriptor for `GenesisAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisAccountDescriptor = $convert.base64Decode(
    'Cg5HZW5lc2lzQWNjb3VudBIYCgdhZGRyZXNzGAEgASgJUgdhZGRyZXNzEhIKBGNvZGUYAiABKA'
    'lSBGNvZGUSRwoHc3RvcmFnZRgDIAMoCzIXLmNvc21vcy5ldm0udm0udjEuU3RhdGVCFMjeHwCq'
    '3x8HU3RvcmFnZajnsCoBUgdzdG9yYWdl');

