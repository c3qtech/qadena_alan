//
//  Generated code. Do not modify.
//  source: cosmos/evm/vm/v1/evm.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use accessTypeDescriptor instead')
const AccessType$json = {
  '1': 'AccessType',
  '2': [
    {'1': 'ACCESS_TYPE_PERMISSIONLESS', '2': 0, '3': {}},
    {'1': 'ACCESS_TYPE_RESTRICTED', '2': 1, '3': {}},
    {'1': 'ACCESS_TYPE_PERMISSIONED', '2': 2, '3': {}},
  ],
  '3': {},
};

/// Descriptor for `AccessType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List accessTypeDescriptor = $convert.base64Decode(
    'CgpBY2Nlc3NUeXBlEjwKGkFDQ0VTU19UWVBFX1BFUk1JU1NJT05MRVNTEAAaHIqdIBhBY2Nlc3'
    'NUeXBlUGVybWlzc2lvbmxlc3MSNAoWQUNDRVNTX1RZUEVfUkVTVFJJQ1RFRBABGhiKnSAUQWNj'
    'ZXNzVHlwZVJlc3RyaWN0ZWQSOAoYQUNDRVNTX1RZUEVfUEVSTUlTU0lPTkVEEAIaGoqdIBZBY2'
    'Nlc3NUeXBlUGVybWlzc2lvbmVkGgSIox4A');

@$core.Deprecated('Use paramsDescriptor instead')
const Params$json = {
  '1': 'Params',
  '2': [
    {'1': 'evm_denom', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'evmDenom'},
    {'1': 'extra_eips', '3': 4, '4': 3, '5': 3, '8': {}, '10': 'extraEips'},
    {'1': 'evm_channels', '3': 7, '4': 3, '5': 9, '8': {}, '10': 'evmChannels'},
    {'1': 'access_control', '3': 8, '4': 1, '5': 11, '6': '.cosmos.evm.vm.v1.AccessControl', '8': {}, '10': 'accessControl'},
    {'1': 'active_static_precompiles', '3': 9, '4': 3, '5': 9, '10': 'activeStaticPrecompiles'},
    {'1': 'history_serve_window', '3': 10, '4': 1, '5': 4, '10': 'historyServeWindow'},
    {'1': 'extended_denom_options', '3': 11, '4': 1, '5': 11, '6': '.cosmos.evm.vm.v1.ExtendedDenomOptions', '10': 'extendedDenomOptions'},
  ],
  '7': {},
  '9': [
    {'1': 2, '2': 3},
    {'1': 3, '2': 4},
    {'1': 5, '2': 6},
    {'1': 6, '2': 7},
  ],
};

/// Descriptor for `Params`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paramsDescriptor = $convert.base64Decode(
    'CgZQYXJhbXMSMQoJZXZtX2Rlbm9tGAEgASgJQhTy3h8QeWFtbDoiZXZtX2Rlbm9tIlIIZXZtRG'
    'Vub20SQQoKZXh0cmFfZWlwcxgEIAMoA0Ii4t4fCUV4dHJhRUlQc/LeHxF5YW1sOiJleHRyYV9l'
    'aXBzIlIJZXh0cmFFaXBzEjIKDGV2bV9jaGFubmVscxgHIAMoCUIP4t4fC0VWTUNoYW5uZWxzUg'
    'tldm1DaGFubmVscxJdCg5hY2Nlc3NfY29udHJvbBgIIAEoCzIfLmNvc21vcy5ldm0udm0udjEu'
    'QWNjZXNzQ29udHJvbEIVyN4fAOLeHw1BY2Nlc3NDb250cm9sUg1hY2Nlc3NDb250cm9sEjoKGW'
    'FjdGl2ZV9zdGF0aWNfcHJlY29tcGlsZXMYCSADKAlSF2FjdGl2ZVN0YXRpY1ByZWNvbXBpbGVz'
    'EjAKFGhpc3Rvcnlfc2VydmVfd2luZG93GAogASgEUhJoaXN0b3J5U2VydmVXaW5kb3cSXAoWZX'
    'h0ZW5kZWRfZGVub21fb3B0aW9ucxgLIAEoCzImLmNvc21vcy5ldm0udm0udjEuRXh0ZW5kZWRE'
    'ZW5vbU9wdGlvbnNSFGV4dGVuZGVkRGVub21PcHRpb25zOhuK57AqFmNvc21vcy9ldm0veC92bS'
    '9QYXJhbXNKBAgCEANKBAgDEARKBAgFEAZKBAgGEAc=');

