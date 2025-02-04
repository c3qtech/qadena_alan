//
//  Generated code. Do not modify.
//  source: qadena/qadena/genesis.proto
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
    {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.Params', '8': {}, '10': 'params'},
    {'1': 'credentialList', '3': 2, '4': 3, '5': 11, '6': '.qadena.qadena.Credential', '8': {}, '10': 'credentialList'},
    {'1': 'publicKeyList', '3': 3, '4': 3, '5': 11, '6': '.qadena.qadena.PublicKey', '8': {}, '10': 'publicKeyList'},
    {'1': 'walletList', '3': 4, '4': 3, '5': 11, '6': '.qadena.qadena.Wallet', '8': {}, '10': 'walletList'},
    {'1': 'intervalPublicKeyIDList', '3': 5, '4': 3, '5': 11, '6': '.qadena.qadena.IntervalPublicKeyID', '8': {}, '10': 'intervalPublicKeyIDList'},
    {'1': 'pioneerJarList', '3': 6, '4': 3, '5': 11, '6': '.qadena.qadena.PioneerJar', '8': {}, '10': 'pioneerJarList'},
    {'1': 'jarRegulatorList', '3': 7, '4': 3, '5': 11, '6': '.qadena.qadena.JarRegulator', '8': {}, '10': 'jarRegulatorList'},
    {'1': 'suspiciousTransactionList', '3': 8, '4': 3, '5': 11, '6': '.qadena.qadena.SuspiciousTransaction', '8': {}, '10': 'suspiciousTransactionList'},
    {'1': 'suspiciousTransactionCount', '3': 9, '4': 1, '5': 4, '10': 'suspiciousTransactionCount'},
    {'1': 'protectKeyList', '3': 10, '4': 3, '5': 11, '6': '.qadena.qadena.ProtectKey', '8': {}, '10': 'protectKeyList'},
    {'1': 'recoverKeyList', '3': 11, '4': 3, '5': 11, '6': '.qadena.qadena.RecoverKey', '8': {}, '10': 'recoverKeyList'},
  ],
};

/// Descriptor for `GenesisState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genesisStateDescriptor = $convert.base64Decode(
    'CgxHZW5lc2lzU3RhdGUSOAoGcGFyYW1zGAEgASgLMhUucWFkZW5hLnFhZGVuYS5QYXJhbXNCCc'
    'jeHwCo57AqAVIGcGFyYW1zEkcKDmNyZWRlbnRpYWxMaXN0GAIgAygLMhkucWFkZW5hLnFhZGVu'
    'YS5DcmVkZW50aWFsQgTI3h8AUg5jcmVkZW50aWFsTGlzdBJECg1wdWJsaWNLZXlMaXN0GAMgAy'
    'gLMhgucWFkZW5hLnFhZGVuYS5QdWJsaWNLZXlCBMjeHwBSDXB1YmxpY0tleUxpc3QSOwoKd2Fs'
    'bGV0TGlzdBgEIAMoCzIVLnFhZGVuYS5xYWRlbmEuV2FsbGV0QgTI3h8AUgp3YWxsZXRMaXN0Em'
    'IKF2ludGVydmFsUHVibGljS2V5SURMaXN0GAUgAygLMiIucWFkZW5hLnFhZGVuYS5JbnRlcnZh'
    'bFB1YmxpY0tleUlEQgTI3h8AUhdpbnRlcnZhbFB1YmxpY0tleUlETGlzdBJHCg5waW9uZWVySm'
    'FyTGlzdBgGIAMoCzIZLnFhZGVuYS5xYWRlbmEuUGlvbmVlckphckIEyN4fAFIOcGlvbmVlckph'
    'ckxpc3QSTQoQamFyUmVndWxhdG9yTGlzdBgHIAMoCzIbLnFhZGVuYS5xYWRlbmEuSmFyUmVndW'
    'xhdG9yQgTI3h8AUhBqYXJSZWd1bGF0b3JMaXN0EmgKGXN1c3BpY2lvdXNUcmFuc2FjdGlvbkxp'
    'c3QYCCADKAsyJC5xYWRlbmEucWFkZW5hLlN1c3BpY2lvdXNUcmFuc2FjdGlvbkIEyN4fAFIZc3'
    'VzcGljaW91c1RyYW5zYWN0aW9uTGlzdBI+ChpzdXNwaWNpb3VzVHJhbnNhY3Rpb25Db3VudBgJ'
    'IAEoBFIac3VzcGljaW91c1RyYW5zYWN0aW9uQ291bnQSRwoOcHJvdGVjdEtleUxpc3QYCiADKA'
    'syGS5xYWRlbmEucWFkZW5hLlByb3RlY3RLZXlCBMjeHwBSDnByb3RlY3RLZXlMaXN0EkcKDnJl'
    'Y292ZXJLZXlMaXN0GAsgAygLMhkucWFkZW5hLnFhZGVuYS5SZWNvdmVyS2V5QgTI3h8AUg5yZW'
    'NvdmVyS2V5TGlzdA==');

