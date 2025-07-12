//
//  Generated code. Do not modify.
//  source: qadena/qadena/pedersen_commit.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'bigint.pb.dart' as $14;

class EncryptablePedersenCommit extends $pb.GeneratedMessage {
  factory EncryptablePedersenCommit({
    $14.BInt? a,
    $14.BInt? x,
  }) {
    final $result = create();
    if (a != null) {
      $result.a = a;
    }
    if (x != null) {
      $result.x = x;
    }
    return $result;
  }
  EncryptablePedersenCommit._() : super();
  factory EncryptablePedersenCommit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptablePedersenCommit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptablePedersenCommit', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$14.BInt>(1, _omitFieldNames ? '' : 'a', subBuilder: $14.BInt.create)
    ..aOM<$14.BInt>(2, _omitFieldNames ? '' : 'x', subBuilder: $14.BInt.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptablePedersenCommit clone() => EncryptablePedersenCommit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptablePedersenCommit copyWith(void Function(EncryptablePedersenCommit) updates) => super.copyWith((message) => updates(message as EncryptablePedersenCommit)) as EncryptablePedersenCommit;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptablePedersenCommit create() => EncryptablePedersenCommit._();
  EncryptablePedersenCommit createEmptyInstance() => create();
  static $pb.PbList<EncryptablePedersenCommit> createRepeated() => $pb.PbList<EncryptablePedersenCommit>();
  @$core.pragma('dart2js:noInline')
  static EncryptablePedersenCommit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptablePedersenCommit>(create);
  static EncryptablePedersenCommit? _defaultInstance;

  @$pb.TagNumber(1)
  $14.BInt get a => $_getN(0);
  @$pb.TagNumber(1)
  set a($14.BInt v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => clearField(1);
  @$pb.TagNumber(1)
  $14.BInt ensureA() => $_ensure(0);

  @$pb.TagNumber(2)
  $14.BInt get x => $_getN(1);
  @$pb.TagNumber(2)
  set x($14.BInt v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasX() => $_has(1);
  @$pb.TagNumber(2)
  void clearX() => clearField(2);
  @$pb.TagNumber(2)
  $14.BInt ensureX() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
