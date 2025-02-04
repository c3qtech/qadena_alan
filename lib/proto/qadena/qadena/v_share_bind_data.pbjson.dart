//
//  Generated code. Do not modify.
//  source: qadena/qadena/v_share_bind_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use vShareBindDataDescriptor instead')
const VShareBindData$json = {
  '1': 'VShareBindData',
  '2': [
    {'1': 'Data', '3': 1, '4': 3, '5': 11, '6': '.qadena.qadena.VShareBindDataInternal', '10': 'Data'},
  ],
};

/// Descriptor for `VShareBindData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vShareBindDataDescriptor = $convert.base64Decode(
    'Cg5WU2hhcmVCaW5kRGF0YRI5CgREYXRhGAEgAygLMiUucWFkZW5hLnFhZGVuYS5WU2hhcmVCaW'
    '5kRGF0YUludGVybmFsUgREYXRh');

@$core.Deprecated('Use bECPointInfoDescriptor instead')
const BECPointInfo$json = {
  '1': 'BECPointInfo',
  '2': [
    {'1': 'ECPoint', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.BECPoint', '10': 'ECPoint'},
    {'1': 'NodeType', '3': 2, '4': 1, '5': 9, '10': 'NodeType'},
    {'1': 'NodeID', '3': 3, '4': 1, '5': 9, '10': 'NodeID'},
  ],
};

/// Descriptor for `BECPointInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bECPointInfoDescriptor = $convert.base64Decode(
    'CgxCRUNQb2ludEluZm8SMQoHRUNQb2ludBgBIAEoCzIXLnFhZGVuYS5xYWRlbmEuQkVDUG9pbn'
    'RSB0VDUG9pbnQSGgoITm9kZVR5cGUYAiABKAlSCE5vZGVUeXBlEhYKBk5vZGVJRBgDIAEoCVIG'
    'Tm9kZUlE');

@$core.Deprecated('Use vShareBindDataInternalDescriptor instead')
const VShareBindDataInternal$json = {
  '1': 'VShareBindDataInternal',
  '2': [
    {'1': 'W', '3': 1, '4': 1, '5': 11, '6': '.qadena.qadena.BInt', '10': 'W'},
    {'1': 'Z', '3': 2, '4': 1, '5': 11, '6': '.qadena.qadena.BInt', '10': 'Z'},
    {'1': 'C', '3': 3, '4': 1, '5': 11, '6': '.qadena.qadena.BECPoint', '10': 'C'},
    {'1': 'Y', '3': 4, '4': 1, '5': 11, '6': '.qadena.qadena.BECPointInfo', '10': 'Y'},
    {'1': 'Cc', '3': 5, '4': 3, '5': 11, '6': '.qadena.qadena.BECPointInfo', '10': 'Cc'},
    {'1': 'R', '3': 6, '4': 1, '5': 11, '6': '.qadena.qadena.BVSharedSecret', '10': 'R'},
    {'1': 'Rr', '3': 7, '4': 3, '5': 11, '6': '.qadena.qadena.BVSharedSecret', '10': 'Rr'},
  ],
};

/// Descriptor for `VShareBindDataInternal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vShareBindDataInternalDescriptor = $convert.base64Decode(
    'ChZWU2hhcmVCaW5kRGF0YUludGVybmFsEiEKAVcYASABKAsyEy5xYWRlbmEucWFkZW5hLkJJbn'
    'RSAVcSIQoBWhgCIAEoCzITLnFhZGVuYS5xYWRlbmEuQkludFIBWhIlCgFDGAMgASgLMhcucWFk'
    'ZW5hLnFhZGVuYS5CRUNQb2ludFIBQxIpCgFZGAQgASgLMhsucWFkZW5hLnFhZGVuYS5CRUNQb2'
    'ludEluZm9SAVkSKwoCQ2MYBSADKAsyGy5xYWRlbmEucWFkZW5hLkJFQ1BvaW50SW5mb1ICQ2MS'
    'KwoBUhgGIAEoCzIdLnFhZGVuYS5xYWRlbmEuQlZTaGFyZWRTZWNyZXRSAVISLQoCUnIYByADKA'
    'syHS5xYWRlbmEucWFkZW5hLkJWU2hhcmVkU2VjcmV0UgJScg==');

