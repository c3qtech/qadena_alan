//
//  Generated code. Do not modify.
//  source: qadena/qadena/encryptable.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use encryptableStringDescriptor instead')
const EncryptableString$json = {
  '1': 'EncryptableString',
  '2': [
    {'1': 'Value', '3': 1, '4': 1, '5': 9, '10': 'Value'},
  ],
};

/// Descriptor for `EncryptableString`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableStringDescriptor = $convert.base64Decode(
    'ChFFbmNyeXB0YWJsZVN0cmluZxIUCgVWYWx1ZRgBIAEoCVIFVmFsdWU=');

@$core.Deprecated('Use encryptableClaimCredentialExtraParmsDescriptor instead')
const EncryptableClaimCredentialExtraParms$json = {
  '1': 'EncryptableClaimCredentialExtraParms',
  '2': [
    {'1': 'EncCredentialInfoVShare', '3': 1, '4': 1, '5': 12, '10': 'EncCredentialInfoVShare'},
    {'1': 'CredentialInfoVShareBind', '3': 2, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'CredentialInfoVShareBind'},
    {'1': 'WalletID', '3': 3, '4': 1, '5': 9, '10': 'WalletID'},
    {'1': 'FindCredentialPC', '3': 4, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'FindCredentialPC'},
    {'1': 'NewCredentialPC', '3': 5, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'NewCredentialPC'},
    {'1': 'EncWalletIDVShare', '3': 6, '4': 1, '5': 12, '10': 'EncWalletIDVShare'},
    {'1': 'WalletIDVShareBind', '3': 7, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'WalletIDVShareBind'},
    {'1': 'EncCredentialHashVShare', '3': 8, '4': 1, '5': 12, '10': 'EncCredentialHashVShare'},
    {'1': 'CredentialHashVShareBind', '3': 9, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'CredentialHashVShareBind'},
    {'1': 'ZeroPC', '3': 10, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptablePedersenCommit', '10': 'ZeroPC'},
    {'1': 'ClaimPC', '3': 11, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'ClaimPC'},
  ],
};

/// Descriptor for `EncryptableClaimCredentialExtraParms`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableClaimCredentialExtraParmsDescriptor = $convert.base64Decode(
    'CiRFbmNyeXB0YWJsZUNsYWltQ3JlZGVudGlhbEV4dHJhUGFybXMSOAoXRW5jQ3JlZGVudGlhbE'
    'luZm9WU2hhcmUYASABKAxSF0VuY0NyZWRlbnRpYWxJbmZvVlNoYXJlElkKGENyZWRlbnRpYWxJ'
    'bmZvVlNoYXJlQmluZBgCIAEoCzIdLnFhZGVuYS5xYWRlbmEuVlNoYXJlQmluZERhdGFSGENyZW'
    'RlbnRpYWxJbmZvVlNoYXJlQmluZBIaCghXYWxsZXRJRBgDIAEoCVIIV2FsbGV0SUQSSgoQRmlu'
    'ZENyZWRlbnRpYWxQQxgEIAEoCzIeLnFhZGVuYS5xYWRlbmEuQlBlZGVyc2VuQ29tbWl0UhBGaW'
    '5kQ3JlZGVudGlhbFBDEkgKD05ld0NyZWRlbnRpYWxQQxgFIAEoCzIeLnFhZGVuYS5xYWRlbmEu'
    'QlBlZGVyc2VuQ29tbWl0Ug9OZXdDcmVkZW50aWFsUEMSLAoRRW5jV2FsbGV0SURWU2hhcmUYBi'
    'ABKAxSEUVuY1dhbGxldElEVlNoYXJlEk0KEldhbGxldElEVlNoYXJlQmluZBgHIAEoCzIdLnFh'
    'ZGVuYS5xYWRlbmEuVlNoYXJlQmluZERhdGFSEldhbGxldElEVlNoYXJlQmluZBI4ChdFbmNDcm'
    'VkZW50aWFsSGFzaFZTaGFyZRgIIAEoDFIXRW5jQ3JlZGVudGlhbEhhc2hWU2hhcmUSWQoYQ3Jl'
    'ZGVudGlhbEhhc2hWU2hhcmVCaW5kGAkgASgLMh0ucWFkZW5hLnFhZGVuYS5WU2hhcmVCaW5kRG'
    'F0YVIYQ3JlZGVudGlhbEhhc2hWU2hhcmVCaW5kEkAKBlplcm9QQxgKIAEoCzIoLnFhZGVuYS5x'
    'YWRlbmEuRW5jcnlwdGFibGVQZWRlcnNlbkNvbW1pdFIGWmVyb1BDEjgKB0NsYWltUEMYCyABKA'
    'syHi5xYWRlbmEucWFkZW5hLkJQZWRlcnNlbkNvbW1pdFIHQ2xhaW1QQw==');

@$core.Deprecated('Use encryptableAuthorizedSignatoryDescriptor instead')
const EncryptableAuthorizedSignatory$json = {
  '1': 'EncryptableAuthorizedSignatory',
  '2': [
    {'1': 'Nonce', '3': 1, '4': 1, '5': 9, '10': 'Nonce'},
    {'1': 'WalletID', '3': 2, '4': 3, '5': 9, '10': 'WalletID'},
  ],
};

