import 'dart:convert';
import 'dart:typed_data';

import 'package:fixnum/src/int64.dart';
import 'package:qadena_alan/alan.dart' as alan;
import 'package:qadena_alan/proto/cosmos/bank/v1beta1/query.pb.dart';
import 'package:qadena_alan/proto/cosmos/base/abci/v1beta1/abci.pb.dart';
import 'package:qadena_alan/proto/cosmos/base/v1beta1/coin.pb.dart';
import 'package:qadena_alan/proto/cosmos/feegrant/v1beta1/feegrant.pb.dart';
import 'package:qadena_alan/proto/cosmos/feegrant/v1beta1/tx.pb.dart';
import 'package:qadena_alan/proto/cosmos/tx/v1beta1/tx.pb.dart';
import 'package:qadena_alan/proto/qadena/qadena/query.pb.dart';
import 'package:qadena_alan/proto/qadena/dsvs/query.pb.dart';
import 'package:qadena_alan/proto/qadena/nameservice/query.pb.dart';
import 'package:qadena_alan/qadena.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/common.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/create_wallet.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/register_authorized_signatory.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/sign_document.dart';
import 'package:qadena_alan/qadena/core/client/msg/qadena/claim_credentials.dart';
import 'package:qadena_alan/qadena/core/client/query/export.dart';
import 'package:qadena_alan/qadena/core/client/query/qadena_query.dart';
import 'package:qadena_alan/qadena/core/client/query/name_service_query.dart';
import 'package:qadena_alan/qadena/types/hdpath.dart';
import 'package:hex/hex.dart';
import 'package:protobuf/protobuf.dart';
import 'package:qadena_alan/proto/qadena/qadena/export.dart';
import 'package:grpc/grpc.dart';
import 'package:qadena_alan/qadena/types/qadena_client_tx.dart';
import 'package:qadena_alan/qadena/common.dart' as common;
import 'package:qadena_alan/qadena/types/shamir.dart';
import 'package:qadena_alan/qadena/encrypt.dart' show bDecryptAndUnmarshal, marshalAndBEncrypt;

class RecoverKeyResponse {
  final String? seed;
  final String? errorMessage;

  RecoverKeyResponse({this.seed, this.errorMessage});
}


class WalletResponse {
  final String address;
  final Uint8List addressBytes;
  final String algo;
  final Uint8List privkey;
  final String privkeyHex;
  final Uint8List pubkey;
  final String pubkeyHex;
  final String pubkeyB64;

  WalletResponse(
      {required this.address,
      required this.addressBytes,
      required this.algo,
      required this.privkey,
      required this.privkeyHex,
      required this.pubkey,
      required this.pubkeyHex,
      required this.pubkeyB64});
}

WalletResponse toWallet(alan.Wallet wallet) {
  return WalletResponse(
    address: wallet.bech32Address,
    addressBytes: Uint8List.fromList(wallet.address),
    algo: 'secp256k1',
    privkey: Uint8List.fromList(wallet.privateKey),
    privkeyHex: HEX.encode(wallet.privateKey),
    pubkey: Uint8List.fromList(wallet.publicKey),
    pubkeyHex: HEX.encode(wallet.publicKey),
    pubkeyB64: base64Encode(wallet.publicKey),
  );
}

class QadenaHDWallet {
  final Chain chain;
  final alan.NetworkInfo networkInfo;
  final List<String> seed;
  final int ephIndex;
  late final alan.Wallet txAcct;
  late final alan.Wallet cxAcct;
  late final alan.Wallet pioneerAcct;
  late final alan.Wallet sponsorAcct;
//  late final WalletResponse sponsorWallet;
  late final WalletResponse transactionWallet;
  late final WalletResponse credentialWallet;
  late final String transactionPublicKey;
  late final String credentialWalletAddress;
  late final String credentialPublicKey;
  final double gasMultiplier = 1.2;
  final Int64 gasPrice = Int64(500000000); // in config.yml of chain

  String get transactionWalletAddress => transactionWallet.address;

