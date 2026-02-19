//
//  Generated code. Do not modify.
//  source: cosmos/bank/v1beta1/authz.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sendAuthorizationDescriptor instead')
const SendAuthorization$json = {
  '1': 'SendAuthorization',
  '2': [
    {'1': 'spend_limit', '3': 1, '4': 3, '5': 11, '6': '.cosmos.base.v1beta1.Coin', '8': {}, '10': 'spendLimit'},
    {'1': 'allow_list', '3': 2, '4': 3, '5': 9, '8': {}, '10': 'allowList'},
  ],
  '7': {},
};

/// Descriptor for `SendAuthorization`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendAuthorizationDescriptor = $convert.base64Decode(
    'ChFTZW5kQXV0aG9yaXphdGlvbhKCAQoLc3BlbmRfbGltaXQYASADKAsyGS5jb3Ntb3MuYmFzZS'
    '52MWJldGExLkNvaW5CRsjeHwCq3x8oZ2l0aHViLmNvbS9jb3Ntb3MvY29zbW9zLXNkay90eXBl'
    'cy5Db2luc5rnsCoMbGVnYWN5X2NvaW5zqOewKgFSCnNwZW5kTGltaXQSSgoKYWxsb3dfbGlzdB'
    'gCIAMoCUIr0rQtFGNvc21vcy5BZGRyZXNzU3RyaW5n2rQtD2Nvc21vcy1zZGsgMC40N1IJYWxs'
    'b3dMaXN0OlrKtC0iY29zbW9zLmF1dGh6LnYxYmV0YTEuQXV0aG9yaXphdGlvbtK0LQ9jb3Ntb3'
    'Mtc2RrIDAuNDOK57AqHGNvc21vcy1zZGsvU2VuZEF1dGhvcml6YXRpb24=');

