//
//  Generated code. Do not modify.
//  source: qadena/dsvs/authorized_signatory.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'v_share_authorized_signatory.pb.dart' as $9;

class AuthorizedSignatory extends $pb.GeneratedMessage {
  factory AuthorizedSignatory({
    $core.String? walletID,
    $core.Iterable<$9.VShareAuthorizedSignatory>? signatory,
  }) {
    final $result = create();
    if (walletID != null) {
      $result.walletID = walletID;
    }
    if (signatory != null) {
      $result.signatory.addAll(signatory);
    }
    return $result;
  }
  AuthorizedSignatory._() : super();
  factory AuthorizedSignatory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthorizedSignatory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthorizedSignatory', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.dsvs'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'walletID', protoName: 'walletID')
    ..pc<$9.VShareAuthorizedSignatory>(2, _omitFieldNames ? '' : 'signatory', $pb.PbFieldType.PM, subBuilder: $9.VShareAuthorizedSignatory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthorizedSignatory clone() => AuthorizedSignatory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthorizedSignatory copyWith(void Function(AuthorizedSignatory) updates) => super.copyWith((message) => updates(message as AuthorizedSignatory)) as AuthorizedSignatory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthorizedSignatory create() => AuthorizedSignatory._();
  AuthorizedSignatory createEmptyInstance() => create();
  static $pb.PbList<AuthorizedSignatory> createRepeated() => $pb.PbList<AuthorizedSignatory>();
  @$core.pragma('dart2js:noInline')
  static AuthorizedSignatory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthorizedSignatory>(create);
  static AuthorizedSignatory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get walletID => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletID() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletID() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$9.VShareAuthorizedSignatory> get signatory => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
