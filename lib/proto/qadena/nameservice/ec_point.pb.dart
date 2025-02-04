//
//  Generated code. Do not modify.
//  source: qadena/nameservice/ec_point.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class BECPoint extends $pb.GeneratedMessage {
  factory BECPoint({
    $core.List<$core.int>? compressed,
  }) {
    final $result = create();
    if (compressed != null) {
      $result.compressed = compressed;
    }
    return $result;
  }
  BECPoint._() : super();
  factory BECPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BECPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BECPoint', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.nameservice'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'compressed', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BECPoint clone() => BECPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BECPoint copyWith(void Function(BECPoint) updates) => super.copyWith((message) => updates(message as BECPoint)) as BECPoint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BECPoint create() => BECPoint._();
  BECPoint createEmptyInstance() => create();
  static $pb.PbList<BECPoint> createRepeated() => $pb.PbList<BECPoint>();
  @$core.pragma('dart2js:noInline')
  static BECPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BECPoint>(create);
  static BECPoint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get compressed => $_getN(0);
  @$pb.TagNumber(1)
  set compressed($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCompressed() => $_has(0);
  @$pb.TagNumber(1)
  void clearCompressed() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