  QadenaHDWallet(this.chain, this.networkInfo, this.seed, this.ephIndex) {
    final txpath = HDPath(
            walletType: AccountType.transactionWalletType.value,
            addressIdx: ephIndex)
        .toString();
    if (common.Debug) {
      print("txpath: $txpath");
    }
    final cxpath = HDPath(
            walletType: AccountType.credentialWalletType.value,
            addressIdx: ephIndex)
        .toString();
    txAcct = alan.Wallet.derive(seed, networkInfo, derivationPath: txpath);
    cxAcct = alan.Wallet.derive(seed, networkInfo, derivationPath: cxpath);

    // HARD-CODED FOR NOW!!! THERE SHOULD BE AN APPSVR ENDPONT THAT DOES THE FEEGRANT
    /*
    sponsorAcct = alan.Wallet.derive(
        "guilt decline utility scale crash envelope snap table dress coach tray use detect success lemon fatigue surround project warfare victory mean midnight address before"
            .split(' '),
        networkInfo,
        derivationPath: "m/44'/744'/0'/0/0");

    sponsorWallet = toWallet(sponsorAcct);
    */
    transactionWallet = toWallet(txAcct);
    credentialWallet = toWallet(cxAcct);
    credentialWalletAddress = credentialWallet.address;
    transactionPublicKey = transactionWallet.pubkeyHex;
    credentialPublicKey = credentialWallet.pubkeyHex;
  }

  Future<String?> feeGrant(String feeGranterAddress) async {
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

    try {
      final msg = MsgGrantAllowance.create();
      msg.grantee = transactionWallet.address;
      msg.granter = feeGranterAddress;
      msg.allowance = alan.Any(
        typeUrl: '/cosmos.feegrant.v1beta1.AllowedMsgAllowance',
        value: allowance.writeToBuffer(),
      );

      final response = await QadenaClientTx.broadcastTx(sponsorAcct, [msg]);

      if (common.Debug) {
        print("feegrant msg: $msg");
      }
      if (response == null) {
        print('Fee grant successful');

        return null;
      }

      if (common.Debug) {
        print('Tx errored: $response');
      }
      return response;
    } on GrpcError catch (e) {
      // get code and message from e
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

      return errorMessage;
    } catch (e) {
      print('Failed: $e');
      return "UNKNOWN";
    }
  }

/*
  Future<String?> findSubWalletPublicKey(String credential, String credentialType) async {
    try {
      final nameBinding = await chain.nameServiceQuery.queryClient
          .nameBinding(
           QueryGetNameBindingRequest(credential: credential, credentialType: credentialType),
            options: CallOptions(timeout: Duration(seconds: 4)),
          );
      if (common.Debug) {
        print("name binding: $nameBinding");
      }
      final queryClient = chain.qadenaQuery.queryClient;

      final pubKID = nameBinding.nameBinding.address;

      // Prepare the second request parameters
      final params2 = QueryGetPublicKeyRequest(
        pubKID: pubKID,
        pubKType: TransactionPubKType,
      );

      // Call the query client method for public key
      final res2 = await queryClient.publicKey(params2);      

      return res2.publicKey.pubK;
    } catch (e) {
      // if wallet not found, return false
      if (e is GrpcError) {
        if (e.code == StatusCode.notFound) {
          if (common.Debug) {
            print("credential not found");
          }
          return null;
        }
        rethrow;
      }
      return null;
    }
  }
  */

  Future<bool> walletExists() async {
    try {
      final wallet = await chain.qadenaQuery.queryClient
          .wallet(
            QueryGetWalletRequest(walletID: transactionWallet.address),
            options: CallOptions(timeout: Duration(seconds: 4)),
          );
      if (common.Debug) {
        print("wallet already exists: $wallet");
      }
      return true;
    } catch (e) {
      // if wallet not found, return false
      if (e is GrpcError) {
        if (e.code == StatusCode.notFound) {
          if (common.Debug) {
            print("wallet not found");
          }
          return false;
        }
        rethrow;
      }
      return false;
    }
  }