@$core.Deprecated('Use extendedDenomOptionsDescriptor instead')
const ExtendedDenomOptions$json = {
  '1': 'ExtendedDenomOptions',
  '2': [
    {'1': 'extended_denom', '3': 1, '4': 1, '5': 9, '10': 'extendedDenom'},
  ],
};

/// Descriptor for `ExtendedDenomOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extendedDenomOptionsDescriptor = $convert.base64Decode(
    'ChRFeHRlbmRlZERlbm9tT3B0aW9ucxIlCg5leHRlbmRlZF9kZW5vbRgBIAEoCVINZXh0ZW5kZW'
    'REZW5vbQ==');

@$core.Deprecated('Use accessControlDescriptor instead')
const AccessControl$json = {
  '1': 'AccessControl',
  '2': [
    {'1': 'create', '3': 1, '4': 1, '5': 11, '6': '.cosmos.evm.vm.v1.AccessControlType', '8': {}, '10': 'create'},
    {'1': 'call', '3': 2, '4': 1, '5': 11, '6': '.cosmos.evm.vm.v1.AccessControlType', '8': {}, '10': 'call'},
  ],
};

/// Descriptor for `AccessControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessControlDescriptor = $convert.base64Decode(
    'Cg1BY2Nlc3NDb250cm9sEkEKBmNyZWF0ZRgBIAEoCzIjLmNvc21vcy5ldm0udm0udjEuQWNjZX'
    'NzQ29udHJvbFR5cGVCBMjeHwBSBmNyZWF0ZRI9CgRjYWxsGAIgASgLMiMuY29zbW9zLmV2bS52'
    'bS52MS5BY2Nlc3NDb250cm9sVHlwZUIEyN4fAFIEY2FsbA==');

@$core.Deprecated('Use accessControlTypeDescriptor instead')
const AccessControlType$json = {
  '1': 'AccessControlType',
  '2': [
    {'1': 'access_type', '3': 1, '4': 1, '5': 14, '6': '.cosmos.evm.vm.v1.AccessType', '8': {}, '10': 'accessType'},
    {'1': 'access_control_list', '3': 2, '4': 3, '5': 9, '8': {}, '10': 'accessControlList'},
  ],
};

/// Descriptor for `AccessControlType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessControlTypeDescriptor = $convert.base64Decode(
    'ChFBY2Nlc3NDb250cm9sVHlwZRJjCgthY2Nlc3NfdHlwZRgBIAEoDjIcLmNvc21vcy5ldm0udm'
    '0udjEuQWNjZXNzVHlwZUIk4t4fCkFjY2Vzc1R5cGXy3h8SeWFtbDoiYWNjZXNzX3R5cGUiUgph'
    'Y2Nlc3NUeXBlEmMKE2FjY2Vzc19jb250cm9sX2xpc3QYAiADKAlCM+LeHxFBY2Nlc3NDb250cm'
    '9sTGlzdPLeHxp5YW1sOiJhY2Nlc3NfY29udHJvbF9saXN0IlIRYWNjZXNzQ29udHJvbExpc3Q=');

