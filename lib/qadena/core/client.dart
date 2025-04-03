import 'dart:typed_data';

import 'package:qadena_alan/qadena/core/client/query/export.dart';
import 'package:qadena_alan/qadena/types/hdpath.dart';
import 'package:qadena_alan/qadena/types/qadena_client_tx.dart';
import 'package:qadena_alan/qadena/types/qadena_hd_wallet.dart';
import 'package:qadena_alan/utils/bip_39.dart';
import 'package:qadena_alan/wallet/network_info.dart';
import 'package:qadena_alan/wallet/wallet.dart';
import 'package:qadena_alan/alan.dart' as alan;
import 'package:protobuf/protobuf.dart';
import 'package:qadena_alan/proto/cosmos/feegrant/v1beta1/feegrant.pb.dart';
import 'package:qadena_alan/proto/cosmos/feegrant/v1beta1/tx.pb.dart';
import 'package:qadena_alan/qadena.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/create_wallet.dart';
import 'package:qadena_alan/qadena/core/client/query/qadena_query.dart';
import 'package:qadena_alan/proto/cosmos/bank/v1beta1/query.pb.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/register_authorized_signatory.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/claim_credentials.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/common.dart';
import 'package:grpc/grpc.dart';


//import 'package:qadena_alan/proto/qadena/qadena/export.dart' as qadenaproto;


class LocalAccountResponse {
  final List<String> mnemonic;
  final String? password;
  final String txAddress;
  final String cxAddress;
  final Uint8List txPublicKeyHex;
  final Uint8List cxPublicKeyHex;

  LocalAccountResponse({
    required this.mnemonic,
    this.password,
    required this.txAddress,
    required this.cxAddress,
    required this.txPublicKeyHex,
    required this.cxPublicKeyHex,
  });
}

class AccountResponse {
  QadenaHDWallet? mainWallet;
  QadenaHDWallet? ephWallet;
  String? errorMessage;

  AccountResponse({
    required this.mainWallet,
    required this.ephWallet,
  });

  AccountResponse.fromErrorMessage(String errorMessage) {
    this.errorMessage = errorMessage;
  }
}

class QadenaClient {
  final NetworkInfo networkInfo;
  late final Chain chain;

  late final alan.Wallet sponsorAcct;
  late final WalletResponse sponsorWallet;


  QadenaClient(this.networkInfo) {
    chain = Chain(networkInfo);
    // HARD CODED FOR NOW
    sponsorAcct = alan.Wallet.derive(
      "guilt decline utility scale crash envelope snap table dress coach tray use detect success lemon fatigue surround project warfare victory mean midnight address before"
          .split(' '),
      networkInfo,
      derivationPath: "m/44'/744'/0'/0/0");

     sponsorWallet = toWallet(sponsorAcct);
     QadenaClientTx.networkInfo = networkInfo;
     QadenaClientTx.chain = chain;
     initECPedersen();
  }

  LocalAccountResponse createLocalAccount(
      {List<String>? mnemonic, int? ephIndex, String? password}) {
    try {
      var seedPhrase = mnemonic ?? Bip39.generateMnemonic(strength: 256);
      ephIndex = ephIndex ?? 0;

      final txpath = HDPath(
              walletType: AccountType.transactionWalletType.value,
              addressIdx: ephIndex)
          .toString();
      final cxpath = HDPath(
              walletType: AccountType.credentialWalletType.value, addressIdx: 1)
          .toString();
      var txWallet =
          Wallet.derive(seedPhrase, networkInfo, derivationPath: txpath);
      var cxWallet =
          Wallet.derive(seedPhrase, networkInfo, derivationPath: cxpath);

      return LocalAccountResponse(
        mnemonic: seedPhrase,
        password: password,
        txAddress: txWallet.bech32Address,
        cxAddress: cxWallet.bech32Address,
        txPublicKeyHex: txWallet.publicKey,
        cxPublicKeyHex: cxWallet.publicKey,
      );
    } catch (e) {
      print('Failed to create local wallet: $e');
      return LocalAccountResponse(
        mnemonic: [],
        txAddress: '',
        cxAddress: '',
        txPublicKeyHex: Uint8List(0),
        cxPublicKeyHex: Uint8List(0),
      );
    }
  }