/// Descriptor for `EncryptableAuthorizedSignatory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableAuthorizedSignatoryDescriptor = $convert.base64Decode(
    'Ch5FbmNyeXB0YWJsZUF1dGhvcml6ZWRTaWduYXRvcnkSFAoFTm9uY2UYASABKAlSBU5vbmNlEh'
    'oKCFdhbGxldElEGAIgAygJUghXYWxsZXRJRA==');

@$core.Deprecated('Use encryptableSignatoryDescriptor instead')
const EncryptableSignatory$json = {
  '1': 'EncryptableSignatory',
  '2': [
    {'1': 'Nonce', '3': 1, '4': 1, '5': 9, '10': 'Nonce'},
    {'1': 'Email', '3': 2, '4': 1, '5': 9, '10': 'Email'},
    {'1': 'PhoneNumber', '3': 3, '4': 1, '5': 9, '10': 'PhoneNumber'},
  ],
};

/// Descriptor for `EncryptableSignatory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableSignatoryDescriptor = $convert.base64Decode(
    'ChRFbmNyeXB0YWJsZVNpZ25hdG9yeRIUCgVOb25jZRgBIAEoCVIFTm9uY2USFAoFRW1haWwYAi'
    'ABKAlSBUVtYWlsEiAKC1Bob25lTnVtYmVyGAMgASgJUgtQaG9uZU51bWJlcg==');

@$core.Deprecated('Use encryptableWalletAmountDescriptor instead')
const EncryptableWalletAmount$json = {
  '1': 'EncryptableWalletAmount',
  '2': [
    {'1': 'Nonce', '3': 1, '4': 1, '5': 9, '10': 'Nonce'},
    {'1': 'TransactionID', '3': 2, '4': 1, '5': 9, '10': 'TransactionID'},
    {'1': 'PedersenCommit', '3': 3, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptablePedersenCommit', '10': 'PedersenCommit'},
    {'1': 'Note', '3': 4, '4': 1, '5': 9, '10': 'Note'},
    {'1': 'RequiredSenderPIN', '3': 5, '4': 1, '5': 9, '10': 'RequiredSenderPIN'},
    {'1': 'RequiredSenderFirstName', '3': 6, '4': 1, '5': 9, '10': 'RequiredSenderFirstName'},
    {'1': 'RequiredSenderMiddleName', '3': 7, '4': 1, '5': 9, '10': 'RequiredSenderMiddleName'},
    {'1': 'RequiredSenderLastName', '3': 8, '4': 1, '5': 9, '10': 'RequiredSenderLastName'},
  ],
};

/// Descriptor for `EncryptableWalletAmount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableWalletAmountDescriptor = $convert.base64Decode(
    'ChdFbmNyeXB0YWJsZVdhbGxldEFtb3VudBIUCgVOb25jZRgBIAEoCVIFTm9uY2USJAoNVHJhbn'
    'NhY3Rpb25JRBgCIAEoCVINVHJhbnNhY3Rpb25JRBJQCg5QZWRlcnNlbkNvbW1pdBgDIAEoCzIo'
    'LnFhZGVuYS5xYWRlbmEuRW5jcnlwdGFibGVQZWRlcnNlbkNvbW1pdFIOUGVkZXJzZW5Db21taX'
    'QSEgoETm90ZRgEIAEoCVIETm90ZRIsChFSZXF1aXJlZFNlbmRlclBJThgFIAEoCVIRUmVxdWly'
    'ZWRTZW5kZXJQSU4SOAoXUmVxdWlyZWRTZW5kZXJGaXJzdE5hbWUYBiABKAlSF1JlcXVpcmVkU2'
    'VuZGVyRmlyc3ROYW1lEjoKGFJlcXVpcmVkU2VuZGVyTWlkZGxlTmFtZRgHIAEoCVIYUmVxdWly'
    'ZWRTZW5kZXJNaWRkbGVOYW1lEjYKFlJlcXVpcmVkU2VuZGVyTGFzdE5hbWUYCCABKAlSFlJlcX'
    'VpcmVkU2VuZGVyTGFzdE5hbWU=');

@$core.Deprecated('Use encryptablePersonalInfoDetailsDescriptor instead')
const EncryptablePersonalInfoDetails$json = {
  '1': 'EncryptablePersonalInfoDetails',
  '2': [
    {'1': 'FirstName', '3': 1, '4': 1, '5': 9, '10': 'FirstName'},
    {'1': 'MiddleName', '3': 2, '4': 1, '5': 9, '10': 'MiddleName'},
    {'1': 'LastName', '3': 3, '4': 1, '5': 9, '10': 'LastName'},
    {'1': 'Birthdate', '3': 4, '4': 1, '5': 9, '10': 'Birthdate'},
    {'1': 'Citizenship', '3': 5, '4': 1, '5': 9, '10': 'Citizenship'},
    {'1': 'Residency', '3': 6, '4': 1, '5': 9, '10': 'Residency'},
    {'1': 'Gender', '3': 7, '4': 1, '5': 9, '10': 'Gender'},
  ],
};

