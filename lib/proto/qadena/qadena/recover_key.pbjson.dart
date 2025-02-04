//
//  Generated code. Do not modify.
//  source: qadena/qadena/recover_key.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use recoverKeyDescriptor instead')
const RecoverKey$json = {
  '1': 'RecoverKey',
  '2': [
    {'1': 'walletID', '3': 1, '4': 1, '5': 9, '10': 'walletID'},
    {'1': 'encNewWalletIDVShare', '3': 3, '4': 1, '5': 12, '10': 'encNewWalletIDVShare'},
    {'1': 'NewWalletIDVShareBind', '3': 4, '4': 1, '5': 11, '6': '.qadena.qadena.VShareBindData', '10': 'NewWalletIDVShareBind'},
    {'1': 'signatory', '3': 5, '4': 3, '5': 9, '10': 'signatory'},
    {'1': 'recoverShare', '3': 6, '4': 3, '5': 11, '6': '.qadena.qadena.RecoverShare', '10': 'recoverShare'},
  ],
};

/// Descriptor for `RecoverKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recoverKeyDescriptor = $convert.base64Decode(
    'CgpSZWNvdmVyS2V5EhoKCHdhbGxldElEGAEgASgJUgh3YWxsZXRJRBIyChRlbmNOZXdXYWxsZX'
    'RJRFZTaGFyZRgDIAEoDFIUZW5jTmV3V2FsbGV0SURWU2hhcmUSUwoVTmV3V2FsbGV0SURWU2hh'
    'cmVCaW5kGAQgASgLMh0ucWFkZW5hLnFhZGVuYS5WU2hhcmVCaW5kRGF0YVIVTmV3V2FsbGV0SU'
    'RWU2hhcmVCaW5kEhwKCXNpZ25hdG9yeRgFIAMoCVIJc2lnbmF0b3J5Ej8KDHJlY292ZXJTaGFy'
    'ZRgGIAMoCzIbLnFhZGVuYS5xYWRlbmEuUmVjb3ZlclNoYXJlUgxyZWNvdmVyU2hhcmU=');

