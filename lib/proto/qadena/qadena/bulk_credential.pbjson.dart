//
//  Generated code. Do not modify.
//  source: qadena/qadena/bulk_credential.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use bulkCredentialDescriptor instead')
const BulkCredential$json = {
  '1': 'BulkCredential',
  '2': [
    {'1': 'credentialID', '3': 1, '4': 1, '5': 9, '10': 'credentialID'},
    {'1': 'credentialPedersenCommit', '3': 2, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'credentialPedersenCommit'},
    {'1': 'encCredentialInfoVShare', '3': 3, '4': 1, '5': 12, '10': 'encCredentialInfoVShare'},
    {'1': 'encCredentialHashVShare', '3': 4, '4': 1, '5': 12, '10': 'encCredentialHashVShare'},
    {'1': 'findCredentialPedersenCommit', '3': 5, '4': 1, '5': 11, '6': '.qadena.qadena.BPedersenCommit', '10': 'findCredentialPedersenCommit'},
  ],
};

/// Descriptor for `BulkCredential`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bulkCredentialDescriptor = $convert.base64Decode(
    'Cg5CdWxrQ3JlZGVudGlhbBIiCgxjcmVkZW50aWFsSUQYASABKAlSDGNyZWRlbnRpYWxJRBJaCh'
    'hjcmVkZW50aWFsUGVkZXJzZW5Db21taXQYAiABKAsyHi5xYWRlbmEucWFkZW5hLkJQZWRlcnNl'
    'bkNvbW1pdFIYY3JlZGVudGlhbFBlZGVyc2VuQ29tbWl0EjgKF2VuY0NyZWRlbnRpYWxJbmZvVl'
    'NoYXJlGAMgASgMUhdlbmNDcmVkZW50aWFsSW5mb1ZTaGFyZRI4ChdlbmNDcmVkZW50aWFsSGFz'
    'aFZTaGFyZRgEIAEoDFIXZW5jQ3JlZGVudGlhbEhhc2hWU2hhcmUSYgocZmluZENyZWRlbnRpYW'
    'xQZWRlcnNlbkNvbW1pdBgFIAEoCzIeLnFhZGVuYS5xYWRlbmEuQlBlZGVyc2VuQ29tbWl0Uhxm'
    'aW5kQ3JlZGVudGlhbFBlZGVyc2VuQ29tbWl0');

