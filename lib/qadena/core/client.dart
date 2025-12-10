import 'dart:convert';
import 'dart:typed_data';

import 'package:qadena_alan/qadena/core/client/query/export.dart';
import 'package:qadena_alan/qadena/types/hdpath.dart';
import 'package:qadena_alan/qadena/types/qadena_client_tx.dart';
import 'package:qadena_alan/qadena/types/qadena_hd_wallet.dart';
import 'package:qadena_alan/utils/bip_39.dart';
import 'package:qadena_alan/wallet/network_info.dart';
import 'package:qadena_alan/wallet/wallet.dart' as qadenaWallet;
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
import 'package:qadena_alan/qadena/core/client/msg/qadena/bind_credentials.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/protect_key.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/common.dart';
import 'package:grpc/grpc.dart';
import 'package:qadena_alan/qadena/common.dart' as common;
import 'package:web3dart/web3dart.dart';


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

//  late final alan.Wallet hardCodedSponsorAcct;
//  late final WalletResponse hardCodedSponsorWallet;


  QadenaClient(this.networkInfo) {
    chain = Chain(networkInfo);
    /*
    // HARD CODED FOR NOW
    hardCodedSponsorAcct = alan.Wallet.derive(
      "guilt decline utility scale crash envelope snap table dress coach tray use detect success lemon fatigue surround project warfare victory mean midnight address before"
          .split(' '),
      networkInfo,
      derivationPath: "m/44'/744'/0'/0/0");

     hardCodedSponsorWallet = toWallet(hardCodedSponsorAcct);
     */
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
          qadenaWallet.Wallet.derive(seedPhrase, networkInfo, derivationPath: txpath);
      var cxWallet =
          qadenaWallet.Wallet.derive(seedPhrase, networkInfo, derivationPath: cxpath);

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

  List<GeneratedMessage> createFeeGrantMessages(String mainWalletAddress, String ephWalletAddress, String feeGranterAddress) {
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
    msg.granter = feeGranterAddress;
    msg.allowance = alan.Any(
      typeUrl: '/cosmos.feegrant.v1beta1.AllowedMsgAllowance',
      value: allowance.writeToBuffer(),
    );

    final msg2 = MsgGrantAllowance.create();
    msg2.grantee = ephWalletAddress;
    msg2.granter = feeGranterAddress;
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

  Future<bool> bindCredentials(List<String>? seedPhrase) async {
    final chain = Chain(networkInfo);

    // main wallet index=0
    var mainWallet = QadenaHDWallet(chain, networkInfo, seedPhrase!, 0);

    // ephemeral wallet index=1
    var ephWallet = QadenaHDWallet(chain, networkInfo, seedPhrase!, 1);

    final txSender = alan.TxSender.fromNetworkInfo(networkInfo);

    // use naming service to bind credentials
    final bindEmailMsg = await msgBindCredential(MsgBindCredentialArgs(
      chain: chain,
      ephtxwallet: ephWallet.transactionWallet,
      cxwallet: mainWallet.credentialWallet,
      credentialType: common.EmailContactCredentialType,
    ));

    final bindPhoneMsg = await msgBindCredential(MsgBindCredentialArgs(
      chain: chain,
      ephtxwallet: ephWallet.transactionWallet,
      cxwallet: mainWallet.credentialWallet,
      credentialType: common.PhoneContactCredentialType,
    ));

    final bindTxHashRef = StringRef("");
    final bindResponse = await QadenaClientTx.broadcastTx(
      ephWallet.txAcct, 
      [bindEmailMsg, bindPhoneMsg], 
      txHashRef: bindTxHashRef
    );

    if (bindResponse == null) {
      if (common.Debug) {
        print('Accepted: bind credentials, TxHash: ${bindTxHashRef.value}');
      }
    } else {
      if (common.Debug) {
        print("REJECTED: bind credentials $bindResponse");
      }
      return false;
    }

    String? response;
    if ((response = await QadenaClientTx.checkTxResult(txSender, bindTxHashRef.value)) == null) {
      if (common.Debug) {
        print("bind credentials success");
      }
    } else {
      if (common.Debug) {
        print("REJECTED: bind credentials $response");
      }
      return false;
    }
    return true;
  }

  Future<AccountResponse> createAccount(String pioneerID, List<String>? mnemonic, String? serviceProviderID, BigInt claimAmount, BigInt claimBlindingFactor, String feeGranterAddress, List<String> recoveryPartners, int recoveryThreshold) async {
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
      final ephIndex = 1;
      var ephWallet = QadenaHDWallet(chain, networkInfo, seedPhrase, ephIndex);

      final txSender = alan.TxSender.fromNetworkInfo(networkInfo);


      if (networkInfo.isTesting) {
        final mainFeeGrantError = await mainWallet.feeGrant(feeGranterAddress);
        if (mainFeeGrantError != null) {
          return AccountResponse.fromErrorMessage(mainFeeGrantError);
        }
        final ephFeeGrantError = await ephWallet.feeGrant(feeGranterAddress);
        if (ephFeeGrantError != null) {
          return AccountResponse.fromErrorMessage(ephFeeGrantError);
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
      final mainCWResponse = await QadenaClientTx.broadcastTx(mainWallet.txAcct, mainCWMsgs, feeGranter: feeGranterAddress, txHashRef: mainCWTxHashRef);

      if (mainCWResponse == null) {
        if (common.Debug) {
          print('Accepted:  create wallet, TxHash: ${mainCWTxHashRef.value}');
        }
      } else { 
        if (common.Debug) {
          print("REJECTED:  create wallet $mainCWResponse");
        }
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
      final ephCWResponse = await QadenaClientTx.broadcastTx(ephWallet.txAcct, ephCWMsgs, feeGranter: feeGranterAddress, txHashRef: ephCWTxHashRef);

      if (ephCWResponse == null) {
        if (common.Debug) {
          print('Accepted:  eph create wallet, TxHash: ${ephCWTxHashRef.value}');
        }
      } else {
        if (common.Debug) {
          print("REJECTED:  eph create wallet $ephCWResponse");
        }
        return AccountResponse.fromErrorMessage(ephCWResponse);
      }

      final rasTxHashRef = StringRef("");
      final claimCredentialsTxHashRef = StringRef("");

      final emailRef = StringRef("");

      if (claimAmount == BigInt.zero || claimBlindingFactor == BigInt.zero) {
        print("claimAmount or claimBlindingFactor is zero, not claiming nor registering authorized signatory");
      } else {

        final claimCredentialsMsgs = await msgClaimCredentials(MsgClaimCredentialsArgs(
          chain: chain,
          txwallet: mainWallet.transactionWallet,
          cxwallet: mainWallet.credentialWallet,
          claimAmount: claimAmount,
          claimBlindingFactor: claimBlindingFactor,
          recoverKey: false,
          mainWalletQadenaWalletAmount: saveMainWalletAmountRef,
          mainWalletServiceProviderID: [serviceProviderID],
          emailRef: emailRef,
          ));

        final claimCredentialsResponse = await QadenaClientTx.broadcastTx(mainWallet.txAcct, claimCredentialsMsgs, txHashRef: claimCredentialsTxHashRef);

        if (claimCredentialsResponse == null) {
          if (common.Debug) {
            print('Accepted:  claim credentials, TxHash: ${claimCredentialsTxHashRef.value}');
          }
        } else {
          if (common.Debug) {
            print("REJECTED:  claim credentials $claimCredentialsResponse");
          }
          return AccountResponse.fromErrorMessage(claimCredentialsResponse);
        }

        final rasMsgs =
              await msgRegisterAuthorizedSignatory(MsgRegisterAuthorizedSignatoryArgs(
            chain: chain,
            txwallet: ephWallet.transactionWallet,
            realWalletTransaction: mainWallet.transactionWallet,
            realWalletCredential: mainWallet.credentialWallet,
            mainWalletServiceProviderID: [serviceProviderID],
          ));

        final rasResponse = await QadenaClientTx.broadcastTx(mainWallet.txAcct, rasMsgs, txHashRef: rasTxHashRef);

        if (rasResponse == null) {
          if (common.Debug) {
            print('Accepted:  register authorized signatory, TxHash: ${rasTxHashRef.value}');
          }
        } else {
          if (common.Debug) {
            print("REJECTED:  register authorized signatory $rasResponse");
          }
          return AccountResponse.fromErrorMessage(rasResponse);
        }
      }

      String? response = null;

      if (common.Debug) {
        print("checking main create wallet results");
      }
      if ((response = await QadenaClientTx.checkTxResult(txSender, mainCWTxHashRef.value)) == null) {
        if (common.Debug) {
          print("main create wallet success");
        }
      } else {
        if (common.Debug) {
          print("REJECTED:  main create wallet $response");
        }
        return AccountResponse.fromErrorMessage(response!);
      }

      if (common.Debug) {
        print("checking eph create wallet results");
      }
      if ((response = await QadenaClientTx.checkTxResult(txSender, ephCWTxHashRef.value)) == null) {
        if (common.Debug) {
          print("eph create wallet success");
        }
      } else {
        if (common.Debug) {
          print("REJECTED:  eph create wallet $response");
        }
        return AccountResponse.fromErrorMessage(response!);
      }

      if (claimAmount == BigInt.zero || claimBlindingFactor == BigInt.zero) {
        print("claimAmount or claimBlindingFactor is zero, not waiting for claim/register authorized signatory results");
      } else {
        if (common.Debug) {
          print("checking claim credentials results");
        }
        if ((response = await QadenaClientTx.checkTxResult(txSender, claimCredentialsTxHashRef.value)) == null) {
          if (common.Debug) {
            print("claim credential success");
          }

          if (common.Debug) {
            print("binding credentials for email and phone");
          }

          if (recoveryThreshold > 0) {
            if (common.Debug) {
              print("binding credentials for email and phone with recovery");
            }
              
            // use naming service to bind credentials
            final bindEmailMsg = await msgBindCredential(MsgBindCredentialArgs(
              chain: chain,
              ephtxwallet: ephWallet.transactionWallet,
              cxwallet: mainWallet.credentialWallet,
              credentialType: common.EmailContactCredentialType,
            ));

            final bindPhoneMsg = await msgBindCredential(MsgBindCredentialArgs(
              chain: chain,
              ephtxwallet: ephWallet.transactionWallet,
              cxwallet: mainWallet.credentialWallet,
              credentialType: common.PhoneContactCredentialType,
            ));

            String encodedWalletCredentials = jsonEncode([
              {
                "email": emailRef.value,
                "seedPhrase": seedPhrase.toString(),
                "ephemeralAccountIndex": ephIndex
              }
            ]);

            print("encoded wallet credentials: $encodedWalletCredentials");

            // protect the key
            final protectKeyMsg = await msgProtectKey(MsgProtectKeyArgs(
              chain: chain,
              ephtxwallet: ephWallet.transactionWallet,
              mnemonic: encodedWalletCredentials,
              threshold: recoveryThreshold,
              recoveryPartners: recoveryPartners,
            ));

            final bindAndProtectTxHashRef = StringRef("");
            final bindAndProtectResponse = await QadenaClientTx.broadcastTx(
              ephWallet.txAcct, 
              [bindEmailMsg, bindPhoneMsg, protectKeyMsg], 
              txHashRef: bindAndProtectTxHashRef
            );

            if (bindAndProtectResponse == null) {
              if (common.Debug) {
                print('Accepted: bind credentials and protect key, TxHash: ${bindAndProtectTxHashRef.value}');
              }
            } else {
              if (common.Debug) {
                print("REJECTED: bind credentials and protect key $bindAndProtectResponse");
              }
              return AccountResponse.fromErrorMessage("Failed to bind credentials and protect key");
            }

            if (common.Debug) {
              print("checking bind credentials and protect key results");
            }
            if ((response = await QadenaClientTx.checkTxResult(txSender, bindAndProtectTxHashRef.value)) == null) {
              if (common.Debug) {
                print("bind credentials and protect key success");
              }
            } else {
              if (common.Debug) {
                print("REJECTED:  bind credentials and protect key $response");
              }
              return AccountResponse.fromErrorMessage(response!);
            }
          } else {
            if (common.Debug) {
              print("not binding credentials nor protecting key");
            }
          }
        } else {
          if (common.Debug) {
            print("REJECTED:  claim credential $response");
          }
          return AccountResponse.fromErrorMessage(response!);
        }

        if (common.Debug) {
          print("checking register authorized signatory results");
        }
        if ((response = await QadenaClientTx.checkTxResult(txSender, rasTxHashRef.value)) == null) {
          if (common.Debug) {
            print("register authorized signatory success");
          }
        } else {
          if (common.Debug) {
            print("REJECTED:  register authorized signatory $response");
          }
          return AccountResponse.fromErrorMessage(response!);
        }
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

      if (common.Debug) {
        print("message: $message");
      }

      final regExp = RegExp(r'codespace (\w+) code (\d+): (.+)$');
      final match = regExp.firstMatch(message!);
      String errorMessage;

      if (match != null) {
        final message = match.group(3); // 'Signatory already exists'

        if (common.Debug) {
          print('parsed message: $message');
        }
        errorMessage = message!;
      } else {
        if (common.Debug) {
          print('Could not parse.');
        }
        errorMessage = codeName;
      }
      return AccountResponse.fromErrorMessage(errorMessage);
    } catch (e) {
      if (common.Debug) {
        print('Failed to create account: $e');
      }
      return AccountResponse.fromErrorMessage("UNKNOWN");
    }
  }

  Future<QadenaHDWallet?> createWallet(String pioneerID, List<String>? mnemonic,
      int? ephIndex, String? serviceProviderID, String feeGranterAddress, {checkAndReturnOnly = false}) async {
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

      if (checkAndReturnOnly) {
        return null;
      }

      if (networkInfo.isTesting) {
        final feeGrantSuccess = await wallet.feeGrant(feeGranterAddress);
        if (common.Debug) {
          print("Fee grant completed: $feeGrantSuccess");
        }
      }

      if (feeGranterAddress == "") {
        if (common.Debug) {
          print("Fee granter address is empty, and it looks like we need to call registerWallet");
        }
        return null;
      }

      final registerWalletSuccess = await wallet.registerWallet(pioneerID, serviceProviderID, feeGranterAddress);
      if (common.Debug) {
        print("Wallet registration successful: $registerWalletSuccess");
      }

      return registerWalletSuccess == null ? wallet : null;
      
    } catch (e) {
      if (common.Debug) {
        print('Failed to create main wallet: $e');
      }
      return null;
    }
  }
}