@$core.Deprecated('Use chainConfigDescriptor instead')
const ChainConfig$json = {
  '1': 'ChainConfig',
  '2': [
    {'1': 'homestead_block', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'homesteadBlock'},
    {'1': 'dao_fork_block', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'daoForkBlock'},
    {'1': 'dao_fork_support', '3': 3, '4': 1, '5': 8, '8': {}, '10': 'daoForkSupport'},
    {'1': 'eip150_block', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'eip150Block'},
    {'1': 'eip155_block', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'eip155Block'},
    {'1': 'eip158_block', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'eip158Block'},
    {'1': 'byzantium_block', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'byzantiumBlock'},
    {'1': 'constantinople_block', '3': 9, '4': 1, '5': 9, '8': {}, '10': 'constantinopleBlock'},
    {'1': 'petersburg_block', '3': 10, '4': 1, '5': 9, '8': {}, '10': 'petersburgBlock'},
    {'1': 'istanbul_block', '3': 11, '4': 1, '5': 9, '8': {}, '10': 'istanbulBlock'},
    {'1': 'muir_glacier_block', '3': 12, '4': 1, '5': 9, '8': {}, '10': 'muirGlacierBlock'},
    {'1': 'berlin_block', '3': 13, '4': 1, '5': 9, '8': {}, '10': 'berlinBlock'},
    {'1': 'london_block', '3': 17, '4': 1, '5': 9, '8': {}, '10': 'londonBlock'},
    {'1': 'arrow_glacier_block', '3': 18, '4': 1, '5': 9, '8': {}, '10': 'arrowGlacierBlock'},
    {'1': 'gray_glacier_block', '3': 20, '4': 1, '5': 9, '8': {}, '10': 'grayGlacierBlock'},
    {'1': 'merge_netsplit_block', '3': 21, '4': 1, '5': 9, '8': {}, '10': 'mergeNetsplitBlock'},
    {'1': 'chain_id', '3': 24, '4': 1, '5': 4, '10': 'chainId'},
    {'1': 'denom', '3': 25, '4': 1, '5': 9, '10': 'denom'},
    {'1': 'decimals', '3': 26, '4': 1, '5': 4, '10': 'decimals'},
    {'1': 'shanghai_time', '3': 27, '4': 1, '5': 9, '8': {}, '10': 'shanghaiTime'},
    {'1': 'cancun_time', '3': 28, '4': 1, '5': 9, '8': {}, '10': 'cancunTime'},
    {'1': 'prague_time', '3': 29, '4': 1, '5': 9, '8': {}, '10': 'pragueTime'},
    {'1': 'verkle_time', '3': 30, '4': 1, '5': 9, '8': {}, '10': 'verkleTime'},
    {'1': 'osaka_time', '3': 31, '4': 1, '5': 9, '8': {}, '10': 'osakaTime'},
  ],
  '9': [
    {'1': 5, '2': 6},
    {'1': 22, '2': 23},
    {'1': 23, '2': 24},
  ],
};