  List<GeneratedMessage> createFeeGrantMessages(String mainWalletAddress, String ephWalletAddress) {
    final basicAllowance = BasicAllowance.create();

    final allowance = AllowedMsgAllowance.create();
    allowance.allowance = alan.Any(
      typeUrl: '/cosmos.feegrant.v1beta1.BasicAllowance',
      value: basicAllowance.writeToBuffer(),
    );
    allowance.allowedMessages.addAll([
      '/qadena.qadena.MsgAddPublicKey',
      '/qadena.qadena.MsgCreateWallet',
    ]);

    final msg = MsgGrantAllowance.create();
    msg.grantee = mainWalletAddress;
    msg.granter = sponsorWallet.address;
    msg.allowance = alan.Any(
      typeUrl: '/cosmos.feegrant.v1beta1.AllowedMsgAllowance',
      value: allowance.writeToBuffer(),
    );

    final msg2 = MsgGrantAllowance.create();
    msg2.grantee = ephWalletAddress;
    msg2.granter = sponsorWallet.address;
    msg2.allowance = alan.Any(
      typeUrl: '/cosmos.feegrant.v1beta1.AllowedMsgAllowance',
      value: allowance.writeToBuffer(),
    );

    return [msg, msg2];
  }

  Future<Map<String, Incentive>> getIncentives(Chain chain) async {
      try {
        final denomsMetadataRes = await chain.bankQuery.queryClient
            .denomsMetadata(QueryDenomsMetadataRequest());
        final metadatas = denomsMetadataRes.metadatas;
        final incentivesRes = await chain.qadenaQuery.incentives(metadatas);
        return incentivesRes;
      } catch (e) {
        print('Failed to get incentives: $e');
        return {};
      }
  }