/// Descriptor for `EncryptablePersonalInfoDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptablePersonalInfoDetailsDescriptor = $convert.base64Decode(
    'Ch5FbmNyeXB0YWJsZVBlcnNvbmFsSW5mb0RldGFpbHMSHAoJRmlyc3ROYW1lGAEgASgJUglGaX'
    'JzdE5hbWUSHgoKTWlkZGxlTmFtZRgCIAEoCVIKTWlkZGxlTmFtZRIaCghMYXN0TmFtZRgDIAEo'
    'CVIITGFzdE5hbWUSHAoJQmlydGhkYXRlGAQgASgJUglCaXJ0aGRhdGUSIAoLQ2l0aXplbnNoaX'
    'AYBSABKAlSC0NpdGl6ZW5zaGlwEhwKCVJlc2lkZW5jeRgGIAEoCVIJUmVzaWRlbmN5EhYKBkdl'
    'bmRlchgHIAEoCVIGR2VuZGVy');

@$core.Deprecated('Use encryptablePersonalInfoDescriptor instead')
const EncryptablePersonalInfo$json = {
  '1': 'EncryptablePersonalInfo',
  '2': [
    {'1': 'Nonce', '3': 1, '4': 1, '5': 9, '10': 'Nonce'},
    {'1': 'PIN', '3': 2, '4': 1, '5': 9, '10': 'PIN'},
    {'1': 'Details', '3': 3, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptablePersonalInfoDetails', '10': 'Details'},
  ],
};

/// Descriptor for `EncryptablePersonalInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptablePersonalInfoDescriptor = $convert.base64Decode(
    'ChdFbmNyeXB0YWJsZVBlcnNvbmFsSW5mbxIUCgVOb25jZRgBIAEoCVIFTm9uY2USEAoDUElOGA'
    'IgASgJUgNQSU4SRwoHRGV0YWlscxgDIAEoCzItLnFhZGVuYS5xYWRlbmEuRW5jcnlwdGFibGVQ'
    'ZXJzb25hbEluZm9EZXRhaWxzUgdEZXRhaWxz');

@$core.Deprecated('Use encryptableSingleContactInfoDetailsDescriptor instead')
const EncryptableSingleContactInfoDetails$json = {
  '1': 'EncryptableSingleContactInfoDetails',
  '2': [
    {'1': 'Contact', '3': 1, '4': 1, '5': 9, '10': 'Contact'},
  ],
};

/// Descriptor for `EncryptableSingleContactInfoDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableSingleContactInfoDetailsDescriptor = $convert.base64Decode(
    'CiNFbmNyeXB0YWJsZVNpbmdsZUNvbnRhY3RJbmZvRGV0YWlscxIYCgdDb250YWN0GAEgASgJUg'
    'dDb250YWN0');

@$core.Deprecated('Use encryptableSingleContactInfoDescriptor instead')
const EncryptableSingleContactInfo$json = {
  '1': 'EncryptableSingleContactInfo',
  '2': [
    {'1': 'Nonce', '3': 1, '4': 1, '5': 9, '10': 'Nonce'},
    {'1': 'PIN', '3': 2, '4': 1, '5': 9, '10': 'PIN'},
    {'1': 'Details', '3': 3, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptableSingleContactInfoDetails', '10': 'Details'},
  ],
};

/// Descriptor for `EncryptableSingleContactInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableSingleContactInfoDescriptor = $convert.base64Decode(
    'ChxFbmNyeXB0YWJsZVNpbmdsZUNvbnRhY3RJbmZvEhQKBU5vbmNlGAEgASgJUgVOb25jZRIQCg'
    'NQSU4YAiABKAlSA1BJThJMCgdEZXRhaWxzGAMgASgLMjIucWFkZW5hLnFhZGVuYS5FbmNyeXB0'
    'YWJsZVNpbmdsZUNvbnRhY3RJbmZvRGV0YWlsc1IHRGV0YWlscw==');

@$core.Deprecated('Use encryptableValidatedCredentialDescriptor instead')
const EncryptableValidatedCredential$json = {
  '1': 'EncryptableValidatedCredential',
  '2': [
    {'1': 'CredentialType', '3': 1, '4': 1, '5': 9, '10': 'CredentialType'},
    {'1': 'PIN', '3': 2, '4': 1, '5': 9, '10': 'PIN'},
    {'1': 'CredentialPC', '3': 3, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'CredentialPC'},
  ],
};

/// Descriptor for `EncryptableValidatedCredential`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableValidatedCredentialDescriptor = $convert.base64Decode(
    'Ch5FbmNyeXB0YWJsZVZhbGlkYXRlZENyZWRlbnRpYWwSJgoOQ3JlZGVudGlhbFR5cGUYASABKA'
    'lSDkNyZWRlbnRpYWxUeXBlEhAKA1BJThgCIAEoCVIDUElOEkIKDENyZWRlbnRpYWxQQxgDIAEo'
    'CzIeLnFhZGVuYS5xYWRlbmEuQlBlZGVyc2VuQ29tbWl0UgxDcmVkZW50aWFsUEM=');

