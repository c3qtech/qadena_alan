import 'package:qadena_alan/alan.dart';
import 'package:fixnum/fixnum.dart';
import 'package:qadena_alan/proto/cosmos/vesting/v1beta1/export.dart' as vesting;

class BaseVestingAccount implements AccountI {
  final vesting.BaseVestingAccount account;

  @override
  String get address {
    return account.baseAccount.address;
  }

  @override
  Any get pubKey {
    return account.baseAccount.pubKey;
  }

  @override
  Int64 get accountNumber {
    return account.baseAccount.accountNumber;
  }

  @override
  Int64 get sequence {
    return account.baseAccount.sequence;
  }

  BaseVestingAccount(this.account);

  static BaseVestingAccount fromAny(Any any) {
    final account = vesting.BaseVestingAccount.fromBuffer(any.value);
    return BaseVestingAccount(account);
  }
}

class DelayedVestingAccount implements AccountI {
  final vesting.DelayedVestingAccount account;

  @override
  String get address {
    return account.baseVestingAccount.baseAccount.address;
  }

  @override
  Any get pubKey {
    return account.baseVestingAccount.baseAccount.pubKey;
  }

  @override
  Int64 get accountNumber {
    return account.baseVestingAccount.baseAccount.accountNumber;
  }

  @override
  Int64 get sequence {
    return account.baseVestingAccount.baseAccount.sequence;
  }

  DelayedVestingAccount(this.account);

  static DelayedVestingAccount fromAny(Any any) {
    final account = vesting.DelayedVestingAccount.fromBuffer(any.value);
    return DelayedVestingAccount(account);
  }
}

class ContinuousVestingAccount implements AccountI {
  final vesting.ContinuousVestingAccount account;

  @override
  String get address {
    return account.baseVestingAccount.baseAccount.address;
  }

  @override
  Any get pubKey {
    return account.baseVestingAccount.baseAccount.pubKey;
  }

  @override
  Int64 get accountNumber {
    return account.baseVestingAccount.baseAccount.accountNumber;
  }

  @override
  Int64 get sequence {
    return account.baseVestingAccount.baseAccount.sequence;
  }

  ContinuousVestingAccount(this.account);

  static ContinuousVestingAccount fromAny(Any any) {
    final account = vesting.ContinuousVestingAccount.fromBuffer(any.value);
    return ContinuousVestingAccount(account);
  }
}

class PeriodicVestingAccount implements AccountI {
  final vesting.PeriodicVestingAccount account;

  @override
  String get address {
    return account.baseVestingAccount.baseAccount.address;
  }

  @override
  Any get pubKey {
    return account.baseVestingAccount.baseAccount.pubKey;
  }

  @override
  Int64 get accountNumber {
    return account.baseVestingAccount.baseAccount.accountNumber;
  }

  @override
  Int64 get sequence {
    return account.baseVestingAccount.baseAccount.sequence;
  }

  PeriodicVestingAccount(this.account);

  static PeriodicVestingAccount fromAny(Any any) {
    final account = vesting.PeriodicVestingAccount.fromBuffer(any.value);
    return PeriodicVestingAccount(account);
  }
}
