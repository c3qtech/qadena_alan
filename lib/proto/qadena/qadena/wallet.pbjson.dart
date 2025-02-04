//
//  Generated code. Do not modify.
//  source: qadena/qadena/wallet.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use walletAmountDescriptor instead')
const WalletAmount$json = {
  '1': 'WalletAmount',
  '2': [
    {'1': 'walletAmountPedersenCommit', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'walletAmountPedersenCommit'},
    {'1': 'encWalletAmountVShare', '3': 2, '4': 1, '5': 12, '10': 'encWalletAmountVShare'},
    {'1': 'walletAmountVShareBind', '3': 3, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'walletAmountVShareBind'},
    {'1': 'RequiredSenderCheckPC', '3': 4, '4': 3, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'RequiredSenderCheckPC'},
  ],
};

/// Descriptor for `WalletAmount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletAmountDescriptor = $convert.base64Decode(
    'CgxXYWxsZXRBbW91bnQSXgoad2FsbGV0QW1vdW50UGVkZXJzZW5Db21taXQYASABKAsyHi5xYW'
    'RlbmEucWFkZW5hLkJQZWRlcnNlbkNvbW1pdFIad2FsbGV0QW1vdW50UGVkZXJzZW5Db21taXQS'
    'NAoVZW5jV2FsbGV0QW1vdW50VlNoYXJlGAIgASgMUhVlbmNXYWxsZXRBbW91bnRWU2hhcmUSVQ'
    'oWd2FsbGV0QW1vdW50VlNoYXJlQmluZBgDIAEoCzIdLnFhZGVuYS5xYWRlbmEuVlNoYXJlQmlu'
    'ZERhdGFSFndhbGxldEFtb3VudFZTaGFyZUJpbmQSVAoVUmVxdWlyZWRTZW5kZXJDaGVja1BDGA'
    'QgAygLMh4ucWFkZW5hLnFhZGVuYS5CUGVkZXJzZW5Db21taXRSFVJlcXVpcmVkU2VuZGVyQ2hl'
    'Y2tQQw==');

@$core.Deprecated('Use listWalletAmountDescriptor instead')
const ListWalletAmount$json = {
  '1': 'ListWalletAmount',
  '2': [
    {'1': 'walletAmounts', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.WalletAmount', '10': 'walletAmounts'},
  ],
};

/// Descriptor for `ListWalletAmount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listWalletAmountDescriptor = $convert.base64Decode(
    'ChBMaXN0V2FsbGV0QW1vdW50EkEKDXdhbGxldEFtb3VudHMYASADKAsyGy5xYWRlbmEucWFkZW'
    '5hLldhbGxldEFtb3VudFINd2FsbGV0QW1vdW50cw==');

@$core.Deprecated('Use walletDescriptor instead')
const Wallet$json = {
  '1': 'Wallet',
  '2': [
    {'1': 'walletID', '3': 1, '4': 1, '5': 9, '10': 'walletID'},
    {'1': 'homePioneerID', '3': 2, '4': 1, '5': 9, '10': 'homePioneerID'},
    {'1': 'serviceProviderID', '3': 3, '4': 3, '5': 9, '10': 'serviceProviderID'},
    {'1': 'walletAmount', '3': 4, '4': 3, '5': 11, '6': '.qadena.qadena.Wallet.WalletAmountEntry', '10': 'walletAmount'},
    {'1': 'credentialID', '3': 5, '4': 1, '5': 9, '10': 'credentialID'},
    {'1': 'encCreateWalletVShare', '3': 6, '4': 1, '5': 12, '10': 'encCreateWalletVShare'},
    {'1': 'createWalletVShareBind', '3': 7, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'createWalletVShareBind'},
    {'1': 'ephemeralWalletAmountCount', '3': 8, '4': 3, '5': 11, '6': '.qadena.qadena.Wallet.EphemeralWalletAmountCountEntry', '10': 'ephemeralWalletAmountCount'},
    {'1': 'queuedWalletAmount', '3': 9, '4': 3, '5': 11, '6': '.qadena.qadena.Wallet.QueuedWalletAmountEntry', '10': 'queuedWalletAmount'},
    {'1': 'acceptPasswordPedersenCommit', '3': 10, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'acceptPasswordPedersenCommit'},
    {'1': 'encAcceptValidatedCredentialsVShare', '3': 11, '4': 1, '5': 12, '10': 'encAcceptValidatedCredentialsVShare'},
    {'1': 'acceptValidatedCredentialsVShareBind', '3': 12, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'acceptValidatedCredentialsVShareBind'},
    {'1': 'senderOptions', '3': 13, '4': 1, '5': 9, '10': 'senderOptions'},
    {'1': 'recoverShares', '3': 14, '4': 3, '5': 11, '6': '.qadena.qadena.RecoverShare', '10': 'recoverShares'},
  ],
  '3': [Wallet_WalletAmountEntry$json, Wallet_EphemeralWalletAmountCountEntry$json, Wallet_QueuedWalletAmountEntry$json],
};