/// Descriptor for `ChainConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chainConfigDescriptor = $convert.base64Decode(
    'CgtDaGFpbkNvbmZpZxJcCg9ob21lc3RlYWRfYmxvY2sYASABKAlCM9reHxVjb3Ntb3NzZGsuaW'
    '8vbWF0aC5JbnTy3h8WeWFtbDoiaG9tZXN0ZWFkX2Jsb2NrIlIOaG9tZXN0ZWFkQmxvY2sSaAoO'
    'ZGFvX2ZvcmtfYmxvY2sYAiABKAlCQtreHxVjb3Ntb3NzZGsuaW8vbWF0aC5JbnTi3h8MREFPRm'
    '9ya0Jsb2Nr8t4fFXlhbWw6ImRhb19mb3JrX2Jsb2NrIlIMZGFvRm9ya0Jsb2NrElcKEGRhb19m'
    'b3JrX3N1cHBvcnQYAyABKAhCLeLeHw5EQU9Gb3JrU3VwcG9ydPLeHxd5YW1sOiJkYW9fZm9ya1'
    '9zdXBwb3J0IlIOZGFvRm9ya1N1cHBvcnQSYgoMZWlwMTUwX2Jsb2NrGAQgASgJQj/a3h8VY29z'
    'bW9zc2RrLmlvL21hdGguSW504t4fC0VJUDE1MEJsb2Nr8t4fE3lhbWw6ImVpcDE1MF9ibG9jay'
    'JSC2VpcDE1MEJsb2NrEmIKDGVpcDE1NV9ibG9jaxgGIAEoCUI/2t4fFWNvc21vc3Nkay5pby9t'
    'YXRoLkludOLeHwtFSVAxNTVCbG9ja/LeHxN5YW1sOiJlaXAxNTVfYmxvY2siUgtlaXAxNTVCbG'
    '9jaxJiCgxlaXAxNThfYmxvY2sYByABKAlCP9reHxVjb3Ntb3NzZGsuaW8vbWF0aC5JbnTi3h8L'
    'RUlQMTU4QmxvY2vy3h8TeWFtbDoiZWlwMTU4X2Jsb2NrIlILZWlwMTU4QmxvY2sSXAoPYnl6YW'
    '50aXVtX2Jsb2NrGAggASgJQjPa3h8VY29zbW9zc2RrLmlvL21hdGguSW508t4fFnlhbWw6ImJ5'
    'emFudGl1bV9ibG9jayJSDmJ5emFudGl1bUJsb2NrEmsKFGNvbnN0YW50aW5vcGxlX2Jsb2NrGA'
    'kgASgJQjja3h8VY29zbW9zc2RrLmlvL21hdGguSW508t4fG3lhbWw6ImNvbnN0YW50aW5vcGxl'
    'X2Jsb2NrIlITY29uc3RhbnRpbm9wbGVCbG9jaxJfChBwZXRlcnNidXJnX2Jsb2NrGAogASgJQj'
    'Ta3h8VY29zbW9zc2RrLmlvL21hdGguSW508t4fF3lhbWw6InBldGVyc2J1cmdfYmxvY2siUg9w'
    'ZXRlcnNidXJnQmxvY2sSWQoOaXN0YW5idWxfYmxvY2sYCyABKAlCMtreHxVjb3Ntb3NzZGsuaW'
    '8vbWF0aC5JbnTy3h8VeWFtbDoiaXN0YW5idWxfYmxvY2siUg1pc3RhbmJ1bEJsb2NrEmQKEm11'
    'aXJfZ2xhY2llcl9ibG9jaxgMIAEoCUI22t4fFWNvc21vc3Nkay5pby9tYXRoLkludPLeHxl5YW'
    '1sOiJtdWlyX2dsYWNpZXJfYmxvY2siUhBtdWlyR2xhY2llckJsb2NrElMKDGJlcmxpbl9ibG9j'
    'axgNIAEoCUIw2t4fFWNvc21vc3Nkay5pby9tYXRoLkludPLeHxN5YW1sOiJiZXJsaW5fYmxvY2'
    'siUgtiZXJsaW5CbG9jaxJTCgxsb25kb25fYmxvY2sYESABKAlCMNreHxVjb3Ntb3NzZGsuaW8v'
    'bWF0aC5JbnTy3h8TeWFtbDoibG9uZG9uX2Jsb2NrIlILbG9uZG9uQmxvY2sSZwoTYXJyb3dfZ2'
    'xhY2llcl9ibG9jaxgSIAEoCUI32t4fFWNvc21vc3Nkay5pby9tYXRoLkludPLeHxp5YW1sOiJh'
    'cnJvd19nbGFjaWVyX2Jsb2NrIlIRYXJyb3dHbGFjaWVyQmxvY2sSZAoSZ3JheV9nbGFjaWVyX2'
    'Jsb2NrGBQgASgJQjba3h8VY29zbW9zc2RrLmlvL21hdGguSW508t4fGXlhbWw6ImdyYXlfZ2xh'
    'Y2llcl9ibG9jayJSEGdyYXlHbGFjaWVyQmxvY2sSagoUbWVyZ2VfbmV0c3BsaXRfYmxvY2sYFS'
    'ABKAlCONreHxVjb3Ntb3NzZGsuaW8vbWF0aC5JbnTy3h8beWFtbDoibWVyZ2VfbmV0c3BsaXRf'
    'YmxvY2siUhJtZXJnZU5ldHNwbGl0QmxvY2sSGQoIY2hhaW5faWQYGCABKARSB2NoYWluSWQSFA'
    'oFZGVub20YGSABKAlSBWRlbm9tEhoKCGRlY2ltYWxzGBogASgEUghkZWNpbWFscxJWCg1zaGFu'
    'Z2hhaV90aW1lGBsgASgJQjHa3h8VY29zbW9zc2RrLmlvL21hdGguSW508t4fFHlhbWw6InNoYW'
    '5naGFpX3RpbWUiUgxzaGFuZ2hhaVRpbWUSUAoLY2FuY3VuX3RpbWUYHCABKAlCL9reHxVjb3Nt'
    'b3NzZGsuaW8vbWF0aC5JbnTy3h8SeWFtbDoiY2FuY3VuX3RpbWUiUgpjYW5jdW5UaW1lElAKC3'
    'ByYWd1ZV90aW1lGB0gASgJQi/a3h8VY29zbW9zc2RrLmlvL21hdGguSW508t4fEnlhbWw6InBy'
    'YWd1ZV90aW1lIlIKcHJhZ3VlVGltZRJQCgt2ZXJrbGVfdGltZRgeIAEoCUIv2t4fFWNvc21vc3'
    'Nkay5pby9tYXRoLkludPLeHxJ5YW1sOiJ2ZXJrbGVfdGltZSJSCnZlcmtsZVRpbWUSTQoKb3Nh'
    'a2FfdGltZRgfIAEoCUIu2t4fFWNvc21vc3Nkay5pby9tYXRoLkludPLeHxF5YW1sOiJvc2FrYV'
    '90aW1lIlIJb3Nha2FUaW1lSgQIBRAGSgQIFhAXSgQIFxAY');