@$core.Deprecated('Use encryptableValidatedCredentialsDescriptor instead')
const EncryptableValidatedCredentials$json = {
  '1': 'EncryptableValidatedCredentials',
  '2': [
    {'1': 'Credentials', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.EncryptableValidatedCredential', '10': 'Credentials'},
  ],
};

/// Descriptor for `EncryptableValidatedCredentials`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableValidatedCredentialsDescriptor = $convert.base64Decode(
    'Ch9FbmNyeXB0YWJsZVZhbGlkYXRlZENyZWRlbnRpYWxzEk8KC0NyZWRlbnRpYWxzGAEgAygLMi'
    '0ucWFkZW5hLnFhZGVuYS5FbmNyeXB0YWJsZVZhbGlkYXRlZENyZWRlbnRpYWxSC0NyZWRlbnRp'
    'YWxz');

@$core.Deprecated('Use encryptableCreateWalletEWalletIDExtraParmsDescriptor instead')
const EncryptableCreateWalletEWalletIDExtraParms$json = {
  '1': 'EncryptableCreateWalletEWalletIDExtraParms',
  '2': [
    {'1': 'ProofPC', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'ProofPC'},
  ],
};

/// Descriptor for `EncryptableCreateWalletEWalletIDExtraParms`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableCreateWalletEWalletIDExtraParmsDescriptor = $convert.base64Decode(
    'CipFbmNyeXB0YWJsZUNyZWF0ZVdhbGxldEVXYWxsZXRJREV4dHJhUGFybXMSOAoHUHJvb2ZQQx'
    'gBIAEoCzIeLnFhZGVuYS5xYWRlbmEuQlBlZGVyc2VuQ29tbWl0UgdQcm9vZlBD');

@$core.Deprecated('Use encryptableCreateWalletEWalletIDDescriptor instead')
const EncryptableCreateWalletEWalletID$json = {
  '1': 'EncryptableCreateWalletEWalletID',
  '2': [
    {'1': 'Nonce', '3': 1, '4': 1, '5': 9, '10': 'Nonce'},
    {'1': 'WalletID', '3': 2, '4': 1, '5': 9, '10': 'WalletID'},
    {'1': 'ExtraParms', '3': 3, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptableCreateWalletEWalletIDExtraParms', '10': 'ExtraParms'},
  ],
};

/// Descriptor for `EncryptableCreateWalletEWalletID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableCreateWalletEWalletIDDescriptor = $convert.base64Decode(
    'CiBFbmNyeXB0YWJsZUNyZWF0ZVdhbGxldEVXYWxsZXRJRBIUCgVOb25jZRgBIAEoCVIFTm9uY2'
    'USGgoIV2FsbGV0SUQYAiABKAlSCFdhbGxldElEElkKCkV4dHJhUGFybXMYAyABKAsyOS5xYWRl'
    'bmEucWFkZW5hLkVuY3J5cHRhYmxlQ3JlYXRlV2FsbGV0RVdhbGxldElERXh0cmFQYXJtc1IKRX'
    'h0cmFQYXJtcw==');

@$core.Deprecated('Use encryptableCreateWalletDescriptor instead')
const EncryptableCreateWallet$json = {
  '1': 'EncryptableCreateWallet',
  '2': [
    {'1': 'DstEWalletID', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptableCreateWalletEWalletID', '10': 'DstEWalletID'},
  ],
};

/// Descriptor for `EncryptableCreateWallet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableCreateWalletDescriptor = $convert.base64Decode(
    'ChdFbmNyeXB0YWJsZUNyZWF0ZVdhbGxldBJTCgxEc3RFV2FsbGV0SUQYASABKAsyLy5xYWRlbm'
    'EucWFkZW5hLkVuY3J5cHRhYmxlQ3JlYXRlV2FsbGV0RVdhbGxldElEUgxEc3RFV2FsbGV0SUQ=');

@$core.Deprecated('Use encryptableTransferFundsEWalletIDExtraParmsDescriptor instead')
const EncryptableTransferFundsEWalletIDExtraParms$json = {
  '1': 'EncryptableTransferFundsEWalletIDExtraParms',
  '2': [
    {'1': 'AcceptPasswordPC', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'AcceptPasswordPC'},
    {'1': 'MatchFirstNameHashHex', '3': 2, '4': 1, '5': 12, '10': 'MatchFirstNameHashHex'},
    {'1': 'MatchMiddleNameHashHex', '3': 3, '4': 1, '5': 12, '10': 'MatchMiddleNameHashHex'},
    {'1': 'MatchLastNameHashHex', '3': 4, '4': 1, '5': 12, '10': 'MatchLastNameHashHex'},
    {'1': 'RequiredSenderFirstNameCheckPC', '3': 5, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'RequiredSenderFirstNameCheckPC'},
    {'1': 'RequiredSenderFirstNameProofPC', '3': 6, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'RequiredSenderFirstNameProofPC'},
    {'1': 'RequiredSenderMiddleNameCheckPC', '3': 7, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'RequiredSenderMiddleNameCheckPC'},
    {'1': 'RequiredSenderMiddleNameProofPC', '3': 8, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'RequiredSenderMiddleNameProofPC'},
    {'1': 'RequiredSenderLastNameCheckPC', '3': 9, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'RequiredSenderLastNameCheckPC'},
    {'1': 'RequiredSenderLastNameProofPC', '3': 10, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'RequiredSenderLastNameProofPC'},
  ],
};