@$core.Deprecated('Use walletDescriptor instead')
const Wallet_WalletAmountEntry$json = {
  '1': 'WalletAmountEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.qadena.qadena.WalletAmount', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use walletDescriptor instead')
const Wallet_EphemeralWalletAmountCountEntry$json = {
  '1': 'EphemeralWalletAmountCountEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use walletDescriptor instead')
const Wallet_QueuedWalletAmountEntry$json = {
  '1': 'QueuedWalletAmountEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.qadena.qadena.ListWalletAmount', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Wallet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletDescriptor = $convert.base64Decode(
    'CgZXYWxsZXQSGgoId2FsbGV0SUQYASABKAlSCHdhbGxldElEEiQKDWhvbWVQaW9uZWVySUQYAi'
    'ABKAlSDWhvbWVQaW9uZWVySUQSLAoRc2VydmljZVByb3ZpZGVySUQYAyADKAlSEXNlcnZpY2VQ'
    'cm92aWRlcklEEksKDHdhbGxldEFtb3VudBgEIAMoCzInLnFhZGVuYS5xYWRlbmEuV2FsbGV0Ll'
    'dhbGxldEFtb3VudEVudHJ5Ugx3YWxsZXRBbW91bnQSIgoMY3JlZGVudGlhbElEGAUgASgJUgxj'
    'cmVkZW50aWFsSUQSNAoVZW5jQ3JlYXRlV2FsbGV0VlNoYXJlGAYgASgMUhVlbmNDcmVhdGVXYW'
    'xsZXRWU2hhcmUSVQoWY3JlYXRlV2FsbGV0VlNoYXJlQmluZBgHIAEoCzIdLnFhZGVuYS5xYWRl'
    'bmEuVlNoYXJlQmluZERhdGFSFmNyZWF0ZVdhbGxldFZTaGFyZUJpbmQSdQoaZXBoZW1lcmFsV2'
    'FsbGV0QW1vdW50Q291bnQYCCADKAsyNS5xYWRlbmEucWFkZW5hLldhbGxldC5FcGhlbWVyYWxX'
    'YWxsZXRBbW91bnRDb3VudEVudHJ5UhplcGhlbWVyYWxXYWxsZXRBbW91bnRDb3VudBJdChJxdW'
    'V1ZWRXYWxsZXRBbW91bnQYCSADKAsyLS5xYWRlbmEucWFkZW5hLldhbGxldC5RdWV1ZWRXYWxs'
    'ZXRBbW91bnRFbnRyeVIScXVldWVkV2FsbGV0QW1vdW50EmIKHGFjY2VwdFBhc3N3b3JkUGVkZX'
    'JzZW5Db21taXQYCiABKAsyHi5xYWRlbmEucWFkZW5hLkJQZWRlcnNlbkNvbW1pdFIcYWNjZXB0'
    'UGFzc3dvcmRQZWRlcnNlbkNvbW1pdBJQCiNlbmNBY2NlcHRWYWxpZGF0ZWRDcmVkZW50aWFsc1'
    'ZTaGFyZRgLIAEoDFIjZW5jQWNjZXB0VmFsaWRhdGVkQ3JlZGVudGlhbHNWU2hhcmUScQokYWNj'
    'ZXB0VmFsaWRhdGVkQ3JlZGVudGlhbHNWU2hhcmVCaW5kGAwgASgLMh0ucWFkZW5hLnFhZGVuYS'
    '5WU2hhcmVCaW5kRGF0YVIkYWNjZXB0VmFsaWRhdGVkQ3JlZGVudGlhbHNWU2hhcmVCaW5kEiQK'
    'DXNlbmRlck9wdGlvbnMYDSABKAlSDXNlbmRlck9wdGlvbnMSQQoNcmVjb3ZlclNoYXJlcxgOIA'
    'MoCzIbLnFhZGVuYS5xYWRlbmEuUmVjb3ZlclNoYXJlUg1yZWNvdmVyU2hhcmVzGlwKEVdhbGxl'
    'dEFtb3VudEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EjEKBXZhbHVlGAIgASgLMhsucWFkZW5hLn'
    'FhZGVuYS5XYWxsZXRBbW91bnRSBXZhbHVlOgI4ARpNCh9FcGhlbWVyYWxXYWxsZXRBbW91bnRD'
    'b3VudEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgFUgV2YWx1ZToCOAEaZg'
    'oXUXVldWVkV2FsbGV0QW1vdW50RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSNQoFdmFsdWUYAiAB'
    'KAsyHy5xYWRlbmEucWFkZW5hLkxpc3RXYWxsZXRBbW91bnRSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use stringWalletAmountDescriptor instead')
const StringWalletAmount$json = {
  '1': 'StringWalletAmount',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'val', '3': 2, '4': 1, '5': 11, '6': '.qadena.qadena.WalletAmount', '10': 'val'},
  ],
};