  Future<List<String>> getAuthorizedSignatory() async {
    try {
      final signatories = await chain.dsvsQuery.queryClient.authorizedSignatory(
          QueryGetAuthorizedSignatoryRequest(
              walletID: transactionWallet.address));
      if (common.Debug) {
        print("signatories: $signatories");
      }
      if (signatories.authorizedSignatory.signatory.isEmpty) {
        return [];
      }
      // decrypt the last one

      final lastSignatory = signatories.authorizedSignatory.signatory.last;

      final authorizedSignatory = EncryptableAuthorizedSignatory();

      var unprotoAuthorizedSignatoryVShareBind = dsvsUnprotoizeVShareBindData(
          lastSignatory.authorizedSignatoryVShareBind);

      vShareBDecryptAndProtoUnmarshal(
          credentialWallet.privkeyHex,
          credentialWallet.pubkeyB64,
          unprotoAuthorizedSignatoryVShareBind,
          Uint8List.fromList(lastSignatory.encAuthorizedSignatoryVShare),
          authorizedSignatory);

      if (common.Debug) {
        print('signatory: $authorizedSignatory');
      }

      return authorizedSignatory.walletID;
    } catch (e) {
      if (common.Debug) {
        print("signatories not found");
      }
      return [];
    }
  }

  Future<String?> registerWallet(
      String pioneerID, String serviceProviderID, String feeGranterAddress) async {
    final isEphemeral = ephIndex > 0;
    dynamic acceptCredentialTypes;
    dynamic requireSenderCredentialTypes;

    if (common.Debug) {
      print('seed: ${seed.join(' ')}');
      print('txAddress: ${transactionWallet.address}');
      print('cxAddress: ${credentialWallet.address}');
    }

    WalletResponse? realWalletTransaction; // this is the main wallet (index 0)

    if (isEphemeral) {
      final realWalletTransactionPath = HDPath(
              walletType: AccountType.transactionWalletType.value,
              addressIdx: 0)
          .toString();
      final realWalletTransactionAccount = alan.Wallet.derive(seed, networkInfo,
          derivationPath: realWalletTransactionPath);

      realWalletTransaction = toWallet(realWalletTransactionAccount);
    }

    try {
      final msgs = await msgCreateWallet(MsgCreateWalletArgs(
          chain: chain,
          cxwallet: credentialWallet,
          homePioneerID: pioneerID,
          txwallet: transactionWallet,
          acceptCredentialTypes: acceptCredentialTypes,
          acceptPassword: null,
          isEphemeral: isEphemeral,
          requireSenderCredentialTypes: requireSenderCredentialTypes,
          incentives: () async => await getIncentives(chain),
          serviceProviderID: serviceProviderID,
          mainWallet: realWalletTransaction,
          mainWalletQadenaWalletAmount: WalletAmountRef(null)));

      if (common.Debug) {
        print('msgs: $msgs');
      }

      final response = await QadenaClientTx.broadcastTx(txAcct, msgs,
          feeGranter: feeGranterAddress);

      if (response == null) {
        if (common.Debug) {
          print('Tx sent successfully');
        }
        return null;
      }

      if (common.Debug) {
        print('Tx errored: $response');
      }
      return response;
    } on GrpcError catch (e) {
      // get code and message from e
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

      if (common.Debug) {
        print('parsed message: $errorMessage');
      }

      return errorMessage;
    } catch (e) {
      if (common.Debug) {
        print('Failed: $e');
      }
      return "UNKNOWN";
    }
  }