/// Descriptor for `EncryptableTransferFundsEWalletIDExtraParms`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableTransferFundsEWalletIDExtraParmsDescriptor = $convert.base64Decode(
    'CitFbmNyeXB0YWJsZVRyYW5zZmVyRnVuZHNFV2FsbGV0SURFeHRyYVBhcm1zEkoKEEFjY2VwdF'
    'Bhc3N3b3JkUEMYASABKAsyHi5xYWRlbmEucWFkZW5hLkJQZWRlcnNlbkNvbW1pdFIQQWNjZXB0'
    'UGFzc3dvcmRQQxI0ChVNYXRjaEZpcnN0TmFtZUhhc2hIZXgYAiABKAxSFU1hdGNoRmlyc3ROYW'
    '1lSGFzaEhleBI2ChZNYXRjaE1pZGRsZU5hbWVIYXNoSGV4GAMgASgMUhZNYXRjaE1pZGRsZU5h'
    'bWVIYXNoSGV4EjIKFE1hdGNoTGFzdE5hbWVIYXNoSGV4GAQgASgMUhRNYXRjaExhc3ROYW1lSG'
    'FzaEhleBJmCh5SZXF1aXJlZFNlbmRlckZpcnN0TmFtZUNoZWNrUEMYBSABKAsyHi5xYWRlbmEu'
    'cWFkZW5hLkJQZWRlcnNlbkNvbW1pdFIeUmVxdWlyZWRTZW5kZXJGaXJzdE5hbWVDaGVja1BDEm'
    'YKHlJlcXVpcmVkU2VuZGVyRmlyc3ROYW1lUHJvb2ZQQxgGIAEoCzIeLnFhZGVuYS5xYWRlbmEu'
    'QlBlZGVyc2VuQ29tbWl0Uh5SZXF1aXJlZFNlbmRlckZpcnN0TmFtZVByb29mUEMSaAofUmVxdW'
    'lyZWRTZW5kZXJNaWRkbGVOYW1lQ2hlY2tQQxgHIAEoCzIeLnFhZGVuYS5xYWRlbmEuQlBlZGVy'
    'c2VuQ29tbWl0Uh9SZXF1aXJlZFNlbmRlck1pZGRsZU5hbWVDaGVja1BDEmgKH1JlcXVpcmVkU2'
    'VuZGVyTWlkZGxlTmFtZVByb29mUEMYCCABKAsyHi5xYWRlbmEucWFkZW5hLkJQZWRlcnNlbkNv'
    'bW1pdFIfUmVxdWlyZWRTZW5kZXJNaWRkbGVOYW1lUHJvb2ZQQxJkCh1SZXF1aXJlZFNlbmRlck'
    'xhc3ROYW1lQ2hlY2tQQxgJIAEoCzIeLnFhZGVuYS5xYWRlbmEuQlBlZGVyc2VuQ29tbWl0Uh1S'
    'ZXF1aXJlZFNlbmRlckxhc3ROYW1lQ2hlY2tQQxJkCh1SZXF1aXJlZFNlbmRlckxhc3ROYW1lUH'
    'Jvb2ZQQxgKIAEoCzIeLnFhZGVuYS5xYWRlbmEuQlBlZGVyc2VuQ29tbWl0Uh1SZXF1aXJlZFNl'
    'bmRlckxhc3ROYW1lUHJvb2ZQQw==');

@$core.Deprecated('Use encryptableTransferFundsEWalletIDDescriptor instead')
const EncryptableTransferFundsEWalletID$json = {
  '1': 'EncryptableTransferFundsEWalletID',
  '2': [
    {'1': 'Nonce', '3': 1, '4': 1, '5': 9, '10': 'Nonce'},
    {'1': 'WalletID', '3': 2, '4': 1, '5': 9, '10': 'WalletID'},
    {'1': 'ExtraParms', '3': 3, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptableTransferFundsEWalletIDExtraParms', '10': 'ExtraParms'},
  ],
};

/// Descriptor for `EncryptableTransferFundsEWalletID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableTransferFundsEWalletIDDescriptor = $convert.base64Decode(
    'CiFFbmNyeXB0YWJsZVRyYW5zZmVyRnVuZHNFV2FsbGV0SUQSFAoFTm9uY2UYASABKAlSBU5vbm'
    'NlEhoKCFdhbGxldElEGAIgASgJUghXYWxsZXRJRBJaCgpFeHRyYVBhcm1zGAMgASgLMjoucWFk'
    'ZW5hLnFhZGVuYS5FbmNyeXB0YWJsZVRyYW5zZmVyRnVuZHNFV2FsbGV0SURFeHRyYVBhcm1zUg'
    'pFeHRyYVBhcm1z');

