//
//  Generated code. Do not modify.
//  source: qadena/qadena/enclave.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'credential.pb.dart' as $7;
import 'enclave.pb.dart' as $2;
import 'enclave_identity.pb.dart' as $3;
import 'interval_public_key_i_d.pb.dart' as $10;
import 'jar_regulator.pb.dart' as $9;
import 'pioneer_jar.pb.dart' as $11;
import 'protect_key.pb.dart' as $5;
import 'public_key.pb.dart' as $8;
import 'query.pb.dart' as $1;
import 'recover_key.pb.dart' as $6;
import 'secret_share_priv_k.pb.dart' as $12;
import 'tx.pb.dart' as $0;
import 'wallet.pb.dart' as $4;

export 'enclave.pb.dart';

@$pb.GrpcServiceName('qadena.qadena.Greeter')
class GreeterClient extends $grpc.Client {
  static final _$sayHello = $grpc.ClientMethod<$2.HelloRequest, $2.HelloReply>(
      '/qadena.qadena.Greeter/SayHello',
      ($2.HelloRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.HelloReply.fromBuffer(value));

  GreeterClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.HelloReply> sayHello($2.HelloRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sayHello, request, options: options);
  }
}

@$pb.GrpcServiceName('qadena.qadena.Greeter')
abstract class GreeterServiceBase extends $grpc.Service {
  $core.String get $name => 'qadena.qadena.Greeter';

  GreeterServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.HelloRequest, $2.HelloReply>(
        'SayHello',
        sayHello_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.HelloRequest.fromBuffer(value),
        ($2.HelloReply value) => value.writeToBuffer()));
  }

  $async.Future<$2.HelloReply> sayHello_Pre($grpc.ServiceCall call, $async.Future<$2.HelloRequest> request) async {
    return sayHello(call, await request);
  }

  $async.Future<$2.HelloReply> sayHello($grpc.ServiceCall call, $2.HelloRequest request);
}
@$pb.GrpcServiceName('qadena.qadena.QadenaEnclave')
class QadenaEnclaveClient extends $grpc.Client {
  static final _$initEnclave = $grpc.ClientMethod<$2.MsgInitEnclave, $2.InitEnclaveReply>(
      '/qadena.qadena.QadenaEnclave/InitEnclave',
      ($2.MsgInitEnclave value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.InitEnclaveReply.fromBuffer(value));
  static final _$syncEnclave = $grpc.ClientMethod<$2.MsgSyncEnclave, $2.SyncEnclaveReply>(
      '/qadena.qadena.QadenaEnclave/SyncEnclave',
      ($2.MsgSyncEnclave value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SyncEnclaveReply.fromBuffer(value));
  static final _$upgradeEnclave = $grpc.ClientMethod<$2.MsgUpgradeEnclave, $2.UpgradeEnclaveReply>(
      '/qadena.qadena.QadenaEnclave/UpgradeEnclave',
      ($2.MsgUpgradeEnclave value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpgradeEnclaveReply.fromBuffer(value));
  static final _$exportPrivateKey = $grpc.ClientMethod<$2.MsgExportPrivateKey, $2.ExportPrivateKeyReply>(
      '/qadena.qadena.QadenaEnclave/ExportPrivateKey',
      ($2.MsgExportPrivateKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ExportPrivateKeyReply.fromBuffer(value));
  static final _$exportPrivateState = $grpc.ClientMethod<$2.MsgExportPrivateState, $2.ExportPrivateStateReply>(
      '/qadena.qadena.QadenaEnclave/ExportPrivateState',
      ($2.MsgExportPrivateState value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ExportPrivateStateReply.fromBuffer(value));
  static final _$removePrivateKey = $grpc.ClientMethod<$2.MsgRemovePrivateKey, $2.RemovePrivateKeyReply>(
      '/qadena.qadena.QadenaEnclave/RemovePrivateKey',
      ($2.MsgRemovePrivateKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.RemovePrivateKeyReply.fromBuffer(value));
  static final _$updateSSIntervalKey = $grpc.ClientMethod<$2.MsgUpdateSSIntervalKey, $2.UpdateSSIntervalKeyReply>(
      '/qadena.qadena.QadenaEnclave/UpdateSSIntervalKey',
      ($2.MsgUpdateSSIntervalKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateSSIntervalKeyReply.fromBuffer(value));
  static final _$queryEnclaveSyncEnclave = $grpc.ClientMethod<$1.QueryEnclaveSyncEnclaveRequest, $1.QueryEnclaveSyncEnclaveResponse>(
      '/qadena.qadena.QadenaEnclave/QueryEnclaveSyncEnclave',
      ($1.QueryEnclaveSyncEnclaveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryEnclaveSyncEnclaveResponse.fromBuffer(value));
  static final _$queryEnclaveSecretShare = $grpc.ClientMethod<$1.QueryEnclaveSecretShareRequest, $1.QueryEnclaveSecretShareResponse>(
      '/qadena.qadena.QadenaEnclave/QueryEnclaveSecretShare',
      ($1.QueryEnclaveSecretShareRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryEnclaveSecretShareResponse.fromBuffer(value));
  static final _$queryEnclaveRecoverKeyShare = $grpc.ClientMethod<$1.QueryEnclaveRecoverKeyShareRequest, $1.QueryEnclaveRecoverKeyShareResponse>(
      '/qadena.qadena.QadenaEnclave/QueryEnclaveRecoverKeyShare',
      ($1.QueryEnclaveRecoverKeyShareRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryEnclaveRecoverKeyShareResponse.fromBuffer(value));
  static final _$queryEnclaveValidateEnclaveIdentity = $grpc.ClientMethod<$1.QueryEnclaveValidateEnclaveIdentityRequest, $1.QueryEnclaveValidateEnclaveIdentityResponse>(
      '/qadena.qadena.QadenaEnclave/QueryEnclaveValidateEnclaveIdentity',
      ($1.QueryEnclaveValidateEnclaveIdentityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryEnclaveValidateEnclaveIdentityResponse.fromBuffer(value));
  static final _$setEnclaveIdentity = $grpc.ClientMethod<$3.EnclaveIdentity, $2.SetEnclaveIdentityReply>(
      '/qadena.qadena.QadenaEnclave/SetEnclaveIdentity',
      ($3.EnclaveIdentity value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SetEnclaveIdentityReply.fromBuffer(value));
  static final _$updateEnclaveIdentity = $grpc.ClientMethod<$2.PioneerUpdateEnclaveIdentity, $2.UpdateEnclaveIdentityReply>(
      '/qadena.qadena.QadenaEnclave/UpdateEnclaveIdentity',
      ($2.PioneerUpdateEnclaveIdentity value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateEnclaveIdentityReply.fromBuffer(value));
  static final _$setWallet = $grpc.ClientMethod<$4.Wallet, $2.SetWalletReply>(
      '/qadena.qadena.QadenaEnclave/SetWallet',
      ($4.Wallet value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SetWalletReply.fromBuffer(value));
  static final _$setProtectKey = $grpc.ClientMethod<$5.ProtectKey, $2.SetProtectKeyReply>(
      '/qadena.qadena.QadenaEnclave/SetProtectKey',
      ($5.ProtectKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SetProtectKeyReply.fromBuffer(value));
  static final _$setRecoverKey = $grpc.ClientMethod<$6.RecoverKey, $2.SetRecoverKeyReply>(
      '/qadena.qadena.QadenaEnclave/SetRecoverKey',
      ($6.RecoverKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SetRecoverKeyReply.fromBuffer(value));
  static final _$setCredential = $grpc.ClientMethod<$7.Credential, $2.SetCredentialReply>(
      '/qadena.qadena.QadenaEnclave/SetCredential',
      ($7.Credential value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SetCredentialReply.fromBuffer(value));
  static final _$removeCredential = $grpc.ClientMethod<$7.Credential, $2.RemoveCredentialReply>(
      '/qadena.qadena.QadenaEnclave/RemoveCredential',
      ($7.Credential value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.RemoveCredentialReply.fromBuffer(value));
  static final _$recoverKeyByCredential = $grpc.ClientMethod<$7.Credential, $2.RecoverKeyReply>(
      '/qadena.qadena.QadenaEnclave/RecoverKeyByCredential',
      ($7.Credential value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.RecoverKeyReply.fromBuffer(value));
  static final _$claimCredential = $grpc.ClientMethod<$0.MsgClaimCredential, $0.MsgClaimCredentialResponse>(
      '/qadena.qadena.QadenaEnclave/ClaimCredential',
      ($0.MsgClaimCredential value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgClaimCredentialResponse.fromBuffer(value));
  static final _$signRecoverKey = $grpc.ClientMethod<$0.MsgSignRecoverPrivateKey, $2.SignRecoverKeyReply>(
      '/qadena.qadena.QadenaEnclave/SignRecoverKey',
      ($0.MsgSignRecoverPrivateKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SignRecoverKeyReply.fromBuffer(value));
  static final _$queryGetRecoverKey = $grpc.ClientMethod<$1.QueryGetRecoverKeyRequest, $1.QueryGetRecoverKeyResponse>(
      '/qadena.qadena.QadenaEnclave/QueryGetRecoverKey',
      ($1.QueryGetRecoverKeyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryGetRecoverKeyResponse.fromBuffer(value));
  static final _$queryFindCredential = $grpc.ClientMethod<$1.QueryFindCredentialRequest, $1.QueryFindCredentialResponse>(
      '/qadena.qadena.QadenaEnclave/QueryFindCredential',
      ($1.QueryFindCredentialRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.QueryFindCredentialResponse.fromBuffer(value));
  static final _$queryGetSubWalletIDByOriginalWalletID = $grpc.ClientMethod<$7.Credential, $2.QueryGetSubWalletIDByOriginalWalletIDResponse>(
      '/qadena.qadena.QadenaEnclave/QueryGetSubWalletIDByOriginalWalletID',
      ($7.Credential value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.QueryGetSubWalletIDByOriginalWalletIDResponse.fromBuffer(value));
  static final _$validateAuthenticateServiceProvider = $grpc.ClientMethod<$2.ValidateAuthenticateServiceProviderRequest, $2.ValidateAuthenticateServiceProviderReply>(
      '/qadena.qadena.QadenaEnclave/ValidateAuthenticateServiceProvider',
      ($2.ValidateAuthenticateServiceProviderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ValidateAuthenticateServiceProviderReply.fromBuffer(value));
  static final _$validateAuthorizedSignatory = $grpc.ClientMethod<$2.ValidateAuthorizedSignatoryRequest, $2.ValidateAuthorizedSignatoryReply>(
      '/qadena.qadena.QadenaEnclave/ValidateAuthorizedSignatory',
      ($2.ValidateAuthorizedSignatoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ValidateAuthorizedSignatoryReply.fromBuffer(value));
  static final _$validateAuthorizedSigner = $grpc.ClientMethod<$2.ValidateAuthorizedSignerRequest, $2.ValidateAuthorizedSignerReply>(
      '/qadena.qadena.QadenaEnclave/ValidateAuthorizedSigner',
      ($2.ValidateAuthorizedSignerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ValidateAuthorizedSignerReply.fromBuffer(value));
  static final _$setPublicKey = $grpc.ClientMethod<$8.PublicKey, $2.SetPublicKeyReply>(
      '/qadena.qadena.QadenaEnclave/SetPublicKey',
      ($8.PublicKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SetPublicKeyReply.fromBuffer(value));
  static final _$setJarRegulator = $grpc.ClientMethod<$9.JarRegulator, $2.SetJarRegulatorReply>(
      '/qadena.qadena.QadenaEnclave/SetJarRegulator',
      ($9.JarRegulator value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SetJarRegulatorReply.fromBuffer(value));
  static final _$setIntervalPublicKeyID = $grpc.ClientMethod<$10.IntervalPublicKeyID, $2.SetIntervalPublicKeyIdReply>(
      '/qadena.qadena.QadenaEnclave/SetIntervalPublicKeyID',
      ($10.IntervalPublicKeyID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SetIntervalPublicKeyIdReply.fromBuffer(value));
  static final _$setPioneerJar = $grpc.ClientMethod<$11.PioneerJar, $2.SetPioneerJarReply>(
      '/qadena.qadena.QadenaEnclave/SetPioneerJar',
      ($11.PioneerJar value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SetPioneerJarReply.fromBuffer(value));
  static final _$setSecretSharePrivateKey = $grpc.ClientMethod<$12.SecretSharePrivK, $2.SetSecretSharePrivateKeyReply>(
      '/qadena.qadena.QadenaEnclave/SetSecretSharePrivateKey',
      ($12.SecretSharePrivK value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SetSecretSharePrivateKeyReply.fromBuffer(value));
  static final _$validateDestinationWallet = $grpc.ClientMethod<$0.MsgCreateWallet, $2.ValidateDestinationWalletReply>(
      '/qadena.qadena.QadenaEnclave/ValidateDestinationWallet',
      ($0.MsgCreateWallet value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ValidateDestinationWalletReply.fromBuffer(value));
  static final _$validateCredential = $grpc.ClientMethod<$7.MsgBindCredential, $2.ValidateCredentialReply>(
      '/qadena.qadena.QadenaEnclave/ValidateCredential',
      ($7.MsgBindCredential value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ValidateCredentialReply.fromBuffer(value));
  static final _$validateTransferPrime = $grpc.ClientMethod<$0.MsgTransferFunds, $2.ValidateTransferPrimeReply>(
      '/qadena.qadena.QadenaEnclave/ValidateTransferPrime',
      ($0.MsgTransferFunds value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ValidateTransferPrimeReply.fromBuffer(value));
  static final _$validateTransferDoublePrime = $grpc.ClientMethod<$0.MsgReceiveFunds, $2.ValidateTransferDoublePrimeReply>(
      '/qadena.qadena.QadenaEnclave/ValidateTransferDoublePrime',
      ($0.MsgReceiveFunds value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ValidateTransferDoublePrimeReply.fromBuffer(value));
  static final _$syncWallets = $grpc.ClientMethod<$2.MsgSyncWallets, $2.SyncWalletsReply>(
      '/qadena.qadena.QadenaEnclave/SyncWallets',
      ($2.MsgSyncWallets value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SyncWalletsReply.fromBuffer(value));
  static final _$syncCredentials = $grpc.ClientMethod<$2.MsgSyncCredentials, $2.SyncCredentialsReply>(
      '/qadena.qadena.QadenaEnclave/SyncCredentials',
      ($2.MsgSyncCredentials value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SyncCredentialsReply.fromBuffer(value));
  static final _$syncRecoverKeys = $grpc.ClientMethod<$2.MsgSyncRecoverKeys, $2.SyncRecoverKeysReply>(
      '/qadena.qadena.QadenaEnclave/SyncRecoverKeys',
      ($2.MsgSyncRecoverKeys value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SyncRecoverKeysReply.fromBuffer(value));
  static final _$syncSuspiciousTransactions = $grpc.ClientMethod<$2.MsgSyncSuspiciousTransactions, $2.SyncSuspiciousTransactionsReply>(
      '/qadena.qadena.QadenaEnclave/SyncSuspiciousTransactions',
      ($2.MsgSyncSuspiciousTransactions value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SyncSuspiciousTransactionsReply.fromBuffer(value));
  static final _$scanTransaction = $grpc.ClientMethod<$2.MsgScanTransactions, $2.ScanTransactionReply>(
      '/qadena.qadena.QadenaEnclave/ScanTransaction',
      ($2.MsgScanTransactions value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ScanTransactionReply.fromBuffer(value));
  static final _$updateHeight = $grpc.ClientMethod<$2.MsgUpdateHeight, $2.UpdateHeightReply>(
      '/qadena.qadena.QadenaEnclave/UpdateHeight',
      ($2.MsgUpdateHeight value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateHeightReply.fromBuffer(value));
  static final _$transactionComplete = $grpc.ClientMethod<$2.MsgTransactionComplete, $2.TransactionCompleteReply>(
      '/qadena.qadena.QadenaEnclave/TransactionComplete',
      ($2.MsgTransactionComplete value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.TransactionCompleteReply.fromBuffer(value));
  static final _$endBlock = $grpc.ClientMethod<$2.MsgEndBlock, $2.EndBlockReply>(
      '/qadena.qadena.QadenaEnclave/EndBlock',
      ($2.MsgEndBlock value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.EndBlockReply.fromBuffer(value));
  static final _$getStoreHash = $grpc.ClientMethod<$2.MsgGetStoreHash, $2.GetStoreHashReply>(
      '/qadena.qadena.QadenaEnclave/GetStoreHash',
      ($2.MsgGetStoreHash value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetStoreHashReply.fromBuffer(value));

  QadenaEnclaveClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.InitEnclaveReply> initEnclave($2.MsgInitEnclave request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$initEnclave, request, options: options);
  }

  $grpc.ResponseFuture<$2.SyncEnclaveReply> syncEnclave($2.MsgSyncEnclave request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$syncEnclave, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpgradeEnclaveReply> upgradeEnclave($2.MsgUpgradeEnclave request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upgradeEnclave, request, options: options);
  }

  $grpc.ResponseFuture<$2.ExportPrivateKeyReply> exportPrivateKey($2.MsgExportPrivateKey request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$exportPrivateKey, request, options: options);
  }

  $grpc.ResponseFuture<$2.ExportPrivateStateReply> exportPrivateState($2.MsgExportPrivateState request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$exportPrivateState, request, options: options);
  }

  $grpc.ResponseFuture<$2.RemovePrivateKeyReply> removePrivateKey($2.MsgRemovePrivateKey request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removePrivateKey, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateSSIntervalKeyReply> updateSSIntervalKey($2.MsgUpdateSSIntervalKey request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSSIntervalKey, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryEnclaveSyncEnclaveResponse> queryEnclaveSyncEnclave($1.QueryEnclaveSyncEnclaveRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryEnclaveSyncEnclave, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryEnclaveSecretShareResponse> queryEnclaveSecretShare($1.QueryEnclaveSecretShareRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryEnclaveSecretShare, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryEnclaveRecoverKeyShareResponse> queryEnclaveRecoverKeyShare($1.QueryEnclaveRecoverKeyShareRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryEnclaveRecoverKeyShare, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryEnclaveValidateEnclaveIdentityResponse> queryEnclaveValidateEnclaveIdentity($1.QueryEnclaveValidateEnclaveIdentityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryEnclaveValidateEnclaveIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$2.SetEnclaveIdentityReply> setEnclaveIdentity($3.EnclaveIdentity request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setEnclaveIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateEnclaveIdentityReply> updateEnclaveIdentity($2.PioneerUpdateEnclaveIdentity request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEnclaveIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$2.SetWalletReply> setWallet($4.Wallet request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setWallet, request, options: options);
  }

  $grpc.ResponseFuture<$2.SetProtectKeyReply> setProtectKey($5.ProtectKey request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setProtectKey, request, options: options);
  }

  $grpc.ResponseFuture<$2.SetRecoverKeyReply> setRecoverKey($6.RecoverKey request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setRecoverKey, request, options: options);
  }

  $grpc.ResponseFuture<$2.SetCredentialReply> setCredential($7.Credential request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setCredential, request, options: options);
  }

  $grpc.ResponseFuture<$2.RemoveCredentialReply> removeCredential($7.Credential request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeCredential, request, options: options);
  }

  $grpc.ResponseFuture<$2.RecoverKeyReply> recoverKeyByCredential($7.Credential request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$recoverKeyByCredential, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgClaimCredentialResponse> claimCredential($0.MsgClaimCredential request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$claimCredential, request, options: options);
  }

  $grpc.ResponseFuture<$2.SignRecoverKeyReply> signRecoverKey($0.MsgSignRecoverPrivateKey request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signRecoverKey, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryGetRecoverKeyResponse> queryGetRecoverKey($1.QueryGetRecoverKeyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryGetRecoverKey, request, options: options);
  }

  $grpc.ResponseFuture<$1.QueryFindCredentialResponse> queryFindCredential($1.QueryFindCredentialRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryFindCredential, request, options: options);
  }

  $grpc.ResponseFuture<$2.QueryGetSubWalletIDByOriginalWalletIDResponse> queryGetSubWalletIDByOriginalWalletID($7.Credential request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryGetSubWalletIDByOriginalWalletID, request, options: options);
  }

  $grpc.ResponseFuture<$2.ValidateAuthenticateServiceProviderReply> validateAuthenticateServiceProvider($2.ValidateAuthenticateServiceProviderRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateAuthenticateServiceProvider, request, options: options);
  }

  $grpc.ResponseFuture<$2.ValidateAuthorizedSignatoryReply> validateAuthorizedSignatory($2.ValidateAuthorizedSignatoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateAuthorizedSignatory, request, options: options);
  }

  $grpc.ResponseFuture<$2.ValidateAuthorizedSignerReply> validateAuthorizedSigner($2.ValidateAuthorizedSignerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateAuthorizedSigner, request, options: options);
  }

  $grpc.ResponseFuture<$2.SetPublicKeyReply> setPublicKey($8.PublicKey request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setPublicKey, request, options: options);
  }

  $grpc.ResponseFuture<$2.SetJarRegulatorReply> setJarRegulator($9.JarRegulator request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setJarRegulator, request, options: options);
  }

  $grpc.ResponseFuture<$2.SetIntervalPublicKeyIdReply> setIntervalPublicKeyID($10.IntervalPublicKeyID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setIntervalPublicKeyID, request, options: options);
  }

  $grpc.ResponseFuture<$2.SetPioneerJarReply> setPioneerJar($11.PioneerJar request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setPioneerJar, request, options: options);
  }

  $grpc.ResponseFuture<$2.SetSecretSharePrivateKeyReply> setSecretSharePrivateKey($12.SecretSharePrivK request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setSecretSharePrivateKey, request, options: options);
  }

  $grpc.ResponseFuture<$2.ValidateDestinationWalletReply> validateDestinationWallet($0.MsgCreateWallet request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateDestinationWallet, request, options: options);
  }

  $grpc.ResponseFuture<$2.ValidateCredentialReply> validateCredential($7.MsgBindCredential request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateCredential, request, options: options);
  }

  $grpc.ResponseFuture<$2.ValidateTransferPrimeReply> validateTransferPrime($0.MsgTransferFunds request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateTransferPrime, request, options: options);
  }

  $grpc.ResponseFuture<$2.ValidateTransferDoublePrimeReply> validateTransferDoublePrime($0.MsgReceiveFunds request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateTransferDoublePrime, request, options: options);
  }

  $grpc.ResponseFuture<$2.SyncWalletsReply> syncWallets($2.MsgSyncWallets request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$syncWallets, request, options: options);
  }

  $grpc.ResponseFuture<$2.SyncCredentialsReply> syncCredentials($2.MsgSyncCredentials request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$syncCredentials, request, options: options);
  }

  $grpc.ResponseFuture<$2.SyncRecoverKeysReply> syncRecoverKeys($2.MsgSyncRecoverKeys request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$syncRecoverKeys, request, options: options);
  }

  $grpc.ResponseFuture<$2.SyncSuspiciousTransactionsReply> syncSuspiciousTransactions($2.MsgSyncSuspiciousTransactions request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$syncSuspiciousTransactions, request, options: options);
  }

  $grpc.ResponseFuture<$2.ScanTransactionReply> scanTransaction($2.MsgScanTransactions request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$scanTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateHeightReply> updateHeight($2.MsgUpdateHeight request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateHeight, request, options: options);
  }

  $grpc.ResponseFuture<$2.TransactionCompleteReply> transactionComplete($2.MsgTransactionComplete request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$transactionComplete, request, options: options);
  }

  $grpc.ResponseFuture<$2.EndBlockReply> endBlock($2.MsgEndBlock request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$endBlock, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetStoreHashReply> getStoreHash($2.MsgGetStoreHash request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStoreHash, request, options: options);
  }
}

@$pb.GrpcServiceName('qadena.qadena.QadenaEnclave')
abstract class QadenaEnclaveServiceBase extends $grpc.Service {
  $core.String get $name => 'qadena.qadena.QadenaEnclave';

  QadenaEnclaveServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.MsgInitEnclave, $2.InitEnclaveReply>(
        'InitEnclave',
        initEnclave_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgInitEnclave.fromBuffer(value),
        ($2.InitEnclaveReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MsgSyncEnclave, $2.SyncEnclaveReply>(
        'SyncEnclave',
        syncEnclave_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgSyncEnclave.fromBuffer(value),
        ($2.SyncEnclaveReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MsgUpgradeEnclave, $2.UpgradeEnclaveReply>(
        'UpgradeEnclave',
        upgradeEnclave_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgUpgradeEnclave.fromBuffer(value),
        ($2.UpgradeEnclaveReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MsgExportPrivateKey, $2.ExportPrivateKeyReply>(
        'ExportPrivateKey',
        exportPrivateKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgExportPrivateKey.fromBuffer(value),
        ($2.ExportPrivateKeyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MsgExportPrivateState, $2.ExportPrivateStateReply>(
        'ExportPrivateState',
        exportPrivateState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgExportPrivateState.fromBuffer(value),
        ($2.ExportPrivateStateReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MsgRemovePrivateKey, $2.RemovePrivateKeyReply>(
        'RemovePrivateKey',
        removePrivateKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgRemovePrivateKey.fromBuffer(value),
        ($2.RemovePrivateKeyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MsgUpdateSSIntervalKey, $2.UpdateSSIntervalKeyReply>(
        'UpdateSSIntervalKey',
        updateSSIntervalKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgUpdateSSIntervalKey.fromBuffer(value),
        ($2.UpdateSSIntervalKeyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryEnclaveSyncEnclaveRequest, $1.QueryEnclaveSyncEnclaveResponse>(
        'QueryEnclaveSyncEnclave',
        queryEnclaveSyncEnclave_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryEnclaveSyncEnclaveRequest.fromBuffer(value),
        ($1.QueryEnclaveSyncEnclaveResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryEnclaveSecretShareRequest, $1.QueryEnclaveSecretShareResponse>(
        'QueryEnclaveSecretShare',
        queryEnclaveSecretShare_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryEnclaveSecretShareRequest.fromBuffer(value),
        ($1.QueryEnclaveSecretShareResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryEnclaveRecoverKeyShareRequest, $1.QueryEnclaveRecoverKeyShareResponse>(
        'QueryEnclaveRecoverKeyShare',
        queryEnclaveRecoverKeyShare_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryEnclaveRecoverKeyShareRequest.fromBuffer(value),
        ($1.QueryEnclaveRecoverKeyShareResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryEnclaveValidateEnclaveIdentityRequest, $1.QueryEnclaveValidateEnclaveIdentityResponse>(
        'QueryEnclaveValidateEnclaveIdentity',
        queryEnclaveValidateEnclaveIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryEnclaveValidateEnclaveIdentityRequest.fromBuffer(value),
        ($1.QueryEnclaveValidateEnclaveIdentityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.EnclaveIdentity, $2.SetEnclaveIdentityReply>(
        'SetEnclaveIdentity',
        setEnclaveIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.EnclaveIdentity.fromBuffer(value),
        ($2.SetEnclaveIdentityReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PioneerUpdateEnclaveIdentity, $2.UpdateEnclaveIdentityReply>(
        'UpdateEnclaveIdentity',
        updateEnclaveIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PioneerUpdateEnclaveIdentity.fromBuffer(value),
        ($2.UpdateEnclaveIdentityReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.Wallet, $2.SetWalletReply>(
        'SetWallet',
        setWallet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.Wallet.fromBuffer(value),
        ($2.SetWalletReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ProtectKey, $2.SetProtectKeyReply>(
        'SetProtectKey',
        setProtectKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ProtectKey.fromBuffer(value),
        ($2.SetProtectKeyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.RecoverKey, $2.SetRecoverKeyReply>(
        'SetRecoverKey',
        setRecoverKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.RecoverKey.fromBuffer(value),
        ($2.SetRecoverKeyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.Credential, $2.SetCredentialReply>(
        'SetCredential',
        setCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.Credential.fromBuffer(value),
        ($2.SetCredentialReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.Credential, $2.RemoveCredentialReply>(
        'RemoveCredential',
        removeCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.Credential.fromBuffer(value),
        ($2.RemoveCredentialReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.Credential, $2.RecoverKeyReply>(
        'RecoverKeyByCredential',
        recoverKeyByCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.Credential.fromBuffer(value),
        ($2.RecoverKeyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgClaimCredential, $0.MsgClaimCredentialResponse>(
        'ClaimCredential',
        claimCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgClaimCredential.fromBuffer(value),
        ($0.MsgClaimCredentialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgSignRecoverPrivateKey, $2.SignRecoverKeyReply>(
        'SignRecoverKey',
        signRecoverKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgSignRecoverPrivateKey.fromBuffer(value),
        ($2.SignRecoverKeyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryGetRecoverKeyRequest, $1.QueryGetRecoverKeyResponse>(
        'QueryGetRecoverKey',
        queryGetRecoverKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryGetRecoverKeyRequest.fromBuffer(value),
        ($1.QueryGetRecoverKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.QueryFindCredentialRequest, $1.QueryFindCredentialResponse>(
        'QueryFindCredential',
        queryFindCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.QueryFindCredentialRequest.fromBuffer(value),
        ($1.QueryFindCredentialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.Credential, $2.QueryGetSubWalletIDByOriginalWalletIDResponse>(
        'QueryGetSubWalletIDByOriginalWalletID',
        queryGetSubWalletIDByOriginalWalletID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.Credential.fromBuffer(value),
        ($2.QueryGetSubWalletIDByOriginalWalletIDResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ValidateAuthenticateServiceProviderRequest, $2.ValidateAuthenticateServiceProviderReply>(
        'ValidateAuthenticateServiceProvider',
        validateAuthenticateServiceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ValidateAuthenticateServiceProviderRequest.fromBuffer(value),
        ($2.ValidateAuthenticateServiceProviderReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ValidateAuthorizedSignatoryRequest, $2.ValidateAuthorizedSignatoryReply>(
        'ValidateAuthorizedSignatory',
        validateAuthorizedSignatory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ValidateAuthorizedSignatoryRequest.fromBuffer(value),
        ($2.ValidateAuthorizedSignatoryReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ValidateAuthorizedSignerRequest, $2.ValidateAuthorizedSignerReply>(
        'ValidateAuthorizedSigner',
        validateAuthorizedSigner_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ValidateAuthorizedSignerRequest.fromBuffer(value),
        ($2.ValidateAuthorizedSignerReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.PublicKey, $2.SetPublicKeyReply>(
        'SetPublicKey',
        setPublicKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.PublicKey.fromBuffer(value),
        ($2.SetPublicKeyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.JarRegulator, $2.SetJarRegulatorReply>(
        'SetJarRegulator',
        setJarRegulator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.JarRegulator.fromBuffer(value),
        ($2.SetJarRegulatorReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.IntervalPublicKeyID, $2.SetIntervalPublicKeyIdReply>(
        'SetIntervalPublicKeyID',
        setIntervalPublicKeyID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.IntervalPublicKeyID.fromBuffer(value),
        ($2.SetIntervalPublicKeyIdReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.PioneerJar, $2.SetPioneerJarReply>(
        'SetPioneerJar',
        setPioneerJar_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.PioneerJar.fromBuffer(value),
        ($2.SetPioneerJarReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.SecretSharePrivK, $2.SetSecretSharePrivateKeyReply>(
        'SetSecretSharePrivateKey',
        setSecretSharePrivateKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.SecretSharePrivK.fromBuffer(value),
        ($2.SetSecretSharePrivateKeyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgCreateWallet, $2.ValidateDestinationWalletReply>(
        'ValidateDestinationWallet',
        validateDestinationWallet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgCreateWallet.fromBuffer(value),
        ($2.ValidateDestinationWalletReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.MsgBindCredential, $2.ValidateCredentialReply>(
        'ValidateCredential',
        validateCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.MsgBindCredential.fromBuffer(value),
        ($2.ValidateCredentialReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgTransferFunds, $2.ValidateTransferPrimeReply>(
        'ValidateTransferPrime',
        validateTransferPrime_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgTransferFunds.fromBuffer(value),
        ($2.ValidateTransferPrimeReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgReceiveFunds, $2.ValidateTransferDoublePrimeReply>(
        'ValidateTransferDoublePrime',
        validateTransferDoublePrime_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgReceiveFunds.fromBuffer(value),
        ($2.ValidateTransferDoublePrimeReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MsgSyncWallets, $2.SyncWalletsReply>(
        'SyncWallets',
        syncWallets_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgSyncWallets.fromBuffer(value),
        ($2.SyncWalletsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MsgSyncCredentials, $2.SyncCredentialsReply>(
        'SyncCredentials',
        syncCredentials_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgSyncCredentials.fromBuffer(value),
        ($2.SyncCredentialsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MsgSyncRecoverKeys, $2.SyncRecoverKeysReply>(
        'SyncRecoverKeys',
        syncRecoverKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgSyncRecoverKeys.fromBuffer(value),
        ($2.SyncRecoverKeysReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MsgSyncSuspiciousTransactions, $2.SyncSuspiciousTransactionsReply>(
        'SyncSuspiciousTransactions',
        syncSuspiciousTransactions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgSyncSuspiciousTransactions.fromBuffer(value),
        ($2.SyncSuspiciousTransactionsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MsgScanTransactions, $2.ScanTransactionReply>(
        'ScanTransaction',
        scanTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgScanTransactions.fromBuffer(value),
        ($2.ScanTransactionReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MsgUpdateHeight, $2.UpdateHeightReply>(
        'UpdateHeight',
        updateHeight_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgUpdateHeight.fromBuffer(value),
        ($2.UpdateHeightReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MsgTransactionComplete, $2.TransactionCompleteReply>(
        'TransactionComplete',
        transactionComplete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgTransactionComplete.fromBuffer(value),
        ($2.TransactionCompleteReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MsgEndBlock, $2.EndBlockReply>(
        'EndBlock',
        endBlock_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgEndBlock.fromBuffer(value),
        ($2.EndBlockReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MsgGetStoreHash, $2.GetStoreHashReply>(
        'GetStoreHash',
        getStoreHash_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MsgGetStoreHash.fromBuffer(value),
        ($2.GetStoreHashReply value) => value.writeToBuffer()));
  }

  $async.Future<$2.InitEnclaveReply> initEnclave_Pre($grpc.ServiceCall call, $async.Future<$2.MsgInitEnclave> request) async {
    return initEnclave(call, await request);
  }

  $async.Future<$2.SyncEnclaveReply> syncEnclave_Pre($grpc.ServiceCall call, $async.Future<$2.MsgSyncEnclave> request) async {
    return syncEnclave(call, await request);
  }

  $async.Future<$2.UpgradeEnclaveReply> upgradeEnclave_Pre($grpc.ServiceCall call, $async.Future<$2.MsgUpgradeEnclave> request) async {
    return upgradeEnclave(call, await request);
  }

  $async.Future<$2.ExportPrivateKeyReply> exportPrivateKey_Pre($grpc.ServiceCall call, $async.Future<$2.MsgExportPrivateKey> request) async {
    return exportPrivateKey(call, await request);
  }

  $async.Future<$2.ExportPrivateStateReply> exportPrivateState_Pre($grpc.ServiceCall call, $async.Future<$2.MsgExportPrivateState> request) async {
    return exportPrivateState(call, await request);
  }

  $async.Future<$2.RemovePrivateKeyReply> removePrivateKey_Pre($grpc.ServiceCall call, $async.Future<$2.MsgRemovePrivateKey> request) async {
    return removePrivateKey(call, await request);
  }

  $async.Future<$2.UpdateSSIntervalKeyReply> updateSSIntervalKey_Pre($grpc.ServiceCall call, $async.Future<$2.MsgUpdateSSIntervalKey> request) async {
    return updateSSIntervalKey(call, await request);
  }

  $async.Future<$1.QueryEnclaveSyncEnclaveResponse> queryEnclaveSyncEnclave_Pre($grpc.ServiceCall call, $async.Future<$1.QueryEnclaveSyncEnclaveRequest> request) async {
    return queryEnclaveSyncEnclave(call, await request);
  }

  $async.Future<$1.QueryEnclaveSecretShareResponse> queryEnclaveSecretShare_Pre($grpc.ServiceCall call, $async.Future<$1.QueryEnclaveSecretShareRequest> request) async {
    return queryEnclaveSecretShare(call, await request);
  }

  $async.Future<$1.QueryEnclaveRecoverKeyShareResponse> queryEnclaveRecoverKeyShare_Pre($grpc.ServiceCall call, $async.Future<$1.QueryEnclaveRecoverKeyShareRequest> request) async {
    return queryEnclaveRecoverKeyShare(call, await request);
  }

  $async.Future<$1.QueryEnclaveValidateEnclaveIdentityResponse> queryEnclaveValidateEnclaveIdentity_Pre($grpc.ServiceCall call, $async.Future<$1.QueryEnclaveValidateEnclaveIdentityRequest> request) async {
    return queryEnclaveValidateEnclaveIdentity(call, await request);
  }

  $async.Future<$2.SetEnclaveIdentityReply> setEnclaveIdentity_Pre($grpc.ServiceCall call, $async.Future<$3.EnclaveIdentity> request) async {
    return setEnclaveIdentity(call, await request);
  }

  $async.Future<$2.UpdateEnclaveIdentityReply> updateEnclaveIdentity_Pre($grpc.ServiceCall call, $async.Future<$2.PioneerUpdateEnclaveIdentity> request) async {
    return updateEnclaveIdentity(call, await request);
  }

  $async.Future<$2.SetWalletReply> setWallet_Pre($grpc.ServiceCall call, $async.Future<$4.Wallet> request) async {
    return setWallet(call, await request);
  }

  $async.Future<$2.SetProtectKeyReply> setProtectKey_Pre($grpc.ServiceCall call, $async.Future<$5.ProtectKey> request) async {
    return setProtectKey(call, await request);
  }

  $async.Future<$2.SetRecoverKeyReply> setRecoverKey_Pre($grpc.ServiceCall call, $async.Future<$6.RecoverKey> request) async {
    return setRecoverKey(call, await request);
  }

  $async.Future<$2.SetCredentialReply> setCredential_Pre($grpc.ServiceCall call, $async.Future<$7.Credential> request) async {
    return setCredential(call, await request);
  }

  $async.Future<$2.RemoveCredentialReply> removeCredential_Pre($grpc.ServiceCall call, $async.Future<$7.Credential> request) async {
    return removeCredential(call, await request);
  }

  $async.Future<$2.RecoverKeyReply> recoverKeyByCredential_Pre($grpc.ServiceCall call, $async.Future<$7.Credential> request) async {
    return recoverKeyByCredential(call, await request);
  }

  $async.Future<$0.MsgClaimCredentialResponse> claimCredential_Pre($grpc.ServiceCall call, $async.Future<$0.MsgClaimCredential> request) async {
    return claimCredential(call, await request);
  }

  $async.Future<$2.SignRecoverKeyReply> signRecoverKey_Pre($grpc.ServiceCall call, $async.Future<$0.MsgSignRecoverPrivateKey> request) async {
    return signRecoverKey(call, await request);
  }

  $async.Future<$1.QueryGetRecoverKeyResponse> queryGetRecoverKey_Pre($grpc.ServiceCall call, $async.Future<$1.QueryGetRecoverKeyRequest> request) async {
    return queryGetRecoverKey(call, await request);
  }

  $async.Future<$1.QueryFindCredentialResponse> queryFindCredential_Pre($grpc.ServiceCall call, $async.Future<$1.QueryFindCredentialRequest> request) async {
    return queryFindCredential(call, await request);
  }

  $async.Future<$2.QueryGetSubWalletIDByOriginalWalletIDResponse> queryGetSubWalletIDByOriginalWalletID_Pre($grpc.ServiceCall call, $async.Future<$7.Credential> request) async {
    return queryGetSubWalletIDByOriginalWalletID(call, await request);
  }

  $async.Future<$2.ValidateAuthenticateServiceProviderReply> validateAuthenticateServiceProvider_Pre($grpc.ServiceCall call, $async.Future<$2.ValidateAuthenticateServiceProviderRequest> request) async {
    return validateAuthenticateServiceProvider(call, await request);
  }

  $async.Future<$2.ValidateAuthorizedSignatoryReply> validateAuthorizedSignatory_Pre($grpc.ServiceCall call, $async.Future<$2.ValidateAuthorizedSignatoryRequest> request) async {
    return validateAuthorizedSignatory(call, await request);
  }

  $async.Future<$2.ValidateAuthorizedSignerReply> validateAuthorizedSigner_Pre($grpc.ServiceCall call, $async.Future<$2.ValidateAuthorizedSignerRequest> request) async {
    return validateAuthorizedSigner(call, await request);
  }

  $async.Future<$2.SetPublicKeyReply> setPublicKey_Pre($grpc.ServiceCall call, $async.Future<$8.PublicKey> request) async {
    return setPublicKey(call, await request);
  }

  $async.Future<$2.SetJarRegulatorReply> setJarRegulator_Pre($grpc.ServiceCall call, $async.Future<$9.JarRegulator> request) async {
    return setJarRegulator(call, await request);
  }

  $async.Future<$2.SetIntervalPublicKeyIdReply> setIntervalPublicKeyID_Pre($grpc.ServiceCall call, $async.Future<$10.IntervalPublicKeyID> request) async {
    return setIntervalPublicKeyID(call, await request);
  }

  $async.Future<$2.SetPioneerJarReply> setPioneerJar_Pre($grpc.ServiceCall call, $async.Future<$11.PioneerJar> request) async {
    return setPioneerJar(call, await request);
  }

  $async.Future<$2.SetSecretSharePrivateKeyReply> setSecretSharePrivateKey_Pre($grpc.ServiceCall call, $async.Future<$12.SecretSharePrivK> request) async {
    return setSecretSharePrivateKey(call, await request);
  }

  $async.Future<$2.ValidateDestinationWalletReply> validateDestinationWallet_Pre($grpc.ServiceCall call, $async.Future<$0.MsgCreateWallet> request) async {
    return validateDestinationWallet(call, await request);
  }

  $async.Future<$2.ValidateCredentialReply> validateCredential_Pre($grpc.ServiceCall call, $async.Future<$7.MsgBindCredential> request) async {
    return validateCredential(call, await request);
  }

  $async.Future<$2.ValidateTransferPrimeReply> validateTransferPrime_Pre($grpc.ServiceCall call, $async.Future<$0.MsgTransferFunds> request) async {
    return validateTransferPrime(call, await request);
  }

  $async.Future<$2.ValidateTransferDoublePrimeReply> validateTransferDoublePrime_Pre($grpc.ServiceCall call, $async.Future<$0.MsgReceiveFunds> request) async {
    return validateTransferDoublePrime(call, await request);
  }

  $async.Future<$2.SyncWalletsReply> syncWallets_Pre($grpc.ServiceCall call, $async.Future<$2.MsgSyncWallets> request) async {
    return syncWallets(call, await request);
  }

  $async.Future<$2.SyncCredentialsReply> syncCredentials_Pre($grpc.ServiceCall call, $async.Future<$2.MsgSyncCredentials> request) async {
    return syncCredentials(call, await request);
  }

  $async.Future<$2.SyncRecoverKeysReply> syncRecoverKeys_Pre($grpc.ServiceCall call, $async.Future<$2.MsgSyncRecoverKeys> request) async {
    return syncRecoverKeys(call, await request);
  }

  $async.Future<$2.SyncSuspiciousTransactionsReply> syncSuspiciousTransactions_Pre($grpc.ServiceCall call, $async.Future<$2.MsgSyncSuspiciousTransactions> request) async {
    return syncSuspiciousTransactions(call, await request);
  }

  $async.Future<$2.ScanTransactionReply> scanTransaction_Pre($grpc.ServiceCall call, $async.Future<$2.MsgScanTransactions> request) async {
    return scanTransaction(call, await request);
  }

  $async.Future<$2.UpdateHeightReply> updateHeight_Pre($grpc.ServiceCall call, $async.Future<$2.MsgUpdateHeight> request) async {
    return updateHeight(call, await request);
  }

  $async.Future<$2.TransactionCompleteReply> transactionComplete_Pre($grpc.ServiceCall call, $async.Future<$2.MsgTransactionComplete> request) async {
    return transactionComplete(call, await request);
  }

  $async.Future<$2.EndBlockReply> endBlock_Pre($grpc.ServiceCall call, $async.Future<$2.MsgEndBlock> request) async {
    return endBlock(call, await request);
  }

  $async.Future<$2.GetStoreHashReply> getStoreHash_Pre($grpc.ServiceCall call, $async.Future<$2.MsgGetStoreHash> request) async {
    return getStoreHash(call, await request);
  }

  $async.Future<$2.InitEnclaveReply> initEnclave($grpc.ServiceCall call, $2.MsgInitEnclave request);
  $async.Future<$2.SyncEnclaveReply> syncEnclave($grpc.ServiceCall call, $2.MsgSyncEnclave request);
  $async.Future<$2.UpgradeEnclaveReply> upgradeEnclave($grpc.ServiceCall call, $2.MsgUpgradeEnclave request);
  $async.Future<$2.ExportPrivateKeyReply> exportPrivateKey($grpc.ServiceCall call, $2.MsgExportPrivateKey request);
  $async.Future<$2.ExportPrivateStateReply> exportPrivateState($grpc.ServiceCall call, $2.MsgExportPrivateState request);
  $async.Future<$2.RemovePrivateKeyReply> removePrivateKey($grpc.ServiceCall call, $2.MsgRemovePrivateKey request);
  $async.Future<$2.UpdateSSIntervalKeyReply> updateSSIntervalKey($grpc.ServiceCall call, $2.MsgUpdateSSIntervalKey request);
  $async.Future<$1.QueryEnclaveSyncEnclaveResponse> queryEnclaveSyncEnclave($grpc.ServiceCall call, $1.QueryEnclaveSyncEnclaveRequest request);
  $async.Future<$1.QueryEnclaveSecretShareResponse> queryEnclaveSecretShare($grpc.ServiceCall call, $1.QueryEnclaveSecretShareRequest request);
  $async.Future<$1.QueryEnclaveRecoverKeyShareResponse> queryEnclaveRecoverKeyShare($grpc.ServiceCall call, $1.QueryEnclaveRecoverKeyShareRequest request);
  $async.Future<$1.QueryEnclaveValidateEnclaveIdentityResponse> queryEnclaveValidateEnclaveIdentity($grpc.ServiceCall call, $1.QueryEnclaveValidateEnclaveIdentityRequest request);
  $async.Future<$2.SetEnclaveIdentityReply> setEnclaveIdentity($grpc.ServiceCall call, $3.EnclaveIdentity request);
  $async.Future<$2.UpdateEnclaveIdentityReply> updateEnclaveIdentity($grpc.ServiceCall call, $2.PioneerUpdateEnclaveIdentity request);
  $async.Future<$2.SetWalletReply> setWallet($grpc.ServiceCall call, $4.Wallet request);
  $async.Future<$2.SetProtectKeyReply> setProtectKey($grpc.ServiceCall call, $5.ProtectKey request);
  $async.Future<$2.SetRecoverKeyReply> setRecoverKey($grpc.ServiceCall call, $6.RecoverKey request);
  $async.Future<$2.SetCredentialReply> setCredential($grpc.ServiceCall call, $7.Credential request);
  $async.Future<$2.RemoveCredentialReply> removeCredential($grpc.ServiceCall call, $7.Credential request);
  $async.Future<$2.RecoverKeyReply> recoverKeyByCredential($grpc.ServiceCall call, $7.Credential request);
  $async.Future<$0.MsgClaimCredentialResponse> claimCredential($grpc.ServiceCall call, $0.MsgClaimCredential request);
  $async.Future<$2.SignRecoverKeyReply> signRecoverKey($grpc.ServiceCall call, $0.MsgSignRecoverPrivateKey request);
  $async.Future<$1.QueryGetRecoverKeyResponse> queryGetRecoverKey($grpc.ServiceCall call, $1.QueryGetRecoverKeyRequest request);
  $async.Future<$1.QueryFindCredentialResponse> queryFindCredential($grpc.ServiceCall call, $1.QueryFindCredentialRequest request);
  $async.Future<$2.QueryGetSubWalletIDByOriginalWalletIDResponse> queryGetSubWalletIDByOriginalWalletID($grpc.ServiceCall call, $7.Credential request);
  $async.Future<$2.ValidateAuthenticateServiceProviderReply> validateAuthenticateServiceProvider($grpc.ServiceCall call, $2.ValidateAuthenticateServiceProviderRequest request);
  $async.Future<$2.ValidateAuthorizedSignatoryReply> validateAuthorizedSignatory($grpc.ServiceCall call, $2.ValidateAuthorizedSignatoryRequest request);
  $async.Future<$2.ValidateAuthorizedSignerReply> validateAuthorizedSigner($grpc.ServiceCall call, $2.ValidateAuthorizedSignerRequest request);
  $async.Future<$2.SetPublicKeyReply> setPublicKey($grpc.ServiceCall call, $8.PublicKey request);
  $async.Future<$2.SetJarRegulatorReply> setJarRegulator($grpc.ServiceCall call, $9.JarRegulator request);
  $async.Future<$2.SetIntervalPublicKeyIdReply> setIntervalPublicKeyID($grpc.ServiceCall call, $10.IntervalPublicKeyID request);
  $async.Future<$2.SetPioneerJarReply> setPioneerJar($grpc.ServiceCall call, $11.PioneerJar request);
  $async.Future<$2.SetSecretSharePrivateKeyReply> setSecretSharePrivateKey($grpc.ServiceCall call, $12.SecretSharePrivK request);
  $async.Future<$2.ValidateDestinationWalletReply> validateDestinationWallet($grpc.ServiceCall call, $0.MsgCreateWallet request);
  $async.Future<$2.ValidateCredentialReply> validateCredential($grpc.ServiceCall call, $7.MsgBindCredential request);
  $async.Future<$2.ValidateTransferPrimeReply> validateTransferPrime($grpc.ServiceCall call, $0.MsgTransferFunds request);
  $async.Future<$2.ValidateTransferDoublePrimeReply> validateTransferDoublePrime($grpc.ServiceCall call, $0.MsgReceiveFunds request);
  $async.Future<$2.SyncWalletsReply> syncWallets($grpc.ServiceCall call, $2.MsgSyncWallets request);
  $async.Future<$2.SyncCredentialsReply> syncCredentials($grpc.ServiceCall call, $2.MsgSyncCredentials request);
  $async.Future<$2.SyncRecoverKeysReply> syncRecoverKeys($grpc.ServiceCall call, $2.MsgSyncRecoverKeys request);
  $async.Future<$2.SyncSuspiciousTransactionsReply> syncSuspiciousTransactions($grpc.ServiceCall call, $2.MsgSyncSuspiciousTransactions request);
  $async.Future<$2.ScanTransactionReply> scanTransaction($grpc.ServiceCall call, $2.MsgScanTransactions request);
  $async.Future<$2.UpdateHeightReply> updateHeight($grpc.ServiceCall call, $2.MsgUpdateHeight request);
  $async.Future<$2.TransactionCompleteReply> transactionComplete($grpc.ServiceCall call, $2.MsgTransactionComplete request);
  $async.Future<$2.EndBlockReply> endBlock($grpc.ServiceCall call, $2.MsgEndBlock request);
  $async.Future<$2.GetStoreHashReply> getStoreHash($grpc.ServiceCall call, $2.MsgGetStoreHash request);
}
