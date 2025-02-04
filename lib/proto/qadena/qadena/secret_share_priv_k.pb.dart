//
//  Generated code. Do not modify.
//  source: qadena/qadena/secret_share_priv_k.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SecretSharePrivK extends $pb.GeneratedMessage {
  factory SecretSharePrivK({
    $core.String? pioneerID,
    $core.List<$core.int>? encEnclaveSSIDAndPrivK,
  }) {
    final $result = create();
    if (pioneerID != null) {
      $result.pioneerID = pioneerID;
    }
    if (encEnclaveSSIDAndPrivK != null) {
      $result.encEnclaveSSIDAndPrivK = encEnclaveSSIDAndPrivK;
    }
    return $result;
  }
  SecretSharePrivK._() : super();
  factory SecretSharePrivK.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SecretSharePrivK.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SecretSharePrivK', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pioneerID', protoName: 'pioneerID')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'encEnclaveSSIDAndPrivK', $pb.PbFieldType.OY, protoName: 'encEnclaveSSIDAndPrivK')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SecretSharePrivK clone() => SecretSharePrivK()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SecretSharePrivK copyWith(void Function(SecretSharePrivK) updates) => super.copyWith((message) => updates(message as SecretSharePrivK)) as SecretSharePrivK;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SecretSharePrivK create() => SecretSharePrivK._();
  SecretSharePrivK createEmptyInstance() => create();
  static $pb.PbList<SecretSharePrivK> createRepeated() => $pb.PbList<SecretSharePrivK>();
  @$core.pragma('dart2js:noInline')
  static SecretSharePrivK getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SecretSharePrivK>(create);
  static SecretSharePrivK? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pioneerID => $_getSZ(0);
  @$pb.TagNumber(1)
  set pioneerID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPioneerID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPioneerID() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get encEnclaveSSIDAndPrivK => $_getN(1);
  @$pb.TagNumber(2)
  set encEnclaveSSIDAndPrivK($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncEnclaveSSIDAndPrivK() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncEnclaveSSIDAndPrivK() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
