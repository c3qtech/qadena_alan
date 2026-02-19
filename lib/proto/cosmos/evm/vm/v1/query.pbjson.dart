//
//  Generated code. Do not modify.
//  source: cosmos/evm/vm/v1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use queryConfigRequestDescriptor instead')
const QueryConfigRequest$json = {
  '1': 'QueryConfigRequest',
};

/// Descriptor for `QueryConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryConfigRequestDescriptor = $convert.base64Decode(
    'ChJRdWVyeUNvbmZpZ1JlcXVlc3Q=');

@$core.Deprecated('Use queryConfigResponseDescriptor instead')
const QueryConfigResponse$json = {
  '1': 'QueryConfigResponse',
  '2': [
    {'1': 'config', '3': 1, '4': 1, '5': 11, '6': '.cosmos.evm.vm.v1.ChainConfig', '10': 'config'},
  ],
};

/// Descriptor for `QueryConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryConfigResponseDescriptor = $convert.base64Decode(
    'ChNRdWVyeUNvbmZpZ1Jlc3BvbnNlEjUKBmNvbmZpZxgBIAEoCzIdLmNvc21vcy5ldm0udm0udj'
    'EuQ2hhaW5Db25maWdSBmNvbmZpZw==');

@$core.Deprecated('Use queryAccountRequestDescriptor instead')
const QueryAccountRequest$json = {
  '1': 'QueryAccountRequest',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
  '7': {},
};

/// Descriptor for `QueryAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAccountRequestDescriptor = $convert.base64Decode(
    'ChNRdWVyeUFjY291bnRSZXF1ZXN0EhgKB2FkZHJlc3MYASABKAlSB2FkZHJlc3M6CIigHwDooB'
    '8A');

@$core.Deprecated('Use queryAccountResponseDescriptor instead')
const QueryAccountResponse$json = {
  '1': 'QueryAccountResponse',
  '2': [
    {'1': 'balance', '3': 1, '4': 1, '5': 9, '10': 'balance'},
    {'1': 'code_hash', '3': 2, '4': 1, '5': 9, '10': 'codeHash'},
    {'1': 'nonce', '3': 3, '4': 1, '5': 4, '10': 'nonce'},
  ],
};

/// Descriptor for `QueryAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAccountResponseDescriptor = $convert.base64Decode(
    'ChRRdWVyeUFjY291bnRSZXNwb25zZRIYCgdiYWxhbmNlGAEgASgJUgdiYWxhbmNlEhsKCWNvZG'
    'VfaGFzaBgCIAEoCVIIY29kZUhhc2gSFAoFbm9uY2UYAyABKARSBW5vbmNl');

@$core.Deprecated('Use queryCosmosAccountRequestDescriptor instead')
const QueryCosmosAccountRequest$json = {
  '1': 'QueryCosmosAccountRequest',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
  '7': {},
};

/// Descriptor for `QueryCosmosAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryCosmosAccountRequestDescriptor = $convert.base64Decode(
    'ChlRdWVyeUNvc21vc0FjY291bnRSZXF1ZXN0EhgKB2FkZHJlc3MYASABKAlSB2FkZHJlc3M6CI'
    'igHwDooB8A');

@$core.Deprecated('Use queryCosmosAccountResponseDescriptor instead')
const QueryCosmosAccountResponse$json = {
  '1': 'QueryCosmosAccountResponse',
  '2': [
    {'1': 'cosmos_address', '3': 1, '4': 1, '5': 9, '10': 'cosmosAddress'},
    {'1': 'sequence', '3': 2, '4': 1, '5': 4, '10': 'sequence'},
    {'1': 'account_number', '3': 3, '4': 1, '5': 4, '10': 'accountNumber'},
  ],
};

/// Descriptor for `QueryCosmosAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryCosmosAccountResponseDescriptor = $convert.base64Decode(
    'ChpRdWVyeUNvc21vc0FjY291bnRSZXNwb25zZRIlCg5jb3Ntb3NfYWRkcmVzcxgBIAEoCVINY2'
    '9zbW9zQWRkcmVzcxIaCghzZXF1ZW5jZRgCIAEoBFIIc2VxdWVuY2USJQoOYWNjb3VudF9udW1i'
    'ZXIYAyABKARSDWFjY291bnROdW1iZXI=');

