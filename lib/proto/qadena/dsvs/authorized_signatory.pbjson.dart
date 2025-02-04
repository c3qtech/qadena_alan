//
//  Generated code. Do not modify.
//  source: qadena/dsvs/authorized_signatory.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use authorizedSignatoryDescriptor instead')
const AuthorizedSignatory$json = {
  '1': 'AuthorizedSignatory',
  '2': [
    {'1': 'walletID', '3': 1, '4': 1, '5': 9, '10': 'walletID'},
    {'1': 'signatory', '3': 2, '4': 3, '5': 11, '6': '.qadena.dsvs.VShareAuthorizedSignatory', '10': 'signatory'},
  ],
};

/// Descriptor for `AuthorizedSignatory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authorizedSignatoryDescriptor = $convert.base64Decode(
    'ChNBdXRob3JpemVkU2lnbmF0b3J5EhoKCHdhbGxldElEGAEgASgJUgh3YWxsZXRJRBJECglzaW'
    'duYXRvcnkYAiADKAsyJi5xYWRlbmEuZHN2cy5WU2hhcmVBdXRob3JpemVkU2lnbmF0b3J5Uglz'
    'aWduYXRvcnk=');