@$core.Deprecated('Use encryptableTransferFundsDescriptor instead')
const EncryptableTransferFunds$json = {
  '1': 'EncryptableTransferFunds',
  '2': [
    {'1': 'HiddenTransferPC', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptablePedersenCommit', '10': 'HiddenTransferPC'},
    {'1': 'DstEWalletID', '3': 2, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptableTransferFundsEWalletID', '10': 'DstEWalletID'},
    {'1': 'OptInReason', '3': 3, '4': 1, '5': 9, '10': 'OptInReason'},
  ],
};

/// Descriptor for `EncryptableTransferFunds`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableTransferFundsDescriptor = $convert.base64Decode(
    'ChhFbmNyeXB0YWJsZVRyYW5zZmVyRnVuZHMSVAoQSGlkZGVuVHJhbnNmZXJQQxgBIAEoCzIoLn'
    'FhZGVuYS5xYWRlbmEuRW5jcnlwdGFibGVQZWRlcnNlbkNvbW1pdFIQSGlkZGVuVHJhbnNmZXJQ'
    'QxJUCgxEc3RFV2FsbGV0SUQYAiABKAsyMC5xYWRlbmEucWFkZW5hLkVuY3J5cHRhYmxlVHJhbn'
    'NmZXJGdW5kc0VXYWxsZXRJRFIMRHN0RVdhbGxldElEEiAKC09wdEluUmVhc29uGAMgASgJUgtP'
    'cHRJblJlYXNvbg==');

@$core.Deprecated('Use encryptableReceiveFundsEWalletIDExtraParmsDescriptor instead')
const EncryptableReceiveFundsEWalletIDExtraParms$json = {
  '1': 'EncryptableReceiveFundsEWalletIDExtraParms',
  '2': [
    {'1': 'Queue', '3': 1, '4': 1, '5': 9, '10': 'Queue'},
  ],
};

/// Descriptor for `EncryptableReceiveFundsEWalletIDExtraParms`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableReceiveFundsEWalletIDExtraParmsDescriptor = $convert.base64Decode(
    'CipFbmNyeXB0YWJsZVJlY2VpdmVGdW5kc0VXYWxsZXRJREV4dHJhUGFybXMSFAoFUXVldWUYAS'
    'ABKAlSBVF1ZXVl');

@$core.Deprecated('Use encryptableReceiveFundsEWalletIDDescriptor instead')
const EncryptableReceiveFundsEWalletID$json = {
  '1': 'EncryptableReceiveFundsEWalletID',
  '2': [
    {'1': 'Nonce', '3': 1, '4': 1, '5': 9, '10': 'Nonce'},
    {'1': 'WalletID', '3': 2, '4': 1, '5': 9, '10': 'WalletID'},
    {'1': 'ExtraParms', '3': 3, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptableReceiveFundsEWalletIDExtraParms', '10': 'ExtraParms'},
  ],
};

/// Descriptor for `EncryptableReceiveFundsEWalletID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableReceiveFundsEWalletIDDescriptor = $convert.base64Decode(
    'CiBFbmNyeXB0YWJsZVJlY2VpdmVGdW5kc0VXYWxsZXRJRBIUCgVOb25jZRgBIAEoCVIFTm9uY2'
    'USGgoIV2FsbGV0SUQYAiABKAlSCFdhbGxldElEElkKCkV4dHJhUGFybXMYAyABKAsyOS5xYWRl'
    'bmEucWFkZW5hLkVuY3J5cHRhYmxlUmVjZWl2ZUZ1bmRzRVdhbGxldElERXh0cmFQYXJtc1IKRX'
    'h0cmFQYXJtcw==');

@$core.Deprecated('Use encryptableSignRecoverKeyEWalletIDDescriptor instead')
const EncryptableSignRecoverKeyEWalletID$json = {
  '1': 'EncryptableSignRecoverKeyEWalletID',
  '2': [
    {'1': 'Nonce', '3': 1, '4': 1, '5': 9, '10': 'Nonce'},
    {'1': 'WalletID', '3': 2, '4': 1, '5': 9, '10': 'WalletID'},
  ],
};

/// Descriptor for `EncryptableSignRecoverKeyEWalletID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableSignRecoverKeyEWalletIDDescriptor = $convert.base64Decode(
    'CiJFbmNyeXB0YWJsZVNpZ25SZWNvdmVyS2V5RVdhbGxldElEEhQKBU5vbmNlGAEgASgJUgVOb2'
    '5jZRIaCghXYWxsZXRJRBgCIAEoCVIIV2FsbGV0SUQ=');

@$core.Deprecated('Use encryptableReceiveFundsDescriptor instead')
const EncryptableReceiveFunds$json = {
  '1': 'EncryptableReceiveFunds',
  '2': [
    {'1': 'EphEWalletID', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptableReceiveFundsEWalletID', '10': 'EphEWalletID'},
  ],
};

/// Descriptor for `EncryptableReceiveFunds`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableReceiveFundsDescriptor = $convert.base64Decode(
    'ChdFbmNyeXB0YWJsZVJlY2VpdmVGdW5kcxJTCgxFcGhFV2FsbGV0SUQYASABKAsyLy5xYWRlbm'
    'EucWFkZW5hLkVuY3J5cHRhYmxlUmVjZWl2ZUZ1bmRzRVdhbGxldElEUgxFcGhFV2FsbGV0SUQ=');

