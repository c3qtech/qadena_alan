//
//  Generated code. Do not modify.
//  source: qadena/qadena/tx.proto
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

import 'tx.pb.dart' as $0;

export 'tx.pb.dart';

@$pb.GrpcServiceName('qadena.qadena.Msg')
class MsgClient extends $grpc.Client {
  static final _$updateParams = $grpc.ClientMethod<$0.MsgUpdateParams, $0.MsgUpdateParamsResponse>(
      '/qadena.qadena.Msg/UpdateParams',
      ($0.MsgUpdateParams value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgUpdateParamsResponse.fromBuffer(value));
  static final _$addPublicKey = $grpc.ClientMethod<$0.MsgAddPublicKey, $0.MsgAddPublicKeyResponse>(
      '/qadena.qadena.Msg/AddPublicKey',
      ($0.MsgAddPublicKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgAddPublicKeyResponse.fromBuffer(value));
  static final _$createWallet = $grpc.ClientMethod<$0.MsgCreateWallet, $0.MsgCreateWalletResponse>(
      '/qadena.qadena.Msg/CreateWallet',
      ($0.MsgCreateWallet value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgCreateWalletResponse.fromBuffer(value));
  static final _$transferFunds = $grpc.ClientMethod<$0.MsgTransferFunds, $0.MsgTransferFundsResponse>(
      '/qadena.qadena.Msg/TransferFunds',
      ($0.MsgTransferFunds value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgTransferFundsResponse.fromBuffer(value));
  static final _$receiveFunds = $grpc.ClientMethod<$0.MsgReceiveFunds, $0.MsgReceiveFundsResponse>(
      '/qadena.qadena.Msg/ReceiveFunds',
      ($0.MsgReceiveFunds value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgReceiveFundsResponse.fromBuffer(value));
  static final _$protectPrivateKey = $grpc.ClientMethod<$0.MsgProtectPrivateKey, $0.MsgProtectPrivateKeyResponse>(
      '/qadena.qadena.Msg/ProtectPrivateKey',
      ($0.MsgProtectPrivateKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgProtectPrivateKeyResponse.fromBuffer(value));
  static final _$signRecoverPrivateKey = $grpc.ClientMethod<$0.MsgSignRecoverPrivateKey, $0.MsgSignRecoverPrivateKeyResponse>(
      '/qadena.qadena.Msg/SignRecoverPrivateKey',
      ($0.MsgSignRecoverPrivateKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgSignRecoverPrivateKeyResponse.fromBuffer(value));
  static final _$claimCredential = $grpc.ClientMethod<$0.MsgClaimCredential, $0.MsgClaimCredentialResponse>(
      '/qadena.qadena.Msg/ClaimCredential',
      ($0.MsgClaimCredential value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgClaimCredentialResponse.fromBuffer(value));
  static final _$addServiceProvider = $grpc.ClientMethod<$0.MsgAddServiceProvider, $0.MsgAddServiceProviderResponse>(
      '/qadena.qadena.Msg/AddServiceProvider',
      ($0.MsgAddServiceProvider value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgAddServiceProviderResponse.fromBuffer(value));
  static final _$deactivateServiceProvider = $grpc.ClientMethod<$0.MsgDeactivateServiceProvider, $0.MsgDeactivateServiceProviderResponse>(
      '/qadena.qadena.Msg/DeactivateServiceProvider',
      ($0.MsgDeactivateServiceProvider value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgDeactivateServiceProviderResponse.fromBuffer(value));
  static final _$updateEnclaveIdentity = $grpc.ClientMethod<$0.MsgUpdateEnclaveIdentity, $0.MsgUpdateEnclaveIdentityResponse>(
      '/qadena.qadena.Msg/UpdateEnclaveIdentity',
      ($0.MsgUpdateEnclaveIdentity value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgUpdateEnclaveIdentityResponse.fromBuffer(value));
  static final _$pioneerAddPublicKey = $grpc.ClientMethod<$0.MsgPioneerAddPublicKey, $0.MsgPioneerAddPublicKeyResponse>(
      '/qadena.qadena.Msg/PioneerAddPublicKey',
      ($0.MsgPioneerAddPublicKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgPioneerAddPublicKeyResponse.fromBuffer(value));
  static final _$pioneerUpdateIntervalPublicKeyID = $grpc.ClientMethod<$0.MsgPioneerUpdateIntervalPublicKeyID, $0.MsgPioneerUpdateIntervalPublicKeyIDResponse>(
      '/qadena.qadena.Msg/PioneerUpdateIntervalPublicKeyID',
      ($0.MsgPioneerUpdateIntervalPublicKeyID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgPioneerUpdateIntervalPublicKeyIDResponse.fromBuffer(value));
  static final _$pioneerEnclaveExchange = $grpc.ClientMethod<$0.MsgPioneerEnclaveExchange, $0.MsgPioneerEnclaveExchangeResponse>(
      '/qadena.qadena.Msg/PioneerEnclaveExchange',
      ($0.MsgPioneerEnclaveExchange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgPioneerEnclaveExchangeResponse.fromBuffer(value));
  static final _$pioneerBroadcastSecretSharePrivateKey = $grpc.ClientMethod<$0.MsgPioneerBroadcastSecretSharePrivateKey, $0.MsgPioneerBroadcastSecretSharePrivateKeyResponse>(
      '/qadena.qadena.Msg/PioneerBroadcastSecretSharePrivateKey',
      ($0.MsgPioneerBroadcastSecretSharePrivateKey value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgPioneerBroadcastSecretSharePrivateKeyResponse.fromBuffer(value));
  static final _$pioneerUpdatePioneerJar = $grpc.ClientMethod<$0.MsgPioneerUpdatePioneerJar, $0.MsgPioneerUpdatePioneerJarResponse>(
      '/qadena.qadena.Msg/PioneerUpdatePioneerJar',
      ($0.MsgPioneerUpdatePioneerJar value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgPioneerUpdatePioneerJarResponse.fromBuffer(value));
  static final _$pioneerUpdateJarRegulator = $grpc.ClientMethod<$0.MsgPioneerUpdateJarRegulator, $0.MsgPioneerUpdateJarRegulatorResponse>(
      '/qadena.qadena.Msg/PioneerUpdateJarRegulator',
      ($0.MsgPioneerUpdateJarRegulator value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgPioneerUpdateJarRegulatorResponse.fromBuffer(value));
  static final _$pioneerUpdateEnclaveIdentity = $grpc.ClientMethod<$0.MsgPioneerUpdateEnclaveIdentity, $0.MsgPioneerUpdateEnclaveIdentityResponse>(
      '/qadena.qadena.Msg/PioneerUpdateEnclaveIdentity',
      ($0.MsgPioneerUpdateEnclaveIdentity value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgPioneerUpdateEnclaveIdentityResponse.fromBuffer(value));
  static final _$createCredential = $grpc.ClientMethod<$0.MsgCreateCredential, $0.MsgCreateCredentialResponse>(
      '/qadena.qadena.Msg/CreateCredential',
      ($0.MsgCreateCredential value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgCreateCredentialResponse.fromBuffer(value));
  static final _$removeCredential = $grpc.ClientMethod<$0.MsgRemoveCredential, $0.MsgRemoveCredentialResponse>(
      '/qadena.qadena.Msg/RemoveCredential',
      ($0.MsgRemoveCredential value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgRemoveCredentialResponse.fromBuffer(value));
  static final _$createBulkCredentials = $grpc.ClientMethod<$0.MsgCreateBulkCredentials, $0.MsgCreateBulkCredentialsResponse>(
      '/qadena.qadena.Msg/CreateBulkCredentials',
      ($0.MsgCreateBulkCredentials value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MsgCreateBulkCredentialsResponse.fromBuffer(value));

  MsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.MsgUpdateParamsResponse> updateParams($0.MsgUpdateParams request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateParams, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgAddPublicKeyResponse> addPublicKey($0.MsgAddPublicKey request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addPublicKey, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgCreateWalletResponse> createWallet($0.MsgCreateWallet request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createWallet, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgTransferFundsResponse> transferFunds($0.MsgTransferFunds request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$transferFunds, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgReceiveFundsResponse> receiveFunds($0.MsgReceiveFunds request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$receiveFunds, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgProtectPrivateKeyResponse> protectPrivateKey($0.MsgProtectPrivateKey request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$protectPrivateKey, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgSignRecoverPrivateKeyResponse> signRecoverPrivateKey($0.MsgSignRecoverPrivateKey request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signRecoverPrivateKey, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgClaimCredentialResponse> claimCredential($0.MsgClaimCredential request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$claimCredential, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgAddServiceProviderResponse> addServiceProvider($0.MsgAddServiceProvider request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addServiceProvider, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgDeactivateServiceProviderResponse> deactivateServiceProvider($0.MsgDeactivateServiceProvider request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deactivateServiceProvider, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgUpdateEnclaveIdentityResponse> updateEnclaveIdentity($0.MsgUpdateEnclaveIdentity request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateEnclaveIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgPioneerAddPublicKeyResponse> pioneerAddPublicKey($0.MsgPioneerAddPublicKey request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pioneerAddPublicKey, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgPioneerUpdateIntervalPublicKeyIDResponse> pioneerUpdateIntervalPublicKeyID($0.MsgPioneerUpdateIntervalPublicKeyID request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pioneerUpdateIntervalPublicKeyID, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgPioneerEnclaveExchangeResponse> pioneerEnclaveExchange($0.MsgPioneerEnclaveExchange request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pioneerEnclaveExchange, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgPioneerBroadcastSecretSharePrivateKeyResponse> pioneerBroadcastSecretSharePrivateKey($0.MsgPioneerBroadcastSecretSharePrivateKey request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pioneerBroadcastSecretSharePrivateKey, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgPioneerUpdatePioneerJarResponse> pioneerUpdatePioneerJar($0.MsgPioneerUpdatePioneerJar request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pioneerUpdatePioneerJar, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgPioneerUpdateJarRegulatorResponse> pioneerUpdateJarRegulator($0.MsgPioneerUpdateJarRegulator request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pioneerUpdateJarRegulator, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgPioneerUpdateEnclaveIdentityResponse> pioneerUpdateEnclaveIdentity($0.MsgPioneerUpdateEnclaveIdentity request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pioneerUpdateEnclaveIdentity, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgCreateCredentialResponse> createCredential($0.MsgCreateCredential request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCredential, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgRemoveCredentialResponse> removeCredential($0.MsgRemoveCredential request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeCredential, request, options: options);
  }

  $grpc.ResponseFuture<$0.MsgCreateBulkCredentialsResponse> createBulkCredentials($0.MsgCreateBulkCredentials request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBulkCredentials, request, options: options);
  }
}

@$pb.GrpcServiceName('qadena.qadena.Msg')
abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'qadena.qadena.Msg';

  MsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.MsgUpdateParams, $0.MsgUpdateParamsResponse>(
        'UpdateParams',
        updateParams_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgUpdateParams.fromBuffer(value),
        ($0.MsgUpdateParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgAddPublicKey, $0.MsgAddPublicKeyResponse>(
        'AddPublicKey',
        addPublicKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgAddPublicKey.fromBuffer(value),
        ($0.MsgAddPublicKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgCreateWallet, $0.MsgCreateWalletResponse>(
        'CreateWallet',
        createWallet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgCreateWallet.fromBuffer(value),
        ($0.MsgCreateWalletResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgTransferFunds, $0.MsgTransferFundsResponse>(
        'TransferFunds',
        transferFunds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgTransferFunds.fromBuffer(value),
        ($0.MsgTransferFundsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgReceiveFunds, $0.MsgReceiveFundsResponse>(
        'ReceiveFunds',
        receiveFunds_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgReceiveFunds.fromBuffer(value),
        ($0.MsgReceiveFundsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgProtectPrivateKey, $0.MsgProtectPrivateKeyResponse>(
        'ProtectPrivateKey',
        protectPrivateKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgProtectPrivateKey.fromBuffer(value),
        ($0.MsgProtectPrivateKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgSignRecoverPrivateKey, $0.MsgSignRecoverPrivateKeyResponse>(
        'SignRecoverPrivateKey',
        signRecoverPrivateKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgSignRecoverPrivateKey.fromBuffer(value),
        ($0.MsgSignRecoverPrivateKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgClaimCredential, $0.MsgClaimCredentialResponse>(
        'ClaimCredential',
        claimCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgClaimCredential.fromBuffer(value),
        ($0.MsgClaimCredentialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgAddServiceProvider, $0.MsgAddServiceProviderResponse>(
        'AddServiceProvider',
        addServiceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgAddServiceProvider.fromBuffer(value),
        ($0.MsgAddServiceProviderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgDeactivateServiceProvider, $0.MsgDeactivateServiceProviderResponse>(
        'DeactivateServiceProvider',
        deactivateServiceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgDeactivateServiceProvider.fromBuffer(value),
        ($0.MsgDeactivateServiceProviderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgUpdateEnclaveIdentity, $0.MsgUpdateEnclaveIdentityResponse>(
        'UpdateEnclaveIdentity',
        updateEnclaveIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgUpdateEnclaveIdentity.fromBuffer(value),
        ($0.MsgUpdateEnclaveIdentityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgPioneerAddPublicKey, $0.MsgPioneerAddPublicKeyResponse>(
        'PioneerAddPublicKey',
        pioneerAddPublicKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgPioneerAddPublicKey.fromBuffer(value),
        ($0.MsgPioneerAddPublicKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgPioneerUpdateIntervalPublicKeyID, $0.MsgPioneerUpdateIntervalPublicKeyIDResponse>(
        'PioneerUpdateIntervalPublicKeyID',
        pioneerUpdateIntervalPublicKeyID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgPioneerUpdateIntervalPublicKeyID.fromBuffer(value),
        ($0.MsgPioneerUpdateIntervalPublicKeyIDResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgPioneerEnclaveExchange, $0.MsgPioneerEnclaveExchangeResponse>(
        'PioneerEnclaveExchange',
        pioneerEnclaveExchange_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgPioneerEnclaveExchange.fromBuffer(value),
        ($0.MsgPioneerEnclaveExchangeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgPioneerBroadcastSecretSharePrivateKey, $0.MsgPioneerBroadcastSecretSharePrivateKeyResponse>(
        'PioneerBroadcastSecretSharePrivateKey',
        pioneerBroadcastSecretSharePrivateKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgPioneerBroadcastSecretSharePrivateKey.fromBuffer(value),
        ($0.MsgPioneerBroadcastSecretSharePrivateKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgPioneerUpdatePioneerJar, $0.MsgPioneerUpdatePioneerJarResponse>(
        'PioneerUpdatePioneerJar',
        pioneerUpdatePioneerJar_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgPioneerUpdatePioneerJar.fromBuffer(value),
        ($0.MsgPioneerUpdatePioneerJarResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgPioneerUpdateJarRegulator, $0.MsgPioneerUpdateJarRegulatorResponse>(
        'PioneerUpdateJarRegulator',
        pioneerUpdateJarRegulator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgPioneerUpdateJarRegulator.fromBuffer(value),
        ($0.MsgPioneerUpdateJarRegulatorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgPioneerUpdateEnclaveIdentity, $0.MsgPioneerUpdateEnclaveIdentityResponse>(
        'PioneerUpdateEnclaveIdentity',
        pioneerUpdateEnclaveIdentity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgPioneerUpdateEnclaveIdentity.fromBuffer(value),
        ($0.MsgPioneerUpdateEnclaveIdentityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgCreateCredential, $0.MsgCreateCredentialResponse>(
        'CreateCredential',
        createCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgCreateCredential.fromBuffer(value),
        ($0.MsgCreateCredentialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgRemoveCredential, $0.MsgRemoveCredentialResponse>(
        'RemoveCredential',
        removeCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgRemoveCredential.fromBuffer(value),
        ($0.MsgRemoveCredentialResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MsgCreateBulkCredentials, $0.MsgCreateBulkCredentialsResponse>(
        'CreateBulkCredentials',
        createBulkCredentials_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MsgCreateBulkCredentials.fromBuffer(value),
        ($0.MsgCreateBulkCredentialsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.MsgUpdateParamsResponse> updateParams_Pre($grpc.ServiceCall call, $async.Future<$0.MsgUpdateParams> request) async {
    return updateParams(call, await request);
  }

  $async.Future<$0.MsgAddPublicKeyResponse> addPublicKey_Pre($grpc.ServiceCall call, $async.Future<$0.MsgAddPublicKey> request) async {
    return addPublicKey(call, await request);
  }

  $async.Future<$0.MsgCreateWalletResponse> createWallet_Pre($grpc.ServiceCall call, $async.Future<$0.MsgCreateWallet> request) async {
    return createWallet(call, await request);
  }

  $async.Future<$0.MsgTransferFundsResponse> transferFunds_Pre($grpc.ServiceCall call, $async.Future<$0.MsgTransferFunds> request) async {
    return transferFunds(call, await request);
  }

  $async.Future<$0.MsgReceiveFundsResponse> receiveFunds_Pre($grpc.ServiceCall call, $async.Future<$0.MsgReceiveFunds> request) async {
    return receiveFunds(call, await request);
  }

  $async.Future<$0.MsgProtectPrivateKeyResponse> protectPrivateKey_Pre($grpc.ServiceCall call, $async.Future<$0.MsgProtectPrivateKey> request) async {
    return protectPrivateKey(call, await request);
  }

  $async.Future<$0.MsgSignRecoverPrivateKeyResponse> signRecoverPrivateKey_Pre($grpc.ServiceCall call, $async.Future<$0.MsgSignRecoverPrivateKey> request) async {
    return signRecoverPrivateKey(call, await request);
  }

  $async.Future<$0.MsgClaimCredentialResponse> claimCredential_Pre($grpc.ServiceCall call, $async.Future<$0.MsgClaimCredential> request) async {
    return claimCredential(call, await request);
  }

  $async.Future<$0.MsgAddServiceProviderResponse> addServiceProvider_Pre($grpc.ServiceCall call, $async.Future<$0.MsgAddServiceProvider> request) async {
    return addServiceProvider(call, await request);
  }

  $async.Future<$0.MsgDeactivateServiceProviderResponse> deactivateServiceProvider_Pre($grpc.ServiceCall call, $async.Future<$0.MsgDeactivateServiceProvider> request) async {
    return deactivateServiceProvider(call, await request);
  }

  $async.Future<$0.MsgUpdateEnclaveIdentityResponse> updateEnclaveIdentity_Pre($grpc.ServiceCall call, $async.Future<$0.MsgUpdateEnclaveIdentity> request) async {
    return updateEnclaveIdentity(call, await request);
  }

  $async.Future<$0.MsgPioneerAddPublicKeyResponse> pioneerAddPublicKey_Pre($grpc.ServiceCall call, $async.Future<$0.MsgPioneerAddPublicKey> request) async {
    return pioneerAddPublicKey(call, await request);
  }

  $async.Future<$0.MsgPioneerUpdateIntervalPublicKeyIDResponse> pioneerUpdateIntervalPublicKeyID_Pre($grpc.ServiceCall call, $async.Future<$0.MsgPioneerUpdateIntervalPublicKeyID> request) async {
    return pioneerUpdateIntervalPublicKeyID(call, await request);
  }

  $async.Future<$0.MsgPioneerEnclaveExchangeResponse> pioneerEnclaveExchange_Pre($grpc.ServiceCall call, $async.Future<$0.MsgPioneerEnclaveExchange> request) async {
    return pioneerEnclaveExchange(call, await request);
  }

  $async.Future<$0.MsgPioneerBroadcastSecretSharePrivateKeyResponse> pioneerBroadcastSecretSharePrivateKey_Pre($grpc.ServiceCall call, $async.Future<$0.MsgPioneerBroadcastSecretSharePrivateKey> request) async {
    return pioneerBroadcastSecretSharePrivateKey(call, await request);
  }

  $async.Future<$0.MsgPioneerUpdatePioneerJarResponse> pioneerUpdatePioneerJar_Pre($grpc.ServiceCall call, $async.Future<$0.MsgPioneerUpdatePioneerJar> request) async {
    return pioneerUpdatePioneerJar(call, await request);
  }

  $async.Future<$0.MsgPioneerUpdateJarRegulatorResponse> pioneerUpdateJarRegulator_Pre($grpc.ServiceCall call, $async.Future<$0.MsgPioneerUpdateJarRegulator> request) async {
    return pioneerUpdateJarRegulator(call, await request);
  }

  $async.Future<$0.MsgPioneerUpdateEnclaveIdentityResponse> pioneerUpdateEnclaveIdentity_Pre($grpc.ServiceCall call, $async.Future<$0.MsgPioneerUpdateEnclaveIdentity> request) async {
    return pioneerUpdateEnclaveIdentity(call, await request);
  }

  $async.Future<$0.MsgCreateCredentialResponse> createCredential_Pre($grpc.ServiceCall call, $async.Future<$0.MsgCreateCredential> request) async {
    return createCredential(call, await request);
  }

  $async.Future<$0.MsgRemoveCredentialResponse> removeCredential_Pre($grpc.ServiceCall call, $async.Future<$0.MsgRemoveCredential> request) async {
    return removeCredential(call, await request);
  }

  $async.Future<$0.MsgCreateBulkCredentialsResponse> createBulkCredentials_Pre($grpc.ServiceCall call, $async.Future<$0.MsgCreateBulkCredentials> request) async {
    return createBulkCredentials(call, await request);
  }

  $async.Future<$0.MsgUpdateParamsResponse> updateParams($grpc.ServiceCall call, $0.MsgUpdateParams request);
  $async.Future<$0.MsgAddPublicKeyResponse> addPublicKey($grpc.ServiceCall call, $0.MsgAddPublicKey request);
  $async.Future<$0.MsgCreateWalletResponse> createWallet($grpc.ServiceCall call, $0.MsgCreateWallet request);
  $async.Future<$0.MsgTransferFundsResponse> transferFunds($grpc.ServiceCall call, $0.MsgTransferFunds request);
  $async.Future<$0.MsgReceiveFundsResponse> receiveFunds($grpc.ServiceCall call, $0.MsgReceiveFunds request);
  $async.Future<$0.MsgProtectPrivateKeyResponse> protectPrivateKey($grpc.ServiceCall call, $0.MsgProtectPrivateKey request);
  $async.Future<$0.MsgSignRecoverPrivateKeyResponse> signRecoverPrivateKey($grpc.ServiceCall call, $0.MsgSignRecoverPrivateKey request);
  $async.Future<$0.MsgClaimCredentialResponse> claimCredential($grpc.ServiceCall call, $0.MsgClaimCredential request);
  $async.Future<$0.MsgAddServiceProviderResponse> addServiceProvider($grpc.ServiceCall call, $0.MsgAddServiceProvider request);
  $async.Future<$0.MsgDeactivateServiceProviderResponse> deactivateServiceProvider($grpc.ServiceCall call, $0.MsgDeactivateServiceProvider request);
  $async.Future<$0.MsgUpdateEnclaveIdentityResponse> updateEnclaveIdentity($grpc.ServiceCall call, $0.MsgUpdateEnclaveIdentity request);
  $async.Future<$0.MsgPioneerAddPublicKeyResponse> pioneerAddPublicKey($grpc.ServiceCall call, $0.MsgPioneerAddPublicKey request);
  $async.Future<$0.MsgPioneerUpdateIntervalPublicKeyIDResponse> pioneerUpdateIntervalPublicKeyID($grpc.ServiceCall call, $0.MsgPioneerUpdateIntervalPublicKeyID request);
  $async.Future<$0.MsgPioneerEnclaveExchangeResponse> pioneerEnclaveExchange($grpc.ServiceCall call, $0.MsgPioneerEnclaveExchange request);
  $async.Future<$0.MsgPioneerBroadcastSecretSharePrivateKeyResponse> pioneerBroadcastSecretSharePrivateKey($grpc.ServiceCall call, $0.MsgPioneerBroadcastSecretSharePrivateKey request);
  $async.Future<$0.MsgPioneerUpdatePioneerJarResponse> pioneerUpdatePioneerJar($grpc.ServiceCall call, $0.MsgPioneerUpdatePioneerJar request);
  $async.Future<$0.MsgPioneerUpdateJarRegulatorResponse> pioneerUpdateJarRegulator($grpc.ServiceCall call, $0.MsgPioneerUpdateJarRegulator request);
  $async.Future<$0.MsgPioneerUpdateEnclaveIdentityResponse> pioneerUpdateEnclaveIdentity($grpc.ServiceCall call, $0.MsgPioneerUpdateEnclaveIdentity request);
  $async.Future<$0.MsgCreateCredentialResponse> createCredential($grpc.ServiceCall call, $0.MsgCreateCredential request);
  $async.Future<$0.MsgRemoveCredentialResponse> removeCredential($grpc.ServiceCall call, $0.MsgRemoveCredential request);
  $async.Future<$0.MsgCreateBulkCredentialsResponse> createBulkCredentials($grpc.ServiceCall call, $0.MsgCreateBulkCredentials request);
}
