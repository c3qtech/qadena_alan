//
//  Generated code. Do not modify.
//  source: qadena/qadena/jar_regulator.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class JarRegulator extends $pb.GeneratedMessage {
  factory JarRegulator({
    $core.String? jarID,
    $core.String? regulatorID,
    $core.List<$core.int>? remoteReport,
  }) {
    final $result = create();
    if (jarID != null) {
      $result.jarID = jarID;
    }
    if (regulatorID != null) {
      $result.regulatorID = regulatorID;
    }
    if (remoteReport != null) {
      $result.remoteReport = remoteReport;
    }
    return $result;
  }
  JarRegulator._() : super();
  factory JarRegulator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JarRegulator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JarRegulator', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'jarID', protoName: 'jarID')
    ..aOS(2, _omitFieldNames ? '' : 'regulatorID', protoName: 'regulatorID')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'remoteReport', $pb.PbFieldType.OY, protoName: 'remoteReport')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JarRegulator clone() => JarRegulator()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JarRegulator copyWith(void Function(JarRegulator) updates) => super.copyWith((message) => updates(message as JarRegulator)) as JarRegulator;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JarRegulator create() => JarRegulator._();
  JarRegulator createEmptyInstance() => create();
  static $pb.PbList<JarRegulator> createRepeated() => $pb.PbList<JarRegulator>();
  @$core.pragma('dart2js:noInline')
  static JarRegulator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JarRegulator>(create);
  static JarRegulator? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get jarID => $_getSZ(0);
  @$pb.TagNumber(1)
  set jarID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasJarID() => $_has(0);
  @$pb.TagNumber(1)
  void clearJarID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get regulatorID => $_getSZ(1);
  @$pb.TagNumber(2)
  set regulatorID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegulatorID() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegulatorID() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get remoteReport => $_getN(2);
  @$pb.TagNumber(3)
  set remoteReport($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRemoteReport() => $_has(2);
  @$pb.TagNumber(3)
  void clearRemoteReport() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