  Future<String?> registerAuthorizedSignatory() async {
    final isEphemeral = ephIndex > 0;
    WalletResponse? realWalletTransaction; // this is the main wallet (index 0)
    WalletResponse? realWalletCredential;
    alan.Wallet? realWalletTransactionAccount;
    if (!isEphemeral) {
      if (common.Debug) {
        print("can only register authorized signatory for ephemeral wallets");
      }
      return "NOT_EPHEMERAL";
    } else {
      final realWalletTransactionPath = HDPath(
              walletType: AccountType.transactionWalletType.value,
              addressIdx: 0)
          .toString();
      realWalletTransactionAccount = alan.Wallet.derive(seed, networkInfo,
          derivationPath: realWalletTransactionPath);

      realWalletTransaction = toWallet(realWalletTransactionAccount);

      final realWalletCredentialPath = HDPath(
              walletType: AccountType.credentialWalletType.value, addressIdx: 0)
          .toString();
      final realWalletCredentialAccount = alan.Wallet.derive(seed, networkInfo,
          derivationPath: realWalletCredentialPath);

      realWalletCredential = toWallet(realWalletCredentialAccount);
    }

    try {
      final msgs = await msgRegisterAuthorizedSignatory(
          MsgRegisterAuthorizedSignatoryArgs(
        chain: chain,
        txwallet: transactionWallet,
        realWalletTransaction: realWalletTransaction,
        realWalletCredential: realWalletCredential,
      ));

      final response =
          await QadenaClientTx.broadcastTx(realWalletTransactionAccount, msgs);

      if (response == null) {
        if (common.Debug) {
          print('Tx sent successfully');
        }
        return null;
      }

      if (common.Debug) {
        print('Tx errored: $response');
      }

      return response;
    } on GrpcError catch (e) {
      // get code and message from e
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

      return errorMessage;
    } catch (e) {
      if (common.Debug) {
        print('Failed: $e');
      }
      return "UNKNOWN";
    }
  }

