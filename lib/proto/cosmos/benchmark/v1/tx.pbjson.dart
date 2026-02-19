//
//  Generated code. Do not modify.
//  source: cosmos/benchmark/v1/tx.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use msgLoadTestDescriptor instead')
const MsgLoadTest$json = {
  '1': 'MsgLoadTest',
  '2': [
    {'1': 'caller', '3': 1, '4': 1, '5': 12, '10': 'caller'},
    {'1': 'ops', '3': 2, '4': 3, '5': 11, '6': '.cosmos.benchmark.v1.Op', '10': 'ops'},
  ],
  '7': {},
};

/// Descriptor for `MsgLoadTest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgLoadTestDescriptor = $convert.base64Decode(
    'CgtNc2dMb2FkVGVzdBIWCgZjYWxsZXIYASABKAxSBmNhbGxlchIpCgNvcHMYAiADKAsyFy5jb3'
    'Ntb3MuYmVuY2htYXJrLnYxLk9wUgNvcHM6OYLnsCoGY2FsbGVyiuewKiljb3Ntb3Mtc2RrL3Rv'
    'b2xzL2JlbmNobWFyay92MS9Nc2dMb2FkVGVzdA==');

@$core.Deprecated('Use msgLoadTestResponseDescriptor instead')
const MsgLoadTestResponse$json = {
  '1': 'MsgLoadTestResponse',
  '2': [
    {'1': 'total_time', '3': 1, '4': 1, '5': 4, '10': 'totalTime'},
    {'1': 'total_errors', '3': 2, '4': 1, '5': 4, '10': 'totalErrors'},
  ],
};

/// Descriptor for `MsgLoadTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgLoadTestResponseDescriptor = $convert.base64Decode(
    'ChNNc2dMb2FkVGVzdFJlc3BvbnNlEh0KCnRvdGFsX3RpbWUYASABKARSCXRvdGFsVGltZRIhCg'
    'x0b3RhbF9lcnJvcnMYAiABKARSC3RvdGFsRXJyb3Jz');