/// Descriptor for `StringWalletAmount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringWalletAmountDescriptor = $convert.base64Decode(
    'ChJTdHJpbmdXYWxsZXRBbW91bnQSEgoEbmFtZRgBIAEoCVIEbmFtZRItCgN2YWwYAiABKAsyGy'
    '5xYWRlbmEucWFkZW5hLldhbGxldEFtb3VudFIDdmFs');

@$core.Deprecated('Use stringInt32Descriptor instead')
const StringInt32$json = {
  '1': 'StringInt32',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'val', '3': 2, '4': 1, '5': 5, '10': 'val'},
  ],
};

/// Descriptor for `StringInt32`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringInt32Descriptor = $convert.base64Decode(
    'CgtTdHJpbmdJbnQzMhISCgRuYW1lGAEgASgJUgRuYW1lEhAKA3ZhbBgCIAEoBVIDdmFs');

@$core.Deprecated('Use stringListWalletAmountDescriptor instead')
const StringListWalletAmount$json = {
  '1': 'StringListWalletAmount',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'val', '3': 2, '4': 1, '5': 11, '6': '.qadena.qadena.ListWalletAmount', '10': 'val'},
  ],
};

/// Descriptor for `StringListWalletAmount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringListWalletAmountDescriptor = $convert.base64Decode(
    'ChZTdHJpbmdMaXN0V2FsbGV0QW1vdW50EhIKBG5hbWUYASABKAlSBG5hbWUSMQoDdmFsGAIgAS'
    'gLMh8ucWFkZW5hLnFhZGVuYS5MaXN0V2FsbGV0QW1vdW50UgN2YWw=');

@$core.Deprecated('Use stableWalletDescriptor instead')
const StableWallet$json = {
  '1': 'StableWallet',
  '2': [
    {'1': 'walletID', '3': 1, '4': 1, '5': 9, '10': 'walletID'},
    {'1': 'homePioneerID', '3': 2, '4': 1, '5': 9, '10': 'homePioneerID'},
    {'1': 'serviceProviderID', '3': 3, '4': 3, '5': 9, '10': 'serviceProviderID'},
    {'1': 'walletAmount', '3': 4, '4': 3, '5': 11, '6': '.qadena.qadena.StringWalletAmount', '10': 'walletAmount'},
    {'1': 'credentialID', '3': 5, '4': 1, '5': 9, '10': 'credentialID'},
    {'1': 'encCreateWalletVShare', '3': 6, '4': 1, '5': 12, '10': 'encCreateWalletVShare'},
    {'1': 'createWalletVShareBind', '3': 7, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'createWalletVShareBind'},
    {'1': 'ephemeralWalletAmountCount', '3': 8, '4': 3, '5': 11, '6': '.qadena.qadena.StringInt32', '10': 'ephemeralWalletAmountCount'},
    {'1': 'queuedWalletAmount', '3': 9, '4': 3, '5': 11, '6': '.qadena.qadena.StringListWalletAmount', '10': 'queuedWalletAmount'},
    {'1': 'acceptPasswordPedersenCommit', '3': 10, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'acceptPasswordPedersenCommit'},
    {'1': 'encAcceptValidatedCredentialsVShare', '3': 11, '4': 1, '5': 12, '10': 'encAcceptValidatedCredentialsVShare'},
    {'1': 'acceptValidatedCredentialsVShareBind', '3': 12, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'acceptValidatedCredentialsVShareBind'},
    {'1': 'senderOptions', '3': 13, '4': 1, '5': 9, '10': 'senderOptions'},
    {'1': 'recoverShares', '3': 14, '4': 3, '5': 11, '6': '.qadena.qadena.RecoverShare', '10': 'recoverShares'},
  ],
};