@$core.Deprecated('Use queryValidatorAccountRequestDescriptor instead')
const QueryValidatorAccountRequest$json = {
  '1': 'QueryValidatorAccountRequest',
  '2': [
    {'1': 'cons_address', '3': 1, '4': 1, '5': 9, '10': 'consAddress'},
  ],
  '7': {},
};

/// Descriptor for `QueryValidatorAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryValidatorAccountRequestDescriptor = $convert.base64Decode(
    'ChxRdWVyeVZhbGlkYXRvckFjY291bnRSZXF1ZXN0EiEKDGNvbnNfYWRkcmVzcxgBIAEoCVILY2'
    '9uc0FkZHJlc3M6CIigHwDooB8A');

@$core.Deprecated('Use queryValidatorAccountResponseDescriptor instead')
const QueryValidatorAccountResponse$json = {
  '1': 'QueryValidatorAccountResponse',
  '2': [
    {'1': 'account_address', '3': 1, '4': 1, '5': 9, '10': 'accountAddress'},
    {'1': 'sequence', '3': 2, '4': 1, '5': 4, '10': 'sequence'},
    {'1': 'account_number', '3': 3, '4': 1, '5': 4, '10': 'accountNumber'},
  ],
};

/// Descriptor for `QueryValidatorAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryValidatorAccountResponseDescriptor = $convert.base64Decode(
    'Ch1RdWVyeVZhbGlkYXRvckFjY291bnRSZXNwb25zZRInCg9hY2NvdW50X2FkZHJlc3MYASABKA'
    'lSDmFjY291bnRBZGRyZXNzEhoKCHNlcXVlbmNlGAIgASgEUghzZXF1ZW5jZRIlCg5hY2NvdW50'
    'X251bWJlchgDIAEoBFINYWNjb3VudE51bWJlcg==');

@$core.Deprecated('Use queryBalanceRequestDescriptor instead')
const QueryBalanceRequest$json = {
  '1': 'QueryBalanceRequest',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
  '7': {},
};

/// Descriptor for `QueryBalanceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryBalanceRequestDescriptor = $convert.base64Decode(
    'ChNRdWVyeUJhbGFuY2VSZXF1ZXN0EhgKB2FkZHJlc3MYASABKAlSB2FkZHJlc3M6CIigHwDooB'
    '8A');

@$core.Deprecated('Use queryBalanceResponseDescriptor instead')
const QueryBalanceResponse$json = {
  '1': 'QueryBalanceResponse',
  '2': [
    {'1': 'balance', '3': 1, '4': 1, '5': 9, '10': 'balance'},
  ],
};

/// Descriptor for `QueryBalanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryBalanceResponseDescriptor = $convert.base64Decode(
    'ChRRdWVyeUJhbGFuY2VSZXNwb25zZRIYCgdiYWxhbmNlGAEgASgJUgdiYWxhbmNl');

@$core.Deprecated('Use queryStorageRequestDescriptor instead')
const QueryStorageRequest$json = {
  '1': 'QueryStorageRequest',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
  '7': {},
};

/// Descriptor for `QueryStorageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryStorageRequestDescriptor = $convert.base64Decode(
    'ChNRdWVyeVN0b3JhZ2VSZXF1ZXN0EhgKB2FkZHJlc3MYASABKAlSB2FkZHJlc3MSEAoDa2V5GA'
    'IgASgJUgNrZXk6CIigHwDooB8A');

@$core.Deprecated('Use queryStorageResponseDescriptor instead')
const QueryStorageResponse$json = {
  '1': 'QueryStorageResponse',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `QueryStorageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryStorageResponseDescriptor = $convert.base64Decode(
    'ChRRdWVyeVN0b3JhZ2VSZXNwb25zZRIUCgV2YWx1ZRgBIAEoCVIFdmFsdWU=');

@$core.Deprecated('Use queryCodeRequestDescriptor instead')
const QueryCodeRequest$json = {
  '1': 'QueryCodeRequest',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
  '7': {},
};

/// Descriptor for `QueryCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryCodeRequestDescriptor = $convert.base64Decode(
    'ChBRdWVyeUNvZGVSZXF1ZXN0EhgKB2FkZHJlc3MYASABKAlSB2FkZHJlc3M6CIigHwDooB8A');

@$core.Deprecated('Use queryCodeResponseDescriptor instead')
const QueryCodeResponse$json = {
  '1': 'QueryCodeResponse',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 12, '10': 'code'},
  ],
};