  Future<String?> protectKey(
      String mnemonic, int threshold, List<String> recoveryPartners) async {
    final isEphemeral = ephIndex > 0;
    if (!isEphemeral) {
      if (common.Debug) {
        print("can only protect a key from an ephemeral wallets");
      }
      return "NOT_EPHEMERAL";
    }

    final recoveryPartnersCount = recoveryPartners.length;

    if (recoveryPartnersCount < threshold) {
      return "NOT_ENOUGH_RECOVERY_PARTNERS";
    }

    if (recoveryPartnersCount > 1 && threshold < 2) {
      return "THRESHOLD_NEEDS_TO_BE_AT_LEAST_2";
    }

    final walletPubKs = <String>[];
    final walletIDs = <String>[];

    // Find all the pubk of the recovery partners
    for (int i = 0; i < recoveryPartners.length; i++) {
      final id = recoveryPartners[i];
      String? walletPubK;
      String? walletID;
      bool isPioneerID = false;
      bool isServiceProviderID = false;

      // Check if it's an address
      try {
        // Try to get wallet by address
        final walletResponse = await chain.qadenaQuery.queryClient.wallet(
          QueryGetWalletRequest(walletID: id),
          options: CallOptions(timeout: Duration(seconds: 4)),
        );
        walletID = walletResponse.wallet.walletID;

        if (common.Debug) {
          print("GetAddress success for $id");
        }

        // Check if it's a pioneer ID
        try {
          await common.clientGetIntervalPublicKey(chain, id, common.PioneerNodeType);
          if (common.Debug) {
            print("it's a pioneer ID");
          }
          isPioneerID = true;
        } catch (e) {
          // Not a pioneer ID, check if it's a service provider ID
          try {
            await common.clientGetIntervalPublicKey(chain, id, common.ServiceProviderNodeType);
            if (common.Debug) {
              print("it's a service provider ID");
            }
            isServiceProviderID = true;
          } catch (e) {
            if (common.Debug) {
              print("it's neither a pioneer ID nor service provider ID");
            }
          }
        }
      } catch (e) {
        if (common.Debug) {
          print("GetAddress failed for $id");
        }

        // Check if it's a pioneer name
        try {
          final result = await common.clientGetIntervalPublicKey(chain, id, common.PioneerNodeType);
          walletID = result.item1;
          walletPubK = result.item2;
          if (common.Debug) {
            print("GetIntervalPublicKey success, it's a pioneer ID");
          }
          isPioneerID = true;
        } catch (e) {
          if (common.Debug) {
            print("GetIntervalPublicKey pioneer failed");
          }

          // Check if it's a service provider name
          try {
            final result = await common.clientGetIntervalPublicKey(chain, id, common.ServiceProviderNodeType);
            walletID = result.item1;
            walletPubK = result.item2;
            if (common.Debug) {
              print("it's a service provider ID");
            }
            isServiceProviderID = true;
          } catch (e) {
            if (common.Debug) {
              print("it's neither a pioneer ID nor service provider ID");
            }

            // Check via naming service - phone
            try {
              walletID = await common.clientFindSubWallet(chain, id, common.PhoneContactCredentialType);
              if (common.Debug) {
                print("FindSubWallet 'phone' success");
              }
            } catch (e) {
              if (common.Debug) {
                print("FindSubWallet 'phone' failed");
              }

              // Check via naming service - email
              try {
                walletID = await common.clientFindSubWallet(chain, id, common.EmailContactCredentialType);
                if (common.Debug) {
                  print("FindSubWallet 'email' success");
                }
              } catch (e) {
                if (common.Debug) {
                  print("FindSubWallet 'email' failed");
                }
                return "RECOVERY_PARTNER_NOT_FOUND: $id";
              }
            }
          }
        }
      }

      // Get public key for the wallet
      try {
        walletPubK = await common.clientGetPublicKey(chain, walletID!, common.EnclavePubKType);
        if (common.Debug) {
          print("GetPublicKey 'enclave' success");
        }
      } catch (e) {
        if (common.Debug) {
          print("GetPublicKey 'enclave' failed");
        }

        try {
          walletPubK = await common.clientGetPublicKey(chain, walletID!, common.CredentialPubKType);
          if (common.Debug) {
            print("GetPublicKey 'credential' success");
          }
        } catch (e) {
          if (common.Debug) {
            print("GetPublicKey 'credential' failed");
          }
          return "PUBLIC_KEY_NOT_FOUND: $id";
        }
      }

      if (common.Debug) {
        print("isPioneerID: $isPioneerID");
        print("isServiceProviderID: $isServiceProviderID");
        print("walletID: $walletID, walletPubK: $walletPubK");
      }

      if (isPioneerID || isServiceProviderID) {
        walletIDs.add(id);
      } else {
        walletIDs.add(walletID!);
      }

      walletPubKs.add(walletPubK!);
    }

    // Check for duplicates
    if (_hasDuplicates(walletIDs)) {
      return "DUPLICATES_IN_WALLET_IDS_NOT_ALLOWED";
    }

    final recoverShares = <RecoverShare>[];

    if (recoveryPartnersCount == 1) {
      // Only one recovery partner - no need for Shamir
      final encShare = marshalAndBEncrypt(walletPubKs[0], mnemonic);
      recoverShares.add(RecoverShare(
        walletID: walletIDs[0],
        encWalletPubKShare: encShare,
      ));
    } else {
      // Create Shamir shares using sss256
      final shares = split(
        utf8.encode(mnemonic),
        recoveryPartnersCount,
        threshold,
      );

      if (common.Debug) {
        print("threshold: $threshold");
        print("mnemonic: $mnemonic");
      }

      for (int i = 0; i < shares.length; i++) {
        // print hex share
        final shareString = shares[i];
        if (common.Debug) {
          print("shareString: $shareString");
        }
        final encShare = marshalAndBEncrypt(walletPubKs[i], base64Encode(shareString));
        recoverShares.add(RecoverShare(
          walletID: walletIDs[i],
          encWalletPubKShare: encShare,
        ));
      }
    }

    try {
      final msg = MsgProtectPrivateKey(
        creator: transactionWallet.address,
        threshold: threshold,
        recoverShare: recoverShares,
      );

      final response = await QadenaClientTx.broadcastTx(txAcct, [msg]);

      if (response == null) {
        if (common.Debug) {
          print('Tx sent successfully');
        }
        return null;
      }
      if (common.Debug) {
        print('Tx errored: $response');
      }

      return response;
    } on GrpcError catch (e) {
      final codeName = e.codeName;
      final message = e.message;

      if (common.Debug) {
        print("message: $message");
      }

      final regExp = RegExp(r'codespace (\w+) code (\d+): (.+)$');
      final match = regExp.firstMatch(message!);
      String errorMessage;

      if (match != null) {
        final parsedMessage = match.group(3);
        if (common.Debug) {
          print('parsed message: $parsedMessage');
        }
        errorMessage = parsedMessage!;
      } else {
        if (common.Debug) {
          print('Could not parse.');
        }
        errorMessage = codeName;
      }

      return errorMessage;
    } catch (e) {
      if (common.Debug) {
        print('Failed: $e');
      }
      return "UNKNOWN";
    }
  }

