//
//  Generated code. Do not modify.
//  source: qadena/qadena/b_pedersen_commit.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ec_point.pb.dart' as $12;

/// a,x don't need to be transmitted
class BPedersenCommit extends $pb.GeneratedMessage {
  factory BPedersenCommit({
    $12.BECPoint? c,
  }) {
    final $result = create();
    if (c != null) {
      $result.c = c;
    }
    return $result;
  }
  BPedersenCommit._() : super();
  factory BPedersenCommit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BPedersenCommit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BPedersenCommit', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$12.BECPoint>(1, _omitFieldNames ? '' : 'c', subBuilder: $12.BECPoint.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BPedersenCommit clone() => BPedersenCommit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BPedersenCommit copyWith(void Function(BPedersenCommit) updates) => super.copyWith((message) => updates(message as BPedersenCommit)) as BPedersenCommit;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BPedersenCommit create() => BPedersenCommit._();
  BPedersenCommit createEmptyInstance() => create();
  static $pb.PbList<BPedersenCommit> createRepeated() => $pb.PbList<BPedersenCommit>();
  @$core.pragma('dart2js:noInline')
  static BPedersenCommit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BPedersenCommit>(create);
  static BPedersenCommit? _defaultInstance;

  @$pb.TagNumber(1)
  $12.BECPoint get c => $_getN(0);
  @$pb.TagNumber(1)
  set c($12.BECPoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasC() => $_has(0);
  @$pb.TagNumber(1)
  void clearC() => clearField(1);
  @$pb.TagNumber(1)
  $12.BECPoint ensureC() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
