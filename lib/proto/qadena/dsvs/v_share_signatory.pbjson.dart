//
//  Generated code. Do not modify.
//  source: qadena/dsvs/v_share_signatory.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use vShareSignatoryDescriptor instead')
const VShareSignatory$json = {
  '1': 'VShareSignatory',
  '2': [
    {'1': 'encSignatoryVShare', '3': 1, '4': 1, '5': 12, '10': 'encSignatoryVShare'},
    {'1': 'signatoryVShareBind', '3': 2, '4': 1, '5': 11, '6': '.qadena.dsvs.VShareBindData', '10': 'signatoryVShareBind'},
    {'1': 'time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'time'},
    {'1': 'WalletID', '3': 4, '4': 1, '5': 9, '10': 'WalletID'},
  ],
};

/// Descriptor for `VShareSignatory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vShareSignatoryDescriptor = $convert.base64Decode(
    'Cg9WU2hhcmVTaWduYXRvcnkSLgoSZW5jU2lnbmF0b3J5VlNoYXJlGAEgASgMUhJlbmNTaWduYX'
    'RvcnlWU2hhcmUSTQoTc2lnbmF0b3J5VlNoYXJlQmluZBgCIAEoCzIbLnFhZGVuYS5kc3ZzLlZT'
    'aGFyZUJpbmREYXRhUhNzaWduYXRvcnlWU2hhcmVCaW5kEjgKBHRpbWUYAyABKAsyGi5nb29nbG'
    'UucHJvdG9idWYuVGltZXN0YW1wQgjI3h8AkN8fAVIEdGltZRIaCghXYWxsZXRJRBgEIAEoCVII'
    'V2FsbGV0SUQ=');

