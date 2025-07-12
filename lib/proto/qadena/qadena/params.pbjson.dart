//
//  Generated code. Do not modify.
//  source: qadena/qadena/params.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use paramsDescriptor instead')
const Params$json = {
  '1': 'Params',
  '2': [
    {'1': 'create_wallet_incentive', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'createWalletIncentive'},
    {'1': 'create_ephemeral_wallet_incentive', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'createEphemeralWalletIncentive'},
    {'1': 'create_wallet_transparent_incentive', '3': 3, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'createWalletTransparentIncentive'},
    {'1': 'create_ephemeral_wallet_transparent_incentive', '3': 4, '4': 1, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'createEphemeralWalletTransparentIncentive'},
    {'1': 'create_credential_fee', '3': 5, '4': 1, '5': 9, '10': 'createCredentialFee'},
    {'1': 'ekyc_submit_new_app_royalty_percentage', '3': 6, '4': 1, '5': 9, '10': 'ekycSubmitNewAppRoyaltyPercentage'},
    {'1': 'ekyc_submit_reuse_app_royalty_percentage', '3': 7, '4': 1, '5': 9, '10': 'ekycSubmitReuseAppRoyaltyPercentage'},
    {'1': 'ekyc_submit_reuse_provider_royalty_percentage', '3': 8, '4': 1, '5': 9, '10': 'ekycSubmitReuseProviderRoyaltyPercentage'},
  ],
  '7': {},
};

/// Descriptor for `Params`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paramsDescriptor = $convert.base64Decode(
    'CgZQYXJhbXMSeQoXY3JlYXRlX3dhbGxldF9pbmNlbnRpdmUYASABKAsyGS5jb3Ntb3MuYmFzZS'
    '52MWJldGExLkNvaW5CJsjeHwDy3h8eeWFtbDoiY3JlYXRlX3dhbGxldF9pbmNlbnRpdmUiUhVj'
    'cmVhdGVXYWxsZXRJbmNlbnRpdmUSlgEKIWNyZWF0ZV9lcGhlbWVyYWxfd2FsbGV0X2luY2VudG'
    'l2ZRgCIAEoCzIZLmNvc21vcy5iYXNlLnYxYmV0YTEuQ29pbkIwyN4fAPLeHyh5YW1sOiJjcmVh'
    'dGVfZXBoZW1lcmFsX3dhbGxldF9pbmNlbnRpdmUiUh5jcmVhdGVFcGhlbWVyYWxXYWxsZXRJbm'
    'NlbnRpdmUSnAEKI2NyZWF0ZV93YWxsZXRfdHJhbnNwYXJlbnRfaW5jZW50aXZlGAMgASgLMhku'
    'Y29zbW9zLmJhc2UudjFiZXRhMS5Db2luQjLI3h8A8t4fKnlhbWw6ImNyZWF0ZV93YWxsZXRfdH'
    'JhbnNwYXJlbnRfaW5jZW50aXZlIlIgY3JlYXRlV2FsbGV0VHJhbnNwYXJlbnRJbmNlbnRpdmUS'
    'uQEKLWNyZWF0ZV9lcGhlbWVyYWxfd2FsbGV0X3RyYW5zcGFyZW50X2luY2VudGl2ZRgEIAEoCz'
    'IZLmNvc21vcy5iYXNlLnYxYmV0YTEuQ29pbkI8yN4fAPLeHzR5YW1sOiJjcmVhdGVfZXBoZW1l'
    'cmFsX3dhbGxldF90cmFuc3BhcmVudF9pbmNlbnRpdmUiUiljcmVhdGVFcGhlbWVyYWxXYWxsZX'
    'RUcmFuc3BhcmVudEluY2VudGl2ZRIyChVjcmVhdGVfY3JlZGVudGlhbF9mZWUYBSABKAlSE2Ny'
    'ZWF0ZUNyZWRlbnRpYWxGZWUSUQomZWt5Y19zdWJtaXRfbmV3X2FwcF9yb3lhbHR5X3BlcmNlbn'
    'RhZ2UYBiABKAlSIWVreWNTdWJtaXROZXdBcHBSb3lhbHR5UGVyY2VudGFnZRJVCihla3ljX3N1'
    'Ym1pdF9yZXVzZV9hcHBfcm95YWx0eV9wZXJjZW50YWdlGAcgASgJUiNla3ljU3VibWl0UmV1c2'
    'VBcHBSb3lhbHR5UGVyY2VudGFnZRJfCi1la3ljX3N1Ym1pdF9yZXVzZV9wcm92aWRlcl9yb3lh'
    'bHR5X3BlcmNlbnRhZ2UYCCABKAlSKGVreWNTdWJtaXRSZXVzZVByb3ZpZGVyUm95YWx0eVBlcm'
    'NlbnRhZ2U6NeigHwGK57AqLGdpdGh1Yi5jb20vYzNxdGVjaC9xYWRlbmFfdjMveC9xYWRlbmEv'
    'UGFyYW1z');

