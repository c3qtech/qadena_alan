//
//  Generated code. Do not modify.
//  source: qadena/dsvs/v_share_authorized_signatory.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use vShareAuthorizedSignatoryDescriptor instead')
const VShareAuthorizedSignatory$json = {
  '1': 'VShareAuthorizedSignatory',
  '2': [
    {'1': 'encAuthorizedSignatoryVShare', '3': 1, '4': 1, '5': 12, '10': 'encAuthorizedSignatoryVShare'},
    {'1': 'authorizedSignatoryVShareBind', '3': 2, '4': 1, '5': 11, '6': '.qadena.dsvs.VShareBindData', '10': 'authorizedSignatoryVShareBind'},
    {'1': 'time', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'time'},
  ],
};

/// Descriptor for `VShareAuthorizedSignatory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vShareAuthorizedSignatoryDescriptor = $convert.base64Decode(
    'ChlWU2hhcmVBdXRob3JpemVkU2lnbmF0b3J5EkIKHGVuY0F1dGhvcml6ZWRTaWduYXRvcnlWU2'
    'hhcmUYASABKAxSHGVuY0F1dGhvcml6ZWRTaWduYXRvcnlWU2hhcmUSYQodYXV0aG9yaXplZFNp'
    'Z25hdG9yeVZTaGFyZUJpbmQYAiABKAsyGy5xYWRlbmEuZHN2cy5WU2hhcmVCaW5kRGF0YVIdYX'
    'V0aG9yaXplZFNpZ25hdG9yeVZTaGFyZUJpbmQSOAoEdGltZRgDIAEoCzIaLmdvb2dsZS5wcm90'
    'b2J1Zi5UaW1lc3RhbXBCCMjeHwCQ3x8BUgR0aW1l');