/// Descriptor for `QueryCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryCodeResponseDescriptor = $convert.base64Decode(
    'ChFRdWVyeUNvZGVSZXNwb25zZRISCgRjb2RlGAEgASgMUgRjb2Rl');

@$core.Deprecated('Use queryTxLogsRequestDescriptor instead')
const QueryTxLogsRequest$json = {
  '1': 'QueryTxLogsRequest',
  '2': [
    {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
  '7': {},
};

/// Descriptor for `QueryTxLogsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTxLogsRequestDescriptor = $convert.base64Decode(
    'ChJRdWVyeVR4TG9nc1JlcXVlc3QSEgoEaGFzaBgBIAEoCVIEaGFzaBJGCgpwYWdpbmF0aW9uGA'
    'IgASgLMiYuY29zbW9zLmJhc2UucXVlcnkudjFiZXRhMS5QYWdlUmVxdWVzdFIKcGFnaW5hdGlv'
    'bjoIiKAfAOigHwA=');

@$core.Deprecated('Use queryTxLogsResponseDescriptor instead')
const QueryTxLogsResponse$json = {
  '1': 'QueryTxLogsResponse',
  '2': [
    {'1': 'logs', '3': 1, '4': 3, '5': 11, '6': '.cosmos.evm.vm.v1.Log', '10': 'logs'},
    {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryTxLogsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTxLogsResponseDescriptor = $convert.base64Decode(
    'ChNRdWVyeVR4TG9nc1Jlc3BvbnNlEikKBGxvZ3MYASADKAsyFS5jb3Ntb3MuZXZtLnZtLnYxLk'
    'xvZ1IEbG9ncxJHCgpwYWdpbmF0aW9uGAIgASgLMicuY29zbW9zLmJhc2UucXVlcnkudjFiZXRh'
    'MS5QYWdlUmVzcG9uc2VSCnBhZ2luYXRpb24=');

@$core.Deprecated('Use queryParamsRequestDescriptor instead')
const QueryParamsRequest$json = {
  '1': 'QueryParamsRequest',
};

/// Descriptor for `QueryParamsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsRequestDescriptor = $convert.base64Decode(
    'ChJRdWVyeVBhcmFtc1JlcXVlc3Q=');

@$core.Deprecated('Use queryParamsResponseDescriptor instead')
const QueryParamsResponse$json = {
  '1': 'QueryParamsResponse',
  '2': [
    {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.cosmos.evm.vm.v1.Params', '8': {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode(
    'ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEjsKBnBhcmFtcxgBIAEoCzIYLmNvc21vcy5ldm0udm0udj'
    'EuUGFyYW1zQgnI3h8AqOewKgFSBnBhcmFtcw==');

@$core.Deprecated('Use ethCallRequestDescriptor instead')
const EthCallRequest$json = {
  '1': 'EthCallRequest',
  '2': [
    {'1': 'args', '3': 1, '4': 1, '5': 12, '10': 'args'},
    {'1': 'gas_cap', '3': 2, '4': 1, '5': 4, '10': 'gasCap'},
    {'1': 'proposer_address', '3': 3, '4': 1, '5': 12, '8': {}, '10': 'proposerAddress'},
    {'1': 'chain_id', '3': 4, '4': 1, '5': 3, '10': 'chainId'},
    {'1': 'overrides', '3': 5, '4': 1, '5': 12, '10': 'overrides'},
  ],
};

/// Descriptor for `EthCallRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethCallRequestDescriptor = $convert.base64Decode(
    'Cg5FdGhDYWxsUmVxdWVzdBISCgRhcmdzGAEgASgMUgRhcmdzEhcKB2dhc19jYXAYAiABKARSBm'
    'dhc0NhcBJdChBwcm9wb3Nlcl9hZGRyZXNzGAMgASgMQjL63h8uZ2l0aHViLmNvbS9jb3Ntb3Mv'
    'Y29zbW9zLXNkay90eXBlcy5Db25zQWRkcmVzc1IPcHJvcG9zZXJBZGRyZXNzEhkKCGNoYWluX2'
    'lkGAQgASgDUgdjaGFpbklkEhwKCW92ZXJyaWRlcxgFIAEoDFIJb3ZlcnJpZGVz');

@$core.Deprecated('Use estimateGasResponseDescriptor instead')
const EstimateGasResponse$json = {
  '1': 'EstimateGasResponse',
  '2': [
    {'1': 'gas', '3': 1, '4': 1, '5': 4, '10': 'gas'},
    {'1': 'ret', '3': 2, '4': 1, '5': 12, '10': 'ret'},
    {'1': 'vm_error', '3': 3, '4': 1, '5': 9, '10': 'vmError'},
  ],
};

/// Descriptor for `EstimateGasResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List estimateGasResponseDescriptor = $convert.base64Decode(
    'ChNFc3RpbWF0ZUdhc1Jlc3BvbnNlEhAKA2dhcxgBIAEoBFIDZ2FzEhAKA3JldBgCIAEoDFIDcm'
    'V0EhkKCHZtX2Vycm9yGAMgASgJUgd2bUVycm9y');

@$core.Deprecated('Use queryTraceTxRequestDescriptor instead')
const QueryTraceTxRequest$json = {
  '1': 'QueryTraceTxRequest',
  '2': [
    {'1': 'msg', '3': 1, '4': 1, '5': 11, '6': '.cosmos.evm.vm.v1.MsgEthereumTx', '10': 'msg'},
    {'1': 'trace_config', '3': 3, '4': 1, '5': 11, '6': '.cosmos.evm.vm.v1.TraceConfig', '10': 'traceConfig'},
    {'1': 'predecessors', '3': 4, '4': 3, '5': 11, '6': '.cosmos.evm.vm.v1.MsgEthereumTx', '10': 'predecessors'},
    {'1': 'block_number', '3': 5, '4': 1, '5': 3, '10': 'blockNumber'},
    {'1': 'block_hash', '3': 6, '4': 1, '5': 9, '10': 'blockHash'},
    {'1': 'block_time', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'blockTime'},
    {'1': 'proposer_address', '3': 8, '4': 1, '5': 12, '8': {}, '10': 'proposerAddress'},
    {'1': 'chain_id', '3': 9, '4': 1, '5': 3, '10': 'chainId'},
    {'1': 'block_max_gas', '3': 10, '4': 1, '5': 3, '10': 'blockMaxGas'},
  ],
  '9': [
    {'1': 2, '2': 3},
  ],
  '10': ['tx_index'],
};

/// Descriptor for `QueryTraceTxRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTraceTxRequestDescriptor = $convert.base64Decode(
    'ChNRdWVyeVRyYWNlVHhSZXF1ZXN0EjEKA21zZxgBIAEoCzIfLmNvc21vcy5ldm0udm0udjEuTX'
    'NnRXRoZXJldW1UeFIDbXNnEkAKDHRyYWNlX2NvbmZpZxgDIAEoCzIdLmNvc21vcy5ldm0udm0u'
    'djEuVHJhY2VDb25maWdSC3RyYWNlQ29uZmlnEkMKDHByZWRlY2Vzc29ycxgEIAMoCzIfLmNvc2'
    '1vcy5ldm0udm0udjEuTXNnRXRoZXJldW1UeFIMcHJlZGVjZXNzb3JzEiEKDGJsb2NrX251bWJl'
    'chgFIAEoA1ILYmxvY2tOdW1iZXISHQoKYmxvY2tfaGFzaBgGIAEoCVIJYmxvY2tIYXNoEkgKCm'
    'Jsb2NrX3RpbWUYByABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQg3I3h8AkN8fAajn'
    'sCoBUglibG9ja1RpbWUSXQoQcHJvcG9zZXJfYWRkcmVzcxgIIAEoDEIy+t4fLmdpdGh1Yi5jb2'
    '0vY29zbW9zL2Nvc21vcy1zZGsvdHlwZXMuQ29uc0FkZHJlc3NSD3Byb3Bvc2VyQWRkcmVzcxIZ'
    'CghjaGFpbl9pZBgJIAEoA1IHY2hhaW5JZBIiCg1ibG9ja19tYXhfZ2FzGAogASgDUgtibG9ja0'
    '1heEdhc0oECAIQA1IIdHhfaW5kZXg=');

@$core.Deprecated('Use queryTraceTxResponseDescriptor instead')
const QueryTraceTxResponse$json = {
  '1': 'QueryTraceTxResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `QueryTraceTxResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTraceTxResponseDescriptor = $convert.base64Decode(
    'ChRRdWVyeVRyYWNlVHhSZXNwb25zZRISCgRkYXRhGAEgASgMUgRkYXRh');

@$core.Deprecated('Use queryTraceBlockRequestDescriptor instead')
const QueryTraceBlockRequest$json = {
  '1': 'QueryTraceBlockRequest',
  '2': [
    {'1': 'txs', '3': 1, '4': 3, '5': 11, '6': '.cosmos.evm.vm.v1.MsgEthereumTx', '10': 'txs'},
    {'1': 'trace_config', '3': 3, '4': 1, '5': 11, '6': '.cosmos.evm.vm.v1.TraceConfig', '10': 'traceConfig'},
    {'1': 'block_number', '3': 5, '4': 1, '5': 3, '10': 'blockNumber'},
    {'1': 'block_hash', '3': 6, '4': 1, '5': 9, '10': 'blockHash'},
    {'1': 'block_time', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'blockTime'},
    {'1': 'proposer_address', '3': 8, '4': 1, '5': 12, '8': {}, '10': 'proposerAddress'},
    {'1': 'chain_id', '3': 9, '4': 1, '5': 3, '10': 'chainId'},
    {'1': 'block_max_gas', '3': 10, '4': 1, '5': 3, '10': 'blockMaxGas'},
  ],
};

/// Descriptor for `QueryTraceBlockRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTraceBlockRequestDescriptor = $convert.base64Decode(
    'ChZRdWVyeVRyYWNlQmxvY2tSZXF1ZXN0EjEKA3R4cxgBIAMoCzIfLmNvc21vcy5ldm0udm0udj'
    'EuTXNnRXRoZXJldW1UeFIDdHhzEkAKDHRyYWNlX2NvbmZpZxgDIAEoCzIdLmNvc21vcy5ldm0u'
    'dm0udjEuVHJhY2VDb25maWdSC3RyYWNlQ29uZmlnEiEKDGJsb2NrX251bWJlchgFIAEoA1ILYm'
    'xvY2tOdW1iZXISHQoKYmxvY2tfaGFzaBgGIAEoCVIJYmxvY2tIYXNoEkgKCmJsb2NrX3RpbWUY'
    'ByABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQg3I3h8AkN8fAajnsCoBUglibG9ja1'
    'RpbWUSXQoQcHJvcG9zZXJfYWRkcmVzcxgIIAEoDEIy+t4fLmdpdGh1Yi5jb20vY29zbW9zL2Nv'
    'c21vcy1zZGsvdHlwZXMuQ29uc0FkZHJlc3NSD3Byb3Bvc2VyQWRkcmVzcxIZCghjaGFpbl9pZB'
    'gJIAEoA1IHY2hhaW5JZBIiCg1ibG9ja19tYXhfZ2FzGAogASgDUgtibG9ja01heEdhcw==');

@$core.Deprecated('Use queryTraceBlockResponseDescriptor instead')
const QueryTraceBlockResponse$json = {
  '1': 'QueryTraceBlockResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `QueryTraceBlockResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTraceBlockResponseDescriptor = $convert.base64Decode(
    'ChdRdWVyeVRyYWNlQmxvY2tSZXNwb25zZRISCgRkYXRhGAEgASgMUgRkYXRh');

@$core.Deprecated('Use queryTraceCallRequestDescriptor instead')
const QueryTraceCallRequest$json = {
  '1': 'QueryTraceCallRequest',
  '2': [
    {'1': 'args', '3': 1, '4': 1, '5': 12, '10': 'args'},
    {'1': 'gas_cap', '3': 2, '4': 1, '5': 4, '10': 'gasCap'},
    {'1': 'proposer_address', '3': 3, '4': 1, '5': 12, '8': {}, '10': 'proposerAddress'},
    {'1': 'trace_config', '3': 4, '4': 1, '5': 11, '6': '.cosmos.evm.vm.v1.TraceConfig', '10': 'traceConfig'},
    {'1': 'block_number', '3': 5, '4': 1, '5': 3, '10': 'blockNumber'},
    {'1': 'block_hash', '3': 6, '4': 1, '5': 9, '10': 'blockHash'},
    {'1': 'block_time', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'blockTime'},
    {'1': 'chain_id', '3': 8, '4': 1, '5': 3, '10': 'chainId'},
  ],
};

/// Descriptor for `QueryTraceCallRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTraceCallRequestDescriptor = $convert.base64Decode(
    'ChVRdWVyeVRyYWNlQ2FsbFJlcXVlc3QSEgoEYXJncxgBIAEoDFIEYXJncxIXCgdnYXNfY2FwGA'
    'IgASgEUgZnYXNDYXASXQoQcHJvcG9zZXJfYWRkcmVzcxgDIAEoDEIy+t4fLmdpdGh1Yi5jb20v'
    'Y29zbW9zL2Nvc21vcy1zZGsvdHlwZXMuQ29uc0FkZHJlc3NSD3Byb3Bvc2VyQWRkcmVzcxJACg'
    'x0cmFjZV9jb25maWcYBCABKAsyHS5jb3Ntb3MuZXZtLnZtLnYxLlRyYWNlQ29uZmlnUgt0cmFj'
    'ZUNvbmZpZxIhCgxibG9ja19udW1iZXIYBSABKANSC2Jsb2NrTnVtYmVyEh0KCmJsb2NrX2hhc2'
    'gYBiABKAlSCWJsb2NrSGFzaBJDCgpibG9ja190aW1lGAcgASgLMhouZ29vZ2xlLnByb3RvYnVm'
    'LlRpbWVzdGFtcEIIyN4fAJDfHwFSCWJsb2NrVGltZRIZCghjaGFpbl9pZBgIIAEoA1IHY2hhaW'
    '5JZA==');

