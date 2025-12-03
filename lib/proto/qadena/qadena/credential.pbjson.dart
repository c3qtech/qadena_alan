//
//  Generated code. Do not modify.
//  source: qadena/qadena/credential.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use credentialDescriptor instead')
const Credential$json = {
  '1': 'Credential',
  '2': [
    {'1': 'credentialID', '3': 1, '4': 1, '5': 9, '10': 'credentialID'},
    {'1': 'credentialType', '3': 2, '4': 1, '5': 9, '10': 'credentialType'},
    {'1': 'walletID', '3': 3, '4': 1, '5': 9, '10': 'walletID'},
    {'1': 'credentialPedersenCommit', '3': 4, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'credentialPedersenCommit'},
    {'1': 'encCredentialHashVShare', '3': 5, '4': 1, '5': 12, '10': 'encCredentialHashVShare'},
    {'1': 'credentialHashVShareBind', '3': 6, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'credentialHashVShareBind'},
    {'1': 'encCredentialInfoVShare', '3': 7, '4': 1, '5': 12, '10': 'encCredentialInfoVShare'},
    {'1': 'credentialInfoVShareBind', '3': 8, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'credentialInfoVShareBind'},
    {'1': 'findCredentialPedersenCommit', '3': 9, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'findCredentialPedersenCommit'},
    {'1': 'providerWalletID', '3': 10, '4': 1, '5': 9, '10': 'providerWalletID'},
    {'1': 'referenceCredentialID', '3': 11, '4': 1, '5': 9, '10': 'referenceCredentialID'},
    {'1': 'identityOwnerWalletID', '3': 12, '4': 1, '5': 9, '10': 'identityOwnerWalletID'},
    {'1': 'ekycAppWalletID', '3': 13, '4': 1, '5': 9, '10': 'ekycAppWalletID'},
  ],
};

/// Descriptor for `Credential`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List credentialDescriptor = $convert.base64Decode(
    'CgpDcmVkZW50aWFsEiIKDGNyZWRlbnRpYWxJRBgBIAEoCVIMY3JlZGVudGlhbElEEiYKDmNyZW'
    'RlbnRpYWxUeXBlGAIgASgJUg5jcmVkZW50aWFsVHlwZRIaCgh3YWxsZXRJRBgDIAEoCVIId2Fs'
    'bGV0SUQSWgoYY3JlZGVudGlhbFBlZGVyc2VuQ29tbWl0GAQgASgLMh4ucWFkZW5hLnFhZGVuYS'
    '5CUGVkZXJzZW5Db21taXRSGGNyZWRlbnRpYWxQZWRlcnNlbkNvbW1pdBI4ChdlbmNDcmVkZW50'
    'aWFsSGFzaFZTaGFyZRgFIAEoDFIXZW5jQ3JlZGVudGlhbEhhc2hWU2hhcmUSWQoYY3JlZGVudG'
    'lhbEhhc2hWU2hhcmVCaW5kGAYgASgLMh0ucWFkZW5hLnFhZGVuYS5WU2hhcmVCaW5kRGF0YVIY'
    'Y3JlZGVudGlhbEhhc2hWU2hhcmVCaW5kEjgKF2VuY0NyZWRlbnRpYWxJbmZvVlNoYXJlGAcgAS'
    'gMUhdlbmNDcmVkZW50aWFsSW5mb1ZTaGFyZRJZChhjcmVkZW50aWFsSW5mb1ZTaGFyZUJpbmQY'
    'CCABKAsyHS5xYWRlbmEucWFkZW5hLlZTaGFyZUJpbmREYXRhUhhjcmVkZW50aWFsSW5mb1ZTaG'
    'FyZUJpbmQSYgocZmluZENyZWRlbnRpYWxQZWRlcnNlbkNvbW1pdBgJIAEoCzIeLnFhZGVuYS5x'
    'YWRlbmEuQlBlZGVyc2VuQ29tbWl0UhxmaW5kQ3JlZGVudGlhbFBlZGVyc2VuQ29tbWl0EioKEH'
    'Byb3ZpZGVyV2FsbGV0SUQYCiABKAlSEHByb3ZpZGVyV2FsbGV0SUQSNAoVcmVmZXJlbmNlQ3Jl'
    'ZGVudGlhbElEGAsgASgJUhVyZWZlcmVuY2VDcmVkZW50aWFsSUQSNAoVaWRlbnRpdHlPd25lcl'
    'dhbGxldElEGAwgASgJUhVpZGVudGl0eU93bmVyV2FsbGV0SUQSKAoPZWt5Y0FwcFdhbGxldElE'
    'GA0gASgJUg9la3ljQXBwV2FsbGV0SUQ=');

@$core.Deprecated('Use msgBindCredentialDescriptor instead')
const MsgBindCredential$json = {
  '1': 'MsgBindCredential',
  '2': [
    {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    {'1': 'credentialType', '3': 2, '4': 1, '5': 9, '10': 'credentialType'},
    {'1': 'credentialInfo', '3': 3, '4': 1, '5': 9, '10': 'credentialInfo'},
    {'1': 'proofPedersenCommit', '3': 4, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'proofPedersenCommit'},
  ],
};

/// Descriptor for `MsgBindCredential`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgBindCredentialDescriptor = $convert.base64Decode(
    'ChFNc2dCaW5kQ3JlZGVudGlhbBIYCgdjcmVhdG9yGAEgASgJUgdjcmVhdG9yEiYKDmNyZWRlbn'
    'RpYWxUeXBlGAIgASgJUg5jcmVkZW50aWFsVHlwZRImCg5jcmVkZW50aWFsSW5mbxgDIAEoCVIO'
    'Y3JlZGVudGlhbEluZm8SUAoTcHJvb2ZQZWRlcnNlbkNvbW1pdBgEIAEoCzIeLnFhZGVuYS5xYW'
    'RlbmEuQlBlZGVyc2VuQ29tbWl0UhNwcm9vZlBlZGVyc2VuQ29tbWl0');

@$core.Deprecated('Use msgBindCredentialResponseDescriptor instead')
const MsgBindCredentialResponse$json = {
  '1': 'MsgBindCredentialResponse',
};

/// Descriptor for `MsgBindCredentialResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgBindCredentialResponseDescriptor = $convert.base64Decode(
    'ChlNc2dCaW5kQ3JlZGVudGlhbFJlc3BvbnNl');