@$core.Deprecated('Use encryptableAnonTransferFundsDescriptor instead')
const EncryptableAnonTransferFunds$json = {
  '1': 'EncryptableAnonTransferFunds',
  '2': [
    {'1': 'TotalTransferPrimePC', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptablePedersenCommit', '10': 'TotalTransferPrimePC'},
    {'1': 'TransparentTransferBF', '3': 2, '4': 1, '5': 11, '6': '.qadena.qadena.BInt', '10': 'TransparentTransferBF'},
  ],
};

/// Descriptor for `EncryptableAnonTransferFunds`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableAnonTransferFundsDescriptor = $convert.base64Decode(
    'ChxFbmNyeXB0YWJsZUFub25UcmFuc2ZlckZ1bmRzElwKFFRvdGFsVHJhbnNmZXJQcmltZVBDGA'
    'EgASgLMigucWFkZW5hLnFhZGVuYS5FbmNyeXB0YWJsZVBlZGVyc2VuQ29tbWl0UhRUb3RhbFRy'
    'YW5zZmVyUHJpbWVQQxJJChVUcmFuc3BhcmVudFRyYW5zZmVyQkYYAiABKAsyEy5xYWRlbmEucW'
    'FkZW5hLkJJbnRSFVRyYW5zcGFyZW50VHJhbnNmZXJCRg==');

@$core.Deprecated('Use encryptableESuspiciousAmountDescriptor instead')
const EncryptableESuspiciousAmount$json = {
  '1': 'EncryptableESuspiciousAmount',
  '2': [
    {'1': 'Nonce', '3': 1, '4': 1, '5': 9, '10': 'Nonce'},
    {'1': 'USDCoinAmount', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '10': 'USDCoinAmount'},
    {'1': 'CoinAmount', '3': 3, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '10': 'CoinAmount'},
  ],
};

/// Descriptor for `EncryptableESuspiciousAmount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableESuspiciousAmountDescriptor = $convert.base64Decode(
    'ChxFbmNyeXB0YWJsZUVTdXNwaWNpb3VzQW1vdW50EhQKBU5vbmNlGAEgASgJUgVOb25jZRI/Cg'
    '1VU0RDb2luQW1vdW50GAIgASgLMhkuY29zbW9zLmJhc2UudjFiZXRhMS5Db2luUg1VU0RDb2lu'
    'QW1vdW50EjkKCkNvaW5BbW91bnQYAyABKAsyGS5jb3Ntb3MuYmFzZS52MWJldGExLkNvaW5SCk'
    'NvaW5BbW91bnQ=');

@$core.Deprecated('Use encryptableSSIDAndPrivKDescriptor instead')
const EncryptableSSIDAndPrivK$json = {
  '1': 'EncryptableSSIDAndPrivK',
  '2': [
    {'1': 'PubKID', '3': 1, '4': 1, '5': 9, '10': 'PubKID'},
    {'1': 'PubK', '3': 2, '4': 1, '5': 9, '10': 'PubK'},
    {'1': 'PrivK', '3': 3, '4': 1, '5': 9, '10': 'PrivK'},
  ],
};

/// Descriptor for `EncryptableSSIDAndPrivK`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableSSIDAndPrivKDescriptor = $convert.base64Decode(
    'ChdFbmNyeXB0YWJsZVNTSURBbmRQcml2SxIWCgZQdWJLSUQYASABKAlSBlB1YktJRBISCgRQdW'
    'JLGAIgASgJUgRQdWJLEhQKBVByaXZLGAMgASgJUgVQcml2Sw==');

@$core.Deprecated('Use encryptablePioneerIDsDescriptor instead')
const EncryptablePioneerIDs$json = {
  '1': 'EncryptablePioneerIDs',
  '2': [
    {'1': 'PioneerIDs', '3': 1, '4': 3, '5': 9, '10': 'PioneerIDs'},
  ],
};

/// Descriptor for `EncryptablePioneerIDs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptablePioneerIDsDescriptor = $convert.base64Decode(
    'ChVFbmNyeXB0YWJsZVBpb25lZXJJRHMSHgoKUGlvbmVlcklEcxgBIAMoCVIKUGlvbmVlcklEcw'
    '==');

