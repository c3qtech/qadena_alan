//
//  Generated code. Do not modify.
//  source: qadena/qadena/suspicious_transaction.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use suspiciousTransactionDescriptor instead')
const SuspiciousTransaction$json = {
  '1': 'SuspiciousTransaction',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'jarID', '3': 2, '4': 1, '5': 9, '10': 'jarID'},
    {'1': 'regulatorPubKID', '3': 3, '4': 1, '5': 9, '10': 'regulatorPubKID'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'time', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'time'},
    {'1': 'encSourcePersonalInfoRegulatorPubK', '3': 6, '4': 1, '5': 12, '10': 'encSourcePersonalInfoRegulatorPubK'},
    {'1': 'encDestinationPersonalInfoRegulatorPubK', '3': 7, '4': 1, '5': 12, '10': 'encDestinationPersonalInfoRegulatorPubK'},
    {'1': 'encEAmountRegulatorPubK', '3': 8, '4': 1, '5': 12, '10': 'encEAmountRegulatorPubK'},
    {'1': 'encOptInReasonRegulatorPubK', '3': 9, '4': 1, '5': 12, '10': 'encOptInReasonRegulatorPubK'},
    {'1': 'creator', '3': 10, '4': 1, '5': 9, '10': 'creator'},
  ],
};

/// Descriptor for `SuspiciousTransaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List suspiciousTransactionDescriptor = $convert.base64Decode(
    'ChVTdXNwaWNpb3VzVHJhbnNhY3Rpb24SDgoCaWQYASABKARSAmlkEhQKBWphcklEGAIgASgJUg'
    'VqYXJJRBIoCg9yZWd1bGF0b3JQdWJLSUQYAyABKAlSD3JlZ3VsYXRvclB1YktJRBIWCgZyZWFz'
    'b24YBCABKAlSBnJlYXNvbhI4CgR0aW1lGAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdG'
    'FtcEIIyN4fAJDfHwFSBHRpbWUSTgoiZW5jU291cmNlUGVyc29uYWxJbmZvUmVndWxhdG9yUHVi'
    'SxgGIAEoDFIiZW5jU291cmNlUGVyc29uYWxJbmZvUmVndWxhdG9yUHViSxJYCidlbmNEZXN0aW'
    '5hdGlvblBlcnNvbmFsSW5mb1JlZ3VsYXRvclB1YksYByABKAxSJ2VuY0Rlc3RpbmF0aW9uUGVy'
    'c29uYWxJbmZvUmVndWxhdG9yUHViSxI4ChdlbmNFQW1vdW50UmVndWxhdG9yUHViSxgIIAEoDF'
    'IXZW5jRUFtb3VudFJlZ3VsYXRvclB1YksSQAobZW5jT3B0SW5SZWFzb25SZWd1bGF0b3JQdWJL'
    'GAkgASgMUhtlbmNPcHRJblJlYXNvblJlZ3VsYXRvclB1YksSGAoHY3JlYXRvchgKIAEoCVIHY3'
    'JlYXRvcg==');