  /// Checks if the wallet has a protected key.
  /// Returns true if the wallet is protected, false otherwise.
  Future<bool> isProtected() async {
    try {
      final params = QueryGetProtectKeyRequest(walletID: transactionWallet.address);
      final res = await chain.qadenaQuery.queryClient.protectKey(params);
      
      // If we get a response with a valid protectKey, it's protected
      if (common.Debug) {
        print("protectKey: ${res.protectKey}");
      }
      return res.protectKey.walletID.isNotEmpty;
    } catch (e) {
      if (common.Debug) {
        print("isProtected check failed: $e");
      }
      return false;
    }
  }

  /// Recovers a protected key (mnemonic/seed phrase) for a given wallet ID.
  /// Returns the recovered seed phrase on success, or an error string on failure.
  /// 
  Future<RecoverKeyResponse> recoverKey() async {
    try {
      // Get the wallet ID from the provided identifier
      String walletID = transactionWallet.address;
      try {
        final walletResponse = await chain.qadenaQuery.queryClient.wallet(
          QueryGetWalletRequest(walletID: walletID),
          options: CallOptions(timeout: Duration(seconds: 4)),
        );
        walletID = walletResponse.wallet.walletID;
      } catch (e) {
        if (common.Debug) {
          print("GetAddress failed for $walletID: $e");
        }
        return RecoverKeyResponse(errorMessage: "WALLET_NOT_FOUND: $walletID");
      }

      // Get timestamp and sign it with the transaction private key
      final timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      final tsBytes = utf8.encode(timestamp.toString());
      final signature = txAcct.sign(Uint8List.fromList(tsBytes));

      if (common.Debug) {
        print("timestamp: $timestamp");
        print("timestamp_signature_hex: ${HEX.encode(signature)}");
        print("timestamp_pubkey: ${transactionWallet.pubkeyB64}");
      }

      // Query for the recover key
      final params = QueryGetRecoverKeyRequest(
        walletID: walletID,
        timestamp: Int64(timestamp),
        timestampSignature: signature,
      );
      final res = await chain.qadenaQuery.queryClient.recoverKey(params);
      final recoverKey = res.recoverKey;

      if (common.Debug) {
        print("recoverKey: $recoverKey");
      }

      // Build the credential private key string for decryption
      final credPrivateKey = '${credentialWallet.privkeyHex}_privkhex:${credentialWallet.pubkeyB64}_privk';

      if (recoverKey.recoverShare.length == 1) {
        // Single share - no Shamir needed, just decrypt
        final seedPhrase = bDecryptAndUnmarshal(
          credPrivateKey,
          Uint8List.fromList(recoverKey.recoverShare[0].encWalletPubKShare),
        );
        if (common.Debug) {
          print("seed phrase: $seedPhrase");
        }
        return RecoverKeyResponse(seed: seedPhrase);
      } else {
        // Multiple shares - need to assemble using Shamir
        final byteShares = <Uint8List>[];

        for (final rShare in recoverKey.recoverShare) {
          final shareString = bDecryptAndUnmarshal(
            credPrivateKey,
            Uint8List.fromList(rShare.encWalletPubKShare),
          );

          if (common.Debug) {
            print("decrypted shareString: $shareString");
          }

          // Decode from base64
          final shareBytes = base64Decode(shareString);
          byteShares.add(Uint8List.fromList(shareBytes));
        }

        // Combine shares using Shamir
        final seedPhraseBytes = combine(byteShares);
        final seedPhrase = utf8.decode(seedPhraseBytes);

        if (common.Debug) {
          print("seed phrase: $seedPhrase");
        }

        return RecoverKeyResponse(seed: seedPhrase);
      }
    } on GrpcError catch (e) {
      if (common.Debug) {
        print("gRPC error: ${e.message}");
      }
      return RecoverKeyResponse(errorMessage: "GRPC_ERROR: ${e.message}");
    } catch (e) {
      if (common.Debug) {
        print("Failed to recover key: $e");
      }
      return RecoverKeyResponse(errorMessage: "RECOVER_EXCEPTION: $e");
    }
  }

