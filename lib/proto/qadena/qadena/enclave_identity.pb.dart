//
//  Generated code. Do not modify.
//  source: qadena/qadena/enclave_identity.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class EnclaveIdentity extends $pb.GeneratedMessage {
  factory EnclaveIdentity({
    $core.String? uniqueID,
    $core.String? signerID,
    $core.String? productID,
    $core.String? status,
  }) {
    final $result = create();
    if (uniqueID != null) {
      $result.uniqueID = uniqueID;
    }
    if (signerID != null) {
      $result.signerID = signerID;
    }
    if (productID != null) {
      $result.productID = productID;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  EnclaveIdentity._() : super();
  factory EnclaveIdentity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EnclaveIdentity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EnclaveIdentity', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uniqueID', protoName: 'uniqueID')
    ..aOS(2, _omitFieldNames ? '' : 'signerID', protoName: 'signerID')
    ..aOS(3, _omitFieldNames ? '' : 'productID', protoName: 'productID')
    ..aOS(4, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EnclaveIdentity clone() => EnclaveIdentity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EnclaveIdentity copyWith(void Function(EnclaveIdentity) updates) => super.copyWith((message) => updates(message as EnclaveIdentity)) as EnclaveIdentity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnclaveIdentity create() => EnclaveIdentity._();
  EnclaveIdentity createEmptyInstance() => create();
  static $pb.PbList<EnclaveIdentity> createRepeated() => $pb.PbList<EnclaveIdentity>();
  @$core.pragma('dart2js:noInline')
  static EnclaveIdentity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EnclaveIdentity>(create);
  static EnclaveIdentity? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uniqueID => $_getSZ(0);
  @$pb.TagNumber(1)
  set uniqueID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUniqueID() => $_has(0);
  @$pb.TagNumber(1)
  void clearUniqueID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get signerID => $_getSZ(1);
  @$pb.TagNumber(2)
  set signerID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignerID() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignerID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get productID => $_getSZ(2);
  @$pb.TagNumber(3)
  set productID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProductID() => $_has(2);
  @$pb.TagNumber(3)
  void clearProductID() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get status => $_getSZ(3);
  @$pb.TagNumber(4)
  set status($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
