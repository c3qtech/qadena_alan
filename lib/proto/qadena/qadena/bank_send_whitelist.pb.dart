//
//  Generated code. Do not modify.
//  source: qadena/qadena/bank_send_whitelist.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

///  An account allowed to move coins with a direct bank send without being scanned.
///
///  Everyone else sending account-to-account goes through the same enclave AML scan as
///  MsgTransferFunds: eKYC gate, per-jurisdiction threshold, rolling window.  Transfers with a MODULE
///  account on either side never reach that check at all -- fees, staking, governance and the qadena
///  escrow all move coins that way and none of them are user-to-user.
///
///  This list is for accounts that must send directly and CANNOT be scanned, because they are not
///  user wallets and hold no credential to draw a jurisdiction from.  In practice that means the
///  funding treasuries.
///
///  It is deliberately NOT a param: MsgUpdateParams replaces the whole Params struct, so adding one
///  address would mean restating every other one, and an omission would silently drop an exemption.
///  Entries are added and removed individually by governance.
class BankSendWhitelist extends $pb.GeneratedMessage {
  factory BankSendWhitelist({
    $core.String? address,
    $core.String? reason,
  }) {
    final $result = create();
    if (address != null) {
      $result.address = address;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    return $result;
  }
  BankSendWhitelist._() : super();
  factory BankSendWhitelist.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankSendWhitelist.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BankSendWhitelist', package: const $pb.PackageName(_omitMessageNames ? '' : 'qadena.qadena'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BankSendWhitelist clone() => BankSendWhitelist()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BankSendWhitelist copyWith(void Function(BankSendWhitelist) updates) => super.copyWith((message) => updates(message as BankSendWhitelist)) as BankSendWhitelist;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BankSendWhitelist create() => BankSendWhitelist._();
  BankSendWhitelist createEmptyInstance() => create();
  static $pb.PbList<BankSendWhitelist> createRepeated() => $pb.PbList<BankSendWhitelist>();
  @$core.pragma('dart2js:noInline')
  static BankSendWhitelist getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankSendWhitelist>(create);
  static BankSendWhitelist? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  /// why this account is exempt.  Required in practice: an address on its own gives a reviewer no
  /// way to judge, later, whether the exemption is still warranted.
  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