@$core.Deprecated('Use encryptableEnclaveSSOwnerMapDescriptor instead')
const EncryptableEnclaveSSOwnerMap$json = {
  '1': 'EncryptableEnclaveSSOwnerMap',
  '2': [
    {'1': 'Pioneers', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.EncryptableEnclaveSSOwnerMap.PioneersEntry', '10': 'Pioneers'},
  ],
  '3': [EncryptableEnclaveSSOwnerMap_PioneersEntry$json],
};

@$core.Deprecated('Use encryptableEnclaveSSOwnerMapDescriptor instead')
const EncryptableEnclaveSSOwnerMap_PioneersEntry$json = {
  '1': 'PioneersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptablePioneerIDs', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `EncryptableEnclaveSSOwnerMap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableEnclaveSSOwnerMapDescriptor = $convert.base64Decode(
    'ChxFbmNyeXB0YWJsZUVuY2xhdmVTU093bmVyTWFwElUKCFBpb25lZXJzGAEgAygLMjkucWFkZW'
    '5hLnFhZGVuYS5FbmNyeXB0YWJsZUVuY2xhdmVTU093bmVyTWFwLlBpb25lZXJzRW50cnlSCFBp'
    'b25lZXJzGmEKDVBpb25lZXJzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSOgoFdmFsdWUYAiABKA'
    'syJC5xYWRlbmEucWFkZW5hLkVuY3J5cHRhYmxlUGlvbmVlcklEc1IFdmFsdWU6AjgB');

@$core.Deprecated('Use encryptableEnclavePubKCacheMapDescriptor instead')
const EncryptableEnclavePubKCacheMap$json = {
  '1': 'EncryptableEnclavePubKCacheMap',
  '2': [
    {'1': 'PubKs', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.EncryptableEnclavePubKCacheMap.PubKsEntry', '10': 'PubKs'},
  ],
  '3': [EncryptableEnclavePubKCacheMap_PubKsEntry$json],
};

@$core.Deprecated('Use encryptableEnclavePubKCacheMapDescriptor instead')
const EncryptableEnclavePubKCacheMap_PubKsEntry$json = {
  '1': 'PubKsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `EncryptableEnclavePubKCacheMap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableEnclavePubKCacheMapDescriptor = $convert.base64Decode(
    'Ch5FbmNyeXB0YWJsZUVuY2xhdmVQdWJLQ2FjaGVNYXASTgoFUHViS3MYASADKAsyOC5xYWRlbm'
    'EucWFkZW5hLkVuY3J5cHRhYmxlRW5jbGF2ZVB1YktDYWNoZU1hcC5QdWJLc0VudHJ5UgVQdWJL'
    'cxo4CgpQdWJLc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZT'
    'oCOAE=');

@$core.Deprecated('Use encryptableSharedEnclaveParamsDescriptor instead')
const EncryptableSharedEnclaveParams$json = {
  '1': 'EncryptableSharedEnclaveParams',
  '2': [
    {'1': 'JarID', '3': 1, '4': 1, '5': 9, '10': 'JarID'},
    {'1': 'JarArmorPrivK', '3': 2, '4': 1, '5': 9, '10': 'JarArmorPrivK'},
    {'1': 'JarPrivK', '3': 3, '4': 1, '5': 9, '10': 'JarPrivK'},
    {'1': 'JarPubK', '3': 4, '4': 1, '5': 9, '10': 'JarPubK'},
    {'1': 'RegulatorID', '3': 5, '4': 1, '5': 9, '10': 'RegulatorID'},
    {'1': 'RegulatorArmorPrivK', '3': 6, '4': 1, '5': 9, '10': 'RegulatorArmorPrivK'},
    {'1': 'RegulatorPrivK', '3': 7, '4': 1, '5': 9, '10': 'RegulatorPrivK'},
    {'1': 'RegulatorPubK', '3': 8, '4': 1, '5': 9, '10': 'RegulatorPubK'},
    {'1': 'SSIntervalOwners', '3': 9, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptableEnclaveSSOwnerMap', '10': 'SSIntervalOwners'},
    {'1': 'SSIntervalPubKCache', '3': 10, '4': 1, '5': 11, '6': '.qadena.qadena.EncryptableEnclavePubKCacheMap', '10': 'SSIntervalPubKCache'},
  ],
};

/// Descriptor for `EncryptableSharedEnclaveParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptableSharedEnclaveParamsDescriptor = $convert.base64Decode(
    'Ch5FbmNyeXB0YWJsZVNoYXJlZEVuY2xhdmVQYXJhbXMSFAoFSmFySUQYASABKAlSBUphcklEEi'
    'QKDUphckFybW9yUHJpdksYAiABKAlSDUphckFybW9yUHJpdksSGgoISmFyUHJpdksYAyABKAlS'
    'CEphclByaXZLEhgKB0phclB1YksYBCABKAlSB0phclB1YksSIAoLUmVndWxhdG9ySUQYBSABKA'
    'lSC1JlZ3VsYXRvcklEEjAKE1JlZ3VsYXRvckFybW9yUHJpdksYBiABKAlSE1JlZ3VsYXRvckFy'
    'bW9yUHJpdksSJgoOUmVndWxhdG9yUHJpdksYByABKAlSDlJlZ3VsYXRvclByaXZLEiQKDVJlZ3'
    'VsYXRvclB1YksYCCABKAlSDVJlZ3VsYXRvclB1YksSVwoQU1NJbnRlcnZhbE93bmVycxgJIAEo'
    'CzIrLnFhZGVuYS5xYWRlbmEuRW5jcnlwdGFibGVFbmNsYXZlU1NPd25lck1hcFIQU1NJbnRlcn'
    'ZhbE93bmVycxJfChNTU0ludGVydmFsUHViS0NhY2hlGAogASgLMi0ucWFkZW5hLnFhZGVuYS5F'
    'bmNyeXB0YWJsZUVuY2xhdmVQdWJLQ2FjaGVNYXBSE1NTSW50ZXJ2YWxQdWJLQ2FjaGU=');