@$core.Deprecated('Use stateDescriptor instead')
const State$json = {
  '1': 'State',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `State`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stateDescriptor = $convert.base64Decode(
    'CgVTdGF0ZRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU=');

@$core.Deprecated('Use transactionLogsDescriptor instead')
const TransactionLogs$json = {
  '1': 'TransactionLogs',
  '2': [
    {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
    {'1': 'logs', '3': 2, '4': 3, '5': 11, '6': '.cosmos.evm.vm.v1.Log', '10': 'logs'},
  ],
};

/// Descriptor for `TransactionLogs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionLogsDescriptor = $convert.base64Decode(
    'Cg9UcmFuc2FjdGlvbkxvZ3MSEgoEaGFzaBgBIAEoCVIEaGFzaBIpCgRsb2dzGAIgAygLMhUuY2'
    '9zbW9zLmV2bS52bS52MS5Mb2dSBGxvZ3M=');

@$core.Deprecated('Use logDescriptor instead')
const Log$json = {
  '1': 'Log',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    {'1': 'topics', '3': 2, '4': 3, '5': 9, '10': 'topics'},
    {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
    {'1': 'block_number', '3': 4, '4': 1, '5': 4, '8': {}, '10': 'blockNumber'},
    {'1': 'tx_hash', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'txHash'},
    {'1': 'tx_index', '3': 6, '4': 1, '5': 4, '8': {}, '10': 'txIndex'},
    {'1': 'block_hash', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'blockHash'},
    {'1': 'index', '3': 8, '4': 1, '5': 4, '8': {}, '10': 'index'},
    {'1': 'removed', '3': 9, '4': 1, '5': 8, '10': 'removed'},
    {'1': 'block_timestamp', '3': 10, '4': 1, '5': 4, '8': {}, '10': 'blockTimestamp'},
  ],
};

/// Descriptor for `Log`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logDescriptor = $convert.base64Decode(
    'CgNMb2cSGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcxIWCgZ0b3BpY3MYAiADKAlSBnRvcGljcx'
    'ISCgRkYXRhGAMgASgMUgRkYXRhEjIKDGJsb2NrX251bWJlchgEIAEoBEIP6t4fC2Jsb2NrTnVt'
    'YmVyUgtibG9ja051bWJlchIsCgd0eF9oYXNoGAUgASgJQhPq3h8PdHJhbnNhY3Rpb25IYXNoUg'
    'Z0eEhhc2gSLwoIdHhfaW5kZXgYBiABKARCFOreHxB0cmFuc2FjdGlvbkluZGV4Ugd0eEluZGV4'
    'EiwKCmJsb2NrX2hhc2gYByABKAlCDereHwlibG9ja0hhc2hSCWJsb2NrSGFzaBIiCgVpbmRleB'
    'gIIAEoBEIM6t4fCGxvZ0luZGV4UgVpbmRleBIYCgdyZW1vdmVkGAkgASgIUgdyZW1vdmVkEjsK'
    'D2Jsb2NrX3RpbWVzdGFtcBgKIAEoBEIS6t4fDmJsb2NrVGltZXN0YW1wUg5ibG9ja1RpbWVzdG'
    'FtcA==');

