//
//  Generated code. Do not modify.
//  source: qadena/qadena/pioneer_jar.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PioneerJar extends $pb.GeneratedMessage {
  factory PioneerJar({
    $core.String? pioneerID,
    $core.String? jarID,
  }) {
    final $result = create();
    if (pioneerID != null) {
      $result.pioneerID = pioneerID;
    }
    if (jarID != null) {
      $result.jarID = jarID;
    }
    return $result;
  }
  PioneerJar._() : super();
  factory PioneerJar.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PioneerJar.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PioneerJar', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pioneerID', protoName: 'pioneerID')
    ..aOS(2, _omitFieldNames ? '' : 'jarID', protoName: 'jarID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PioneerJar clone() => PioneerJar()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PioneerJar copyWith(void Function(PioneerJar) updates) => super.copyWith((message) => updates(message as PioneerJar)) as PioneerJar;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PioneerJar create() => PioneerJar._();
  PioneerJar createEmptyInstance() => create();
  static $pb.PbList<PioneerJar> createRepeated() => $pb.PbList<PioneerJar>();
  @$core.pragma('dart2js:noInline')
  static PioneerJar getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PioneerJar>(create);
  static PioneerJar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pioneerID => $_getSZ(0);
  @$pb.TagNumber(1)
  set pioneerID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPioneerID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPioneerID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get jarID => $_getSZ(1);
  @$pb.TagNumber(2)
  set jarID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasJarID() => $_has(1);
  @$pb.TagNumber(2)
  void clearJarID() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
