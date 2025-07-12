//
//  Generated code. Do not modify.
//  source: qadena/qadena/b_v_shared_secret.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'ec_point.pb.dart' as $13;

class BVSharedSecret extends $pb.GeneratedMessage {
  factory BVSharedSecret({
    $13.BECPoint? s1,
    $13.BECPoint? s2,
  }) {
    final $result = create();
    if (s1 != null) {
      $result.s1 = s1;
    }
    if (s2 != null) {
      $result.s2 = s2;
    }
    return $result;
  }
  BVSharedSecret._() : super();
  factory BVSharedSecret.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BVSharedSecret.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BVSharedSecret', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOM<$13.BECPoint>(1, _omitFieldNames ? '' : 'S1', protoName: 'S1', subBuilder: $13.BECPoint.create)
    ..aOM<$13.BECPoint>(2, _omitFieldNames ? '' : 'S2', protoName: 'S2', subBuilder: $13.BECPoint.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BVSharedSecret clone() => BVSharedSecret()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BVSharedSecret copyWith(void Function(BVSharedSecret) updates) => super.copyWith((message) => updates(message as BVSharedSecret)) as BVSharedSecret;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BVSharedSecret create() => BVSharedSecret._();
  BVSharedSecret createEmptyInstance() => create();
  static $pb.PbList<BVSharedSecret> createRepeated() => $pb.PbList<BVSharedSecret>();
  @$core.pragma('dart2js:noInline')
  static BVSharedSecret getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BVSharedSecret>(create);
  static BVSharedSecret? _defaultInstance;

  @$pb.TagNumber(1)
  $13.BECPoint get s1 => $_getN(0);
  @$pb.TagNumber(1)
  set s1($13.BECPoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasS1() => $_has(0);
  @$pb.TagNumber(1)
  void clearS1() => clearField(1);
  @$pb.TagNumber(1)
  $13.BECPoint ensureS1() => $_ensure(0);

  @$pb.TagNumber(2)
  $13.BECPoint get s2 => $_getN(1);
  @$pb.TagNumber(2)
  set s2($13.BECPoint v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasS2() => $_has(1);
  @$pb.TagNumber(2)
  void clearS2() => clearField(2);
  @$pb.TagNumber(2)
  $13.BECPoint ensureS2() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
