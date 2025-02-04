//
//  Generated code. Do not modify.
//  source: qadena/nameservice/name_binding.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class NameBinding extends $pb.GeneratedMessage {
  factory NameBinding({
    $core.String? credential,
    $core.String? credentialType,
    $core.String? address,
  }) {
    final $result = create();
    if (credential != null) {
      $result.credential = credential;
    }
    if (credentialType != null) {
      $result.credentialType = credentialType;
    }
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  NameBinding._() : super();
  factory NameBinding.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NameBinding.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NameBinding', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.nameservice'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'credential')
    ..aOS(2, _omitFieldNames ? '' : 'credentialType', protoName: 'credentialType')
    ..aOS(3, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NameBinding clone() => NameBinding()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NameBinding copyWith(void Function(NameBinding) updates) => super.copyWith((message) => updates(message as NameBinding)) as NameBinding;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NameBinding create() => NameBinding._();
  NameBinding createEmptyInstance() => create();
  static $pb.PbList<NameBinding> createRepeated() => $pb.PbList<NameBinding>();
  @$core.pragma('dart2js:noInline')
  static NameBinding getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NameBinding>(create);
  static NameBinding? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get credential => $_getSZ(0);
  @$pb.TagNumber(1)
  set credential($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCredential() => $_has(0);
  @$pb.TagNumber(1)
  void clearCredential() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get credentialType => $_getSZ(1);
  @$pb.TagNumber(2)
  set credentialType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredentialType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredentialType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
