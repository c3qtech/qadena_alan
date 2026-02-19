//
//  Generated code. Do not modify.
//  source: cosmos/evm/erc20/v1/erc20.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Owner enumerates the ownership of a ERC20 contract.
class Owner extends $pb.ProtobufEnum {
  static const Owner OWNER_UNSPECIFIED = Owner._(0, _omitEnumNames ? '' : 'OWNER_UNSPECIFIED');
  static const Owner OWNER_MODULE = Owner._(1, _omitEnumNames ? '' : 'OWNER_MODULE');
  static const Owner OWNER_EXTERNAL = Owner._(2, _omitEnumNames ? '' : 'OWNER_EXTERNAL');

  static const $core.List<Owner> values = <Owner> [
    OWNER_UNSPECIFIED,
    OWNER_MODULE,
    OWNER_EXTERNAL,
  ];

  static final $core.Map<$core.int, Owner> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Owner? valueOf($core.int value) => _byValue[value];

  const Owner._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