@$core.Deprecated('Use txResultDescriptor instead')
const TxResult$json = {
  '1': 'TxResult',
  '2': [
    {'1': 'contract_address', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'contractAddress'},
    {'1': 'bloom', '3': 2, '4': 1, '5': 12, '10': 'bloom'},
    {'1': 'tx_logs', '3': 3, '4': 1, '5': 11, '6': '.cosmos.evm.vm.v1.TransactionLogs', '8': {}, '10': 'txLogs'},
    {'1': 'ret', '3': 4, '4': 1, '5': 12, '10': 'ret'},
    {'1': 'reverted', '3': 5, '4': 1, '5': 8, '10': 'reverted'},
    {'1': 'gas_used', '3': 6, '4': 1, '5': 4, '10': 'gasUsed'},
  ],
  '7': {},
};

/// Descriptor for `TxResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txResultDescriptor = $convert.base64Decode(
    'CghUeFJlc3VsdBJGChBjb250cmFjdF9hZGRyZXNzGAEgASgJQhvy3h8XeWFtbDoiY29udHJhY3'
    'RfYWRkcmVzcyJSD2NvbnRyYWN0QWRkcmVzcxIUCgVibG9vbRgCIAEoDFIFYmxvb20SVwoHdHhf'
    'bG9ncxgDIAEoCzIhLmNvc21vcy5ldm0udm0udjEuVHJhbnNhY3Rpb25Mb2dzQhvI3h8A8t4fDn'
    'lhbWw6InR4X2xvZ3MiqOewKgFSBnR4TG9ncxIQCgNyZXQYBCABKAxSA3JldBIaCghyZXZlcnRl'
    'ZBgFIAEoCFIIcmV2ZXJ0ZWQSGQoIZ2FzX3VzZWQYBiABKARSB2dhc1VzZWQ6BIigHwA=');

@$core.Deprecated('Use accessTupleDescriptor instead')
const AccessTuple$json = {
  '1': 'AccessTuple',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    {'1': 'storage_keys', '3': 2, '4': 3, '5': 9, '8': {}, '10': 'storageKeys'},
  ],
  '7': {},
};

/// Descriptor for `AccessTuple`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessTupleDescriptor = $convert.base64Decode(
    'CgtBY2Nlc3NUdXBsZRIYCgdhZGRyZXNzGAEgASgJUgdhZGRyZXNzEjIKDHN0b3JhZ2Vfa2V5cx'
    'gCIAMoCUIP6t4fC3N0b3JhZ2VLZXlzUgtzdG9yYWdlS2V5czoEiKAfAA==');

@$core.Deprecated('Use traceConfigDescriptor instead')
const TraceConfig$json = {
  '1': 'TraceConfig',
  '2': [
    {'1': 'tracer', '3': 1, '4': 1, '5': 9, '10': 'tracer'},
    {'1': 'timeout', '3': 2, '4': 1, '5': 9, '10': 'timeout'},
    {'1': 'reexec', '3': 3, '4': 1, '5': 4, '10': 'reexec'},
    {'1': 'disable_stack', '3': 5, '4': 1, '5': 8, '8': {}, '10': 'disableStack'},
    {'1': 'disable_storage', '3': 6, '4': 1, '5': 8, '8': {}, '10': 'disableStorage'},
    {'1': 'debug', '3': 8, '4': 1, '5': 8, '10': 'debug'},
    {'1': 'limit', '3': 9, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'overrides', '3': 10, '4': 1, '5': 11, '6': '.cosmos.evm.vm.v1.ChainConfig', '10': 'overrides'},
    {'1': 'enable_memory', '3': 11, '4': 1, '5': 8, '8': {}, '10': 'enableMemory'},
    {'1': 'enable_return_data', '3': 12, '4': 1, '5': 8, '8': {}, '10': 'enableReturnData'},
    {'1': 'tracer_json_config', '3': 13, '4': 1, '5': 9, '8': {}, '10': 'tracerJsonConfig'},
  ],
  '9': [
    {'1': 4, '2': 5},
    {'1': 7, '2': 8},
  ],
  '10': ['disable_memory', 'disable_return_data'],
};

