//
//  Generated code. Do not modify.
//  source: qadena/dsvs/hash_info.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class HashInfo extends $pb.GeneratedMessage {
  factory HashInfo({
    $core.List<$core.int>? hash,
    $core.int? version,
  }) {
    final $result = create();
    if (hash != null) {
      $result.hash = hash;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  HashInfo._() : super();
  factory HashInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HashInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HashInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'hash', $pb.PbFieldType.OY)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'version', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HashInfo clone() => HashInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HashInfo copyWith(void Function(HashInfo) updates) => super.copyWith((message) => updates(message as HashInfo)) as HashInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HashInfo create() => HashInfo._();
  HashInfo createEmptyInstance() => create();
  static $pb.PbList<HashInfo> createRepeated() => $pb.PbList<HashInfo>();
  @$core.pragma('dart2js:noInline')
  static HashInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HashInfo>(create);
  static HashInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get version => $_getIZ(1);
  @$pb.TagNumber(2)
  set version($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
