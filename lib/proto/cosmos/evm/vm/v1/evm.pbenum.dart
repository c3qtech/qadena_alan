//
//  Generated code. Do not modify.
//  source: cosmos/evm/vm/v1/evm.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// AccessType defines the types of permissions for the operations
class AccessType extends $pb.ProtobufEnum {
  static const AccessType ACCESS_TYPE_PERMISSIONLESS = AccessType._(0, _omitEnumNames ? '' : 'ACCESS_TYPE_PERMISSIONLESS');
  static const AccessType ACCESS_TYPE_RESTRICTED = AccessType._(1, _omitEnumNames ? '' : 'ACCESS_TYPE_RESTRICTED');
  static const AccessType ACCESS_TYPE_PERMISSIONED = AccessType._(2, _omitEnumNames ? '' : 'ACCESS_TYPE_PERMISSIONED');

  static const $core.List<AccessType> values = <AccessType> [
    ACCESS_TYPE_PERMISSIONLESS,
    ACCESS_TYPE_RESTRICTED,
    ACCESS_TYPE_PERMISSIONED,
  ];

  static final $core.Map<$core.int, AccessType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccessType? valueOf($core.int value) => _byValue[value];

  const AccessType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
