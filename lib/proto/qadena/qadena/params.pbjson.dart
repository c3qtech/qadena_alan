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
    {'1': 'ekyc_identity_owner_royalty_percentage', '3': 9, '4': 1, '5': 9, '10': 'ekycIdentityOwnerRoyaltyPercentage'},
    {'1': 'create_bulk_credentials_fee', '3': 10, '4': 1, '5': 9, '10': 'createBulkCredentialsFee'},
    {'1': 'update_credential_fee', '3': 11, '4': 1, '5': 9, '10': 'updateCredentialFee'},
    {'1': 'update_credential_policy_version', '3': 12, '4': 1, '5': 13, '10': 'updateCredentialPolicyVersion'},
    {'1': 'update_credential_max_identity_aliases', '3': 13, '4': 1, '5': 13, '10': 'updateCredentialMaxIdentityAliases'},
    {'1': 'update_credential_max_life_events', '3': 14, '4': 1, '5': 13, '10': 'updateCredentialMaxLifeEvents'},
    {'1': 'update_name_max_edit_distance', '3': 15, '4': 1, '5': 13, '10': 'updateNameMaxEditDistance'},
    {'1': 'update_name_max_edit_distance_percent', '3': 16, '4': 1, '5': 13, '10': 'updateNameMaxEditDistancePercent'},
    {'1': 'update_birthdate_max_year_delta', '3': 17, '4': 1, '5': 13, '10': 'updateBirthdateMaxYearDelta'},
    {'1': 'update_credential_min_blocks_between_updates', '3': 18, '4': 1, '5': 3, '10': 'updateCredentialMinBlocksBetweenUpdates'},
    {'1': 'update_credential_allow_last_name_life_event', '3': 19, '4': 1, '5': 8, '10': 'updateCredentialAllowLastNameLifeEvent'},
    {'1': 'update_credential_allow_gender_change', '3': 20, '4': 1, '5': 8, '10': 'updateCredentialAllowGenderChange'},
    {'1': 'suspicious_transaction_threshold', '3': 21, '4': 1, '5': 9, '10': 'suspiciousTransactionThreshold'},
    {'1': 'suspicious_transaction_window_seconds', '3': 22, '4': 1, '5': 3, '10': 'suspiciousTransactionWindowSeconds'},
    {'1': 'suspicious_transaction_threshold_overrides', '3': 23, '4': 3, '5': 11, '6': '.qadena.qadena.SuspiciousThresholdOverride', '8': {}, '10': 'suspiciousTransactionThresholdOverrides'},
    {'1': 'allow_transfer_without_ekyc', '3': 24, '4': 1, '5': 8, '10': 'allowTransferWithoutEkyc'},
    {'1': 'update_credential_max_changed_identity_fields', '3': 25, '4': 1, '5': 13, '10': 'updateCredentialMaxChangedIdentityFields'},
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
    'NlbnRhZ2USUgomZWt5Y19pZGVudGl0eV9vd25lcl9yb3lhbHR5X3BlcmNlbnRhZ2UYCSABKAlS'
    'ImVreWNJZGVudGl0eU93bmVyUm95YWx0eVBlcmNlbnRhZ2USPQobY3JlYXRlX2J1bGtfY3JlZG'
    'VudGlhbHNfZmVlGAogASgJUhhjcmVhdGVCdWxrQ3JlZGVudGlhbHNGZWUSMgoVdXBkYXRlX2Ny'
    'ZWRlbnRpYWxfZmVlGAsgASgJUhN1cGRhdGVDcmVkZW50aWFsRmVlEkcKIHVwZGF0ZV9jcmVkZW'
    '50aWFsX3BvbGljeV92ZXJzaW9uGAwgASgNUh11cGRhdGVDcmVkZW50aWFsUG9saWN5VmVyc2lv'
    'bhJSCiZ1cGRhdGVfY3JlZGVudGlhbF9tYXhfaWRlbnRpdHlfYWxpYXNlcxgNIAEoDVIidXBkYX'
    'RlQ3JlZGVudGlhbE1heElkZW50aXR5QWxpYXNlcxJICiF1cGRhdGVfY3JlZGVudGlhbF9tYXhf'
    'bGlmZV9ldmVudHMYDiABKA1SHXVwZGF0ZUNyZWRlbnRpYWxNYXhMaWZlRXZlbnRzEkAKHXVwZG'
    'F0ZV9uYW1lX21heF9lZGl0X2Rpc3RhbmNlGA8gASgNUhl1cGRhdGVOYW1lTWF4RWRpdERpc3Rh'
    'bmNlEk8KJXVwZGF0ZV9uYW1lX21heF9lZGl0X2Rpc3RhbmNlX3BlcmNlbnQYECABKA1SIHVwZG'
    'F0ZU5hbWVNYXhFZGl0RGlzdGFuY2VQZXJjZW50EkQKH3VwZGF0ZV9iaXJ0aGRhdGVfbWF4X3ll'
    'YXJfZGVsdGEYESABKA1SG3VwZGF0ZUJpcnRoZGF0ZU1heFllYXJEZWx0YRJdCix1cGRhdGVfY3'
    'JlZGVudGlhbF9taW5fYmxvY2tzX2JldHdlZW5fdXBkYXRlcxgSIAEoA1IndXBkYXRlQ3JlZGVu'
    'dGlhbE1pbkJsb2Nrc0JldHdlZW5VcGRhdGVzElwKLHVwZGF0ZV9jcmVkZW50aWFsX2FsbG93X2'
    'xhc3RfbmFtZV9saWZlX2V2ZW50GBMgASgIUiZ1cGRhdGVDcmVkZW50aWFsQWxsb3dMYXN0TmFt'
    'ZUxpZmVFdmVudBJQCiV1cGRhdGVfY3JlZGVudGlhbF9hbGxvd19nZW5kZXJfY2hhbmdlGBQgAS'
    'gIUiF1cGRhdGVDcmVkZW50aWFsQWxsb3dHZW5kZXJDaGFuZ2USSAogc3VzcGljaW91c190cmFu'
    'c2FjdGlvbl90aHJlc2hvbGQYFSABKAlSHnN1c3BpY2lvdXNUcmFuc2FjdGlvblRocmVzaG9sZB'
    'JRCiVzdXNwaWNpb3VzX3RyYW5zYWN0aW9uX3dpbmRvd19zZWNvbmRzGBYgASgDUiJzdXNwaWNp'
    'b3VzVHJhbnNhY3Rpb25XaW5kb3dTZWNvbmRzEo0BCipzdXNwaWNpb3VzX3RyYW5zYWN0aW9uX3'
    'RocmVzaG9sZF9vdmVycmlkZXMYFyADKAsyKi5xYWRlbmEucWFkZW5hLlN1c3BpY2lvdXNUaHJl'
    'c2hvbGRPdmVycmlkZUIEyN4fAFInc3VzcGljaW91c1RyYW5zYWN0aW9uVGhyZXNob2xkT3Zlcn'
    'JpZGVzEj0KG2FsbG93X3RyYW5zZmVyX3dpdGhvdXRfZWt5YxgYIAEoCFIYYWxsb3dUcmFuc2Zl'
    'cldpdGhvdXRFa3ljEl8KLXVwZGF0ZV9jcmVkZW50aWFsX21heF9jaGFuZ2VkX2lkZW50aXR5X2'
    'ZpZWxkcxgZIAEoDVIodXBkYXRlQ3JlZGVudGlhbE1heENoYW5nZWRJZGVudGl0eUZpZWxkczo1'
    '6KAfAYrnsCosZ2l0aHViLmNvbS9jM3F0ZWNoL3FhZGVuYV92My94L3FhZGVuYS9QYXJhbXM=');

@$core.Deprecated('Use suspiciousThresholdOverrideDescriptor instead')
const SuspiciousThresholdOverride$json = {
  '1': 'SuspiciousThresholdOverride',
  '2': [
    {'1': 'country', '3': 1, '4': 1, '5': 9, '10': 'country'},
    {'1': 'threshold', '3': 2, '4': 1, '5': 9, '10': 'threshold'},
  ],
  '7': {},
};

/// Descriptor for `SuspiciousThresholdOverride`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List suspiciousThresholdOverrideDescriptor = $convert.base64Decode(
    'ChtTdXNwaWNpb3VzVGhyZXNob2xkT3ZlcnJpZGUSGAoHY291bnRyeRgBIAEoCVIHY291bnRyeR'
    'IcCgl0aHJlc2hvbGQYAiABKAlSCXRocmVzaG9sZDoE6KAfAQ==');