/// Descriptor for `StableWallet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stableWalletDescriptor = $convert.base64Decode(
    'CgxTdGFibGVXYWxsZXQSGgoId2FsbGV0SUQYASABKAlSCHdhbGxldElEEiQKDWhvbWVQaW9uZW'
    'VySUQYAiABKAlSDWhvbWVQaW9uZWVySUQSLAoRc2VydmljZVByb3ZpZGVySUQYAyADKAlSEXNl'
    'cnZpY2VQcm92aWRlcklEEkUKDHdhbGxldEFtb3VudBgEIAMoCzIhLnFhZGVuYS5xYWRlbmEuU3'
    'RyaW5nV2FsbGV0QW1vdW50Ugx3YWxsZXRBbW91bnQSIgoMY3JlZGVudGlhbElEGAUgASgJUgxj'
    'cmVkZW50aWFsSUQSNAoVZW5jQ3JlYXRlV2FsbGV0VlNoYXJlGAYgASgMUhVlbmNDcmVhdGVXYW'
    'xsZXRWU2hhcmUSVQoWY3JlYXRlV2FsbGV0VlNoYXJlQmluZBgHIAEoCzIdLnFhZGVuYS5xYWRl'
    'bmEuVlNoYXJlQmluZERhdGFSFmNyZWF0ZVdhbGxldFZTaGFyZUJpbmQSWgoaZXBoZW1lcmFsV2'
    'FsbGV0QW1vdW50Q291bnQYCCADKAsyGi5xYWRlbmEucWFkZW5hLlN0cmluZ0ludDMyUhplcGhl'
    'bWVyYWxXYWxsZXRBbW91bnRDb3VudBJVChJxdWV1ZWRXYWxsZXRBbW91bnQYCSADKAsyJS5xYW'
    'RlbmEucWFkZW5hLlN0cmluZ0xpc3RXYWxsZXRBbW91bnRSEnF1ZXVlZFdhbGxldEFtb3VudBJi'
    'ChxhY2NlcHRQYXNzd29yZFBlZGVyc2VuQ29tbWl0GAogASgLMh4ucWFkZW5hLnFhZGVuYS5CUG'
    'VkZXJzZW5Db21taXRSHGFjY2VwdFBhc3N3b3JkUGVkZXJzZW5Db21taXQSUAojZW5jQWNjZXB0'
    'VmFsaWRhdGVkQ3JlZGVudGlhbHNWU2hhcmUYCyABKAxSI2VuY0FjY2VwdFZhbGlkYXRlZENyZW'
    'RlbnRpYWxzVlNoYXJlEnEKJGFjY2VwdFZhbGlkYXRlZENyZWRlbnRpYWxzVlNoYXJlQmluZBgM'
    'IAEoCzIdLnFhZGVuYS5xYWRlbmEuVlNoYXJlQmluZERhdGFSJGFjY2VwdFZhbGlkYXRlZENyZW'
    'RlbnRpYWxzVlNoYXJlQmluZBIkCg1zZW5kZXJPcHRpb25zGA0gASgJUg1zZW5kZXJPcHRpb25z'
    'EkEKDXJlY292ZXJTaGFyZXMYDiADKAsyGy5xYWRlbmEucWFkZW5hLlJlY292ZXJTaGFyZVINcm'
    'Vjb3ZlclNoYXJlcw==');

