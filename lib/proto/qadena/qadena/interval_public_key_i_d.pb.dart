//
//  Generated code. Do not modify.
//  source: qadena/qadena/interval_public_key_i_d.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class IntervalPublicKeyID extends $pb.GeneratedMessage {
  factory IntervalPublicKeyID({
    $core.String? nodeID,
    $core.String? nodeType,
    $core.String? pubKID,
    $core.String? externalIPAddress,
    $core.String? serviceProviderType,
  }) {
    final $result = create();
    if (nodeID != null) {
      $result.nodeID = nodeID;
    }
    if (nodeType != null) {
      $result.nodeType = nodeType;
    }
    if (pubKID != null) {
      $result.pubKID = pubKID;
    }
    if (externalIPAddress != null) {
      $result.externalIPAddress = externalIPAddress;
    }
    if (serviceProviderType != null) {
      $result.serviceProviderType = serviceProviderType;
    }
    return $result;
  }
  IntervalPublicKeyID._() : super();
  factory IntervalPublicKeyID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IntervalPublicKeyID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IntervalPublicKeyID', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nodeID', protoName: 'nodeID')
    ..aOS(2, _omitFieldNames ? '' : 'nodeType', protoName: 'nodeType')
    ..aOS(3, _omitFieldNames ? '' : 'pubKID', protoName: 'pubKID')
    ..aOS(4, _omitFieldNames ? '' : 'externalIPAddress', protoName: 'externalIPAddress')
    ..aOS(5, _omitFieldNames ? '' : 'serviceProviderType', protoName: 'serviceProviderType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IntervalPublicKeyID clone() => IntervalPublicKeyID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IntervalPublicKeyID copyWith(void Function(IntervalPublicKeyID) updates) => super.copyWith((message) => updates(message as IntervalPublicKeyID)) as IntervalPublicKeyID;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IntervalPublicKeyID create() => IntervalPublicKeyID._();
  IntervalPublicKeyID createEmptyInstance() => create();
  static $pb.PbList<IntervalPublicKeyID> createRepeated() => $pb.PbList<IntervalPublicKeyID>();
  @$core.pragma('dart2js:noInline')
  static IntervalPublicKeyID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IntervalPublicKeyID>(create);
  static IntervalPublicKeyID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nodeID => $_getSZ(0);
  @$pb.TagNumber(1)
  set nodeID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNodeID() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nodeType => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeType() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pubKID => $_getSZ(2);
  @$pb.TagNumber(3)
  set pubKID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPubKID() => $_has(2);
  @$pb.TagNumber(3)
  void clearPubKID() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get externalIPAddress => $_getSZ(3);
  @$pb.TagNumber(4)
  set externalIPAddress($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExternalIPAddress() => $_has(3);
  @$pb.TagNumber(4)
  void clearExternalIPAddress() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get serviceProviderType => $_getSZ(4);
  @$pb.TagNumber(5)
  set serviceProviderType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasServiceProviderType() => $_has(4);
  @$pb.TagNumber(5)
  void clearServiceProviderType() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
