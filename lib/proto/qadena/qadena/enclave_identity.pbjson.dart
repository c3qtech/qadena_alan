//
//  Generated code. Do not modify.
//  source: qadena/qadena/enclave_identity.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use enclaveIdentityDescriptor instead')
const EnclaveIdentity$json = {
  '1': 'EnclaveIdentity',
  '2': [
    {'1': 'uniqueID', '3': 1, '4': 1, '5': 9, '10': 'uniqueID'},
    {'1': 'signerID', '3': 2, '4': 1, '5': 9, '10': 'signerID'},
    {'1': 'productID', '3': 3, '4': 1, '5': 9, '10': 'productID'},
    {'1': 'status', '3': 4, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `EnclaveIdentity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enclaveIdentityDescriptor = $convert.base64Decode(
    'Cg9FbmNsYXZlSWRlbnRpdHkSGgoIdW5pcXVlSUQYASABKAlSCHVuaXF1ZUlEEhoKCHNpZ25lck'
    'lEGAIgASgJUghzaWduZXJJRBIcCglwcm9kdWN0SUQYAyABKAlSCXByb2R1Y3RJRBIWCgZzdGF0'
    'dXMYBCABKAlSBnN0YXR1cw==');