/// Descriptor for `TraceConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List traceConfigDescriptor = $convert.base64Decode(
    'CgtUcmFjZUNvbmZpZxIWCgZ0cmFjZXIYASABKAlSBnRyYWNlchIYCgd0aW1lb3V0GAIgASgJUg'
    'd0aW1lb3V0EhYKBnJlZXhlYxgDIAEoBFIGcmVleGVjEjUKDWRpc2FibGVfc3RhY2sYBSABKAhC'
    'EOreHwxkaXNhYmxlU3RhY2tSDGRpc2FibGVTdGFjaxI7Cg9kaXNhYmxlX3N0b3JhZ2UYBiABKA'
    'hCEureHw5kaXNhYmxlU3RvcmFnZVIOZGlzYWJsZVN0b3JhZ2USFAoFZGVidWcYCCABKAhSBWRl'
    'YnVnEhQKBWxpbWl0GAkgASgFUgVsaW1pdBI7CglvdmVycmlkZXMYCiABKAsyHS5jb3Ntb3MuZX'
    'ZtLnZtLnYxLkNoYWluQ29uZmlnUglvdmVycmlkZXMSNQoNZW5hYmxlX21lbW9yeRgLIAEoCEIQ'
    '6t4fDGVuYWJsZU1lbW9yeVIMZW5hYmxlTWVtb3J5EkIKEmVuYWJsZV9yZXR1cm5fZGF0YRgMIA'
    'EoCEIU6t4fEGVuYWJsZVJldHVybkRhdGFSEGVuYWJsZVJldHVybkRhdGESPgoSdHJhY2VyX2pz'
    'b25fY29uZmlnGA0gASgJQhDq3h8MdHJhY2VyQ29uZmlnUhB0cmFjZXJKc29uQ29uZmlnSgQIBB'
    'AFSgQIBxAIUg5kaXNhYmxlX21lbW9yeVITZGlzYWJsZV9yZXR1cm5fZGF0YQ==');

@$core.Deprecated('Use preinstallDescriptor instead')
const Preinstall$json = {
  '1': 'Preinstall',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    {'1': 'code', '3': 3, '4': 1, '5': 9, '10': 'code'},
  ],
};

/// Descriptor for `Preinstall`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preinstallDescriptor = $convert.base64Decode(
    'CgpQcmVpbnN0YWxsEhIKBG5hbWUYASABKAlSBG5hbWUSGAoHYWRkcmVzcxgCIAEoCVIHYWRkcm'
    'VzcxISCgRjb2RlGAMgASgJUgRjb2Rl');

@$core.Deprecated('Use evmCoinInfoDescriptor instead')
const EvmCoinInfo$json = {
  '1': 'EvmCoinInfo',
  '2': [
    {'1': 'denom', '3': 1, '4': 1, '5': 9, '10': 'denom'},
    {'1': 'extended_denom', '3': 2, '4': 1, '5': 9, '10': 'extendedDenom'},
    {'1': 'display_denom', '3': 3, '4': 1, '5': 9, '10': 'displayDenom'},
    {'1': 'decimals', '3': 4, '4': 1, '5': 13, '10': 'decimals'},
  ],
};

/// Descriptor for `EvmCoinInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evmCoinInfoDescriptor = $convert.base64Decode(
    'CgtFdm1Db2luSW5mbxIUCgVkZW5vbRgBIAEoCVIFZGVub20SJQoOZXh0ZW5kZWRfZGVub20YAi'
    'ABKAlSDWV4dGVuZGVkRGVub20SIwoNZGlzcGxheV9kZW5vbRgDIAEoCVIMZGlzcGxheURlbm9t'
    'EhoKCGRlY2ltYWxzGAQgASgNUghkZWNpbWFscw==');