  /// Helper method to check for duplicates in a list
  bool _hasDuplicates(List<String> list) {
    final seen = <String>{};
    for (final item in list) {
      if (seen.contains(item)) {
        return true;
      }
      seen.add(item);
    }
    return false;
  }
  

  Future<String?> signDocument(
      String document, String hashHex, String newHashHex) async {
    final isEphemeral = ephIndex > 0;
    WalletResponse? realWalletTransaction; // this is the main wallet (index 0)
    WalletResponse? realWalletCredential;
    alan.Wallet? realWalletTransactionAccount;
    if (!isEphemeral) {
      if (common.Debug) {
        print("can only sign a document from an ephemeral wallets");
      }
      return "NOT_EPHEMERAL";
    } else {
      final realWalletTransactionPath = HDPath(
              walletType: AccountType.transactionWalletType.value,
              addressIdx: 0)
          .toString();
      realWalletTransactionAccount = alan.Wallet.derive(seed, networkInfo,
          derivationPath: realWalletTransactionPath);

      realWalletTransaction = toWallet(realWalletTransactionAccount);

      final realWalletCredentialPath = HDPath(
              walletType: AccountType.credentialWalletType.value, addressIdx: 0)
          .toString();
      final realWalletCredentialAccount = alan.Wallet.derive(seed, networkInfo,
          derivationPath: realWalletCredentialPath);

      realWalletCredential = toWallet(realWalletCredentialAccount);
    }

    try {
      final msgs = await msgSignDocument(MsgSignDocumentArgs(
          chain: chain,
          txwallet: transactionWallet,
          cxwallet: credentialWallet,
          realWalletTransaction: realWalletTransaction,
          realWalletCredential: realWalletCredential,
          document: document,
          hashHex: hashHex,
          newHashHex: newHashHex));

      if (common.Debug) {
        print("msgs: $msgs");
      }

      final response = await QadenaClientTx.broadcastTx(txAcct, msgs);

      if (response == null) {
        if (common.Debug) {
          print('Tx sent successfully');
        }
        return null;
      }
      if (common.Debug) {
        print('Tx errored: $response');
      }
      return response;
    } on GrpcError catch (e) {
      // get code and message from e
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

      return errorMessage;
    } catch (e) {
      print('Failed: $e');
      return "UNKNOWN";
    }
  }

  Future<String?> claimCredentials(
      BigInt claimAmount, BigInt claimBlindingFactor,
      {bool recoverKey = false}) async {
    final isEphemeral = ephIndex > 0;

    if (isEphemeral) {
      print("can only claim credentials from a real wallet");
      return "NOT_EPHEMERAL";
    }

    try {
      final msgs = await msgClaimCredentials(MsgClaimCredentialsArgs(
          chain: chain,
          txwallet: transactionWallet,
          cxwallet: credentialWallet,
          claimAmount: claimAmount,
          claimBlindingFactor: claimBlindingFactor,
          recoverKey: recoverKey));

      if (common.Debug) {
        print("msgs: $msgs");
      }

      final response = await QadenaClientTx.broadcastTx(txAcct, msgs);

      if (response == null) {
        if (common.Debug) {
          print('Tx sent successfully');
        }
        return null;
      }

      if (common.Debug) {
        print('Tx errored: $response');
      }

      return response;
    } on GrpcError catch (e) {
      // get code and message from e
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

      return errorMessage;
    } catch (e) {
      if (common.Debug) {
        print('Failed: $e');
      }
      return "UNKNOWN";
    }
  }

  Future<Map<String, Incentive>> getIncentives(Chain chain) async {
    try {
      final denomsMetadataRes = await chain.bankQuery.queryClient
          .denomsMetadata(QueryDenomsMetadataRequest());
      final metadatas = denomsMetadataRes.metadatas;
      final incentivesRes = await chain.qadenaQuery.incentives(metadatas);
      return incentivesRes;
    } catch (e) {
      if (common.Debug) {
        print('Failed to get incentives: $e');
      }
      return {};
    }
  }
}