  Future<AccountResponse> createAccount(String pioneerID, List<String>? mnemonic, String? serviceProviderID, BigInt claimAmount, BigInt claimBlindingFactor) async {
    try {
      var seedPhrase = mnemonic ?? Bip39.generateMnemonic(strength: 256);
      serviceProviderID = serviceProviderID ?? "";

      final chain = Chain(networkInfo);

      // main wallet index=0
      var mainWallet = QadenaHDWallet(chain, networkInfo, seedPhrase, 0);

      if (await mainWallet.walletExists()) {
        return AccountResponse.fromErrorMessage("Wallet already exists");
      }

      // ephemeral wallet index=1
      var ephWallet = QadenaHDWallet(chain, networkInfo, seedPhrase, 1);

      final txSender = alan.TxSender.fromNetworkInfo(networkInfo);


      if (networkInfo.isTesting) {
        final msgs = createFeeGrantMessages(mainWallet.transactionWalletAddress, ephWallet.transactionWalletAddress);

        final response = await QadenaClientTx.broadcastTx(sponsorAcct, msgs);

        if (response == null) {
          print('SUCCESS:  feegrant');
        } else {
          print("FAIL:  feegrant $response");
          return AccountResponse.fromErrorMessage("Feegrant failed");
        }
      }

      final mainWalletAmountRef = WalletAmountRef(null);

      final mainCWMsgs = await msgCreateWallet(MsgCreateWalletArgs(
        chain: chain,
        cxwallet: mainWallet.credentialWallet,
        homePioneerID: pioneerID,
        txwallet: mainWallet.transactionWallet,
        acceptCredentialTypes: null,
        acceptPassword: null,
        isEphemeral: false,
        requireSenderCredentialTypes: null,
        incentives: () async => await getIncentives(chain),
        serviceProviderID: serviceProviderID,
        mainWallet: null,
        mainWalletQadenaWalletAmount: mainWalletAmountRef,
      ));

      final saveMainWalletAmountRef = WalletAmountRef(mainWalletAmountRef.value);

      final mainCWTxHashRef = StringRef("");
      final mainCWResponse = await QadenaClientTx.broadcastTx(mainWallet.txAcct, mainCWMsgs, feeGranter: sponsorWallet.address, txHashRef: mainCWTxHashRef);

      if (mainCWResponse == null) {
        print('Accepted:  create wallet, TxHash: ${mainCWTxHashRef.value}');
      } else { 
        print("REJECTED:  create wallet $mainCWResponse");
        return AccountResponse.fromErrorMessage(mainCWResponse);
      }


      final ephCWMsgs = await msgCreateWallet(MsgCreateWalletArgs(
        chain: chain,
        cxwallet: ephWallet.credentialWallet,
        homePioneerID: pioneerID,
        txwallet: ephWallet.transactionWallet,
        acceptCredentialTypes: null,
        acceptPassword: null,
        isEphemeral: true,
        requireSenderCredentialTypes: null,
        incentives: () async => await getIncentives(chain),
        serviceProviderID: serviceProviderID,
        mainWallet: mainWallet.transactionWallet,
        mainWalletQadenaWalletAmount: mainWalletAmountRef,
      ));

      final ephCWTxHashRef = StringRef("");
      final ephCWResponse = await QadenaClientTx.broadcastTx(ephWallet.txAcct, ephCWMsgs, feeGranter: sponsorWallet.address, txHashRef: ephCWTxHashRef);

      if (ephCWResponse == null) {
        print('Accepted:  eph create wallet, TxHash: ${ephCWTxHashRef.value}');
      } else {
        print("REJECTED:  eph create wallet $ephCWResponse");
        return AccountResponse.fromErrorMessage(ephCWResponse);
      }

      final ccTxHashRef = StringRef("");

      final ccMsgs = await msgClaimCredentials(MsgClaimCredentialsArgs(
        chain: chain,
        txwallet: mainWallet.transactionWallet,
        cxwallet: mainWallet.credentialWallet,
        claimAmount: claimAmount,
        claimBlindingFactor: claimBlindingFactor,
        recoverKey: false,
        mainWalletQadenaWalletAmount: saveMainWalletAmountRef,
        mainWalletServiceProviderID: [serviceProviderID],
        ));

      final ccResponse = await QadenaClientTx.broadcastTx(mainWallet.txAcct, ccMsgs, txHashRef: ccTxHashRef);

      if (ccResponse == null) {
        print('Accepted:  claim credentials, TxHash: ${ccTxHashRef.value}');
      } else {
        print("REJECTED:  claim credentials $ccResponse");
        return AccountResponse.fromErrorMessage(ccResponse);
      }

      final rasMsgs =
            await msgRegisterAuthorizedSignatory(MsgRegisterAuthorizedSignatoryArgs(
          chain: chain,
          txwallet: ephWallet.transactionWallet,
          realWalletTransaction: mainWallet.transactionWallet,
          realWalletCredential: mainWallet.credentialWallet,
          mainWalletServiceProviderID: [serviceProviderID],
        ));

      final rasTxHashRef = StringRef("");
      final rasResponse = await QadenaClientTx.broadcastTx(mainWallet.txAcct, rasMsgs, txHashRef: rasTxHashRef);

      if (rasResponse == null) {
        print('Accepted:  register authorized signatory, TxHash: ${rasTxHashRef.value}');
      } else {
        print("REJECTED:  register authorized signatory $rasResponse");
        return AccountResponse.fromErrorMessage(rasResponse);
      }

      String? response = null;

      if ((response = await QadenaClientTx.checkTxResult(txSender, mainCWTxHashRef.value)) == null) {
        print("main create wallet success");
      } else {
        print("REJECTED:  main create wallet $response");
        return AccountResponse.fromErrorMessage(response!);
      }

      if ((response = await QadenaClientTx.checkTxResult(txSender, ephCWTxHashRef.value)) == null) {
        print("eph create wallet success");
      } else {
        print("REJECTED:  eph create wallet $response");
        return AccountResponse.fromErrorMessage(response!);
      }

      if ((response = await QadenaClientTx.checkTxResult(txSender, ccTxHashRef.value)) == null) {
        print("claim credential success");
      } else {
        print("REJECTED:  claim credential $response");
        return AccountResponse.fromErrorMessage(response!);
      }


      if ((response = await QadenaClientTx.checkTxResult(txSender, rasTxHashRef.value)) == null) {
        print("register authorized signatory success");
      } else {
        print("REJECTED:  register authorized signatory $response");
        return AccountResponse.fromErrorMessage(response!);
      }

      return AccountResponse(
        mainWallet: mainWallet,
        ephWallet: ephWallet,
      );
    } on GrpcError catch (e) {
      // get code and message from e
      final code = e.code;
      final codeName = e.codeName;
      final message = e.message;

      print("message: $message");

      final regExp = RegExp(r'codespace (\w+) code (\d+): (.+)$');
      final match = regExp.firstMatch(message!);
      String errorMessage;

      if (match != null) {
        final message = match.group(3); // 'Signatory already exists'

        print('parsed message: $message');
        errorMessage = message!;
      } else {
        print('Could not parse.');
        errorMessage = codeName;
      }
      return AccountResponse.fromErrorMessage(errorMessage);
    } catch (e) {
      print('Failed to create account: $e');
      return AccountResponse.fromErrorMessage("UNKNOWN");
    }
  }

  Future<QadenaHDWallet?> createWallet(String pioneerID, List<String>? mnemonic,
      int? ephIndex, String? serviceProviderID) async {
    try {
      initECPedersen();

      var seedPhrase = mnemonic ?? Bip39.generateMnemonic(strength: 256);
      ephIndex = ephIndex ?? 0;
      serviceProviderID = serviceProviderID ?? "";

      final chain = Chain(networkInfo);
      var wallet = QadenaHDWallet(chain, networkInfo, seedPhrase, ephIndex);

      if (await wallet.walletExists()) {
        return wallet;
      }

      if (networkInfo.isTesting) {
        final feeGrantSuccess = await wallet.feeGrant();
        print("Fee grant completed: $feeGrantSuccess");
      }

      final registerWalletSuccess = await wallet.registerWallet(pioneerID, serviceProviderID);
      print("Wallet registration successful: $registerWalletSuccess");

      return registerWalletSuccess == null ? wallet : null;
      
    } catch (e) {
      print('Failed to create main wallet: $e');
      return null;
    }
  }
}