@$core.Deprecated('Use queryTraceCallResponseDescriptor instead')
const QueryTraceCallResponse$json = {
  '1': 'QueryTraceCallResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `QueryTraceCallResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryTraceCallResponseDescriptor = $convert.base64Decode(
    'ChZRdWVyeVRyYWNlQ2FsbFJlc3BvbnNlEhIKBGRhdGEYASABKAxSBGRhdGE=');

@$core.Deprecated('Use queryBaseFeeRequestDescriptor instead')
const QueryBaseFeeRequest$json = {
  '1': 'QueryBaseFeeRequest',
};

/// Descriptor for `QueryBaseFeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryBaseFeeRequestDescriptor = $convert.base64Decode(
    'ChNRdWVyeUJhc2VGZWVSZXF1ZXN0');

@$core.Deprecated('Use queryBaseFeeResponseDescriptor instead')
const QueryBaseFeeResponse$json = {
  '1': 'QueryBaseFeeResponse',
  '2': [
    {'1': 'base_fee', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'baseFee'},
  ],
};

/// Descriptor for `QueryBaseFeeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryBaseFeeResponseDescriptor = $convert.base64Decode(
    'ChRRdWVyeUJhc2VGZWVSZXNwb25zZRI0CghiYXNlX2ZlZRgBIAEoCUIZ2t4fFWNvc21vc3Nkay'
    '5pby9tYXRoLkludFIHYmFzZUZlZQ==');

@$core.Deprecated('Use queryGlobalMinGasPriceRequestDescriptor instead')
const QueryGlobalMinGasPriceRequest$json = {
  '1': 'QueryGlobalMinGasPriceRequest',
};

/// Descriptor for `QueryGlobalMinGasPriceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGlobalMinGasPriceRequestDescriptor = $convert.base64Decode(
    'Ch1RdWVyeUdsb2JhbE1pbkdhc1ByaWNlUmVxdWVzdA==');

@$core.Deprecated('Use queryGlobalMinGasPriceResponseDescriptor instead')
const QueryGlobalMinGasPriceResponse$json = {
  '1': 'QueryGlobalMinGasPriceResponse',
  '2': [
    {'1': 'min_gas_price', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'minGasPrice'},
  ],
};

/// Descriptor for `QueryGlobalMinGasPriceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGlobalMinGasPriceResponseDescriptor = $convert.base64Decode(
    'Ch5RdWVyeUdsb2JhbE1pbkdhc1ByaWNlUmVzcG9uc2USQQoNbWluX2dhc19wcmljZRgBIAEoCU'
    'IdyN4fANreHxVjb3Ntb3NzZGsuaW8vbWF0aC5JbnRSC21pbkdhc1ByaWNl');

