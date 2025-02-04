//
//  Generated code. Do not modify.
//  source: qadena/qadena/share.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Share extends $pb.GeneratedMessage {
  factory Share({
    $core.String? pioneerID,
    $core.List<$core.int>? encEnclaveShare,
  }) {
    final $result = create();
    if (pioneerID != null) {
      $result.pioneerID = pioneerID;
    }
    if (encEnclaveShare != null) {
      $result.encEnclaveShare = encEnclaveShare;
    }
    return $result;
  }
  Share._() : super();
  factory Share.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Share.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Share', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'pioneerID', protoName: 'pioneerID')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'encEnclaveShare', $pb.PbFieldType.OY, protoName: 'encEnclaveShare')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Share clone() => Share()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Share copyWith(void Function(Share) updates) => super.copyWith((message) => updates(message as Share)) as Share;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Share create() => Share._();
  Share createEmptyInstance() => create();
  static $pb.PbList<Share> createRepeated() => $pb.PbList<Share>();
  @$core.pragma('dart2js:noInline')
  static Share getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Share>(create);
  static Share? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pioneerID => $_getSZ(0);
  @$pb.TagNumber(1)
  set pioneerID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPioneerID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPioneerID() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get encEnclaveShare => $_getN(1);
  @$pb.TagNumber(2)
  set encEnclaveShare($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncEnclaveShare() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncEnclaveShare() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
