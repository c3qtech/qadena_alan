## Version 1.0.24
- Toll-free fee grants: a wallet can now name a fee granter on everything it
  signs after onboarding, not just during it.
  - `QadenaHDWallet` carries a `feeGranterAddress`, so the sponsor established
    when the wallet was created is still known on later broadcasts. A wallet is
    granted ONCE at creation and nothing ever asks again, so the granter has to
    travel with the wallet or it is lost the moment onboarding ends.
  - `bindCredentials` and `applyCredentialUpdate` accept a `feeGranterAddress`.
    These flows rebuild both wallets from the seed alone, so they cannot recover
    the granter themselves; the caller supplies it. Without it they paid from the
    signer's own balance, which is empty on a deployment where the foundation
    pays, and every credential correction failed at the ante handler.
- Removed `createFeeGrantMessages`, which nothing called and could not have
  worked: it named the foundation as granter on a `MsgGrantAllowance` the app
  would have had to sign, and only the granter can sign that. Grants are issued
  server-side.

## Version 1.0.23
- Support for Qadena 1.1.6 credential updates, so an identity corrected at the
  registry can be corrected on chain without deleting and re-issuing the
  credential (which would break the key-recovery lineage).
  - `msgUpdateCredential` applies a correction the identity provider published.
    The chain accepts `MsgUpdateCredential` only from the credential's owner
    (`credential.WalletID == msg.Creator`), so this is necessarily the wallet's
    job: the provider can publish a corrected ownerless credential and nothing
    more. The personal-info row and its name sub-credentials move in one message
    under one claim code, because the enclave resolves each sub-update by
    (findCredentialPC, credentialType) and requires one for every changed name.
  - `msgClaimUpdatedCredential` refreshes an ephemeral wallet's accept-list. Not
    optional: the accept-list pins the sub-credential commitments and fails
    closed, so until it is sent the wallet cannot present those credentials.
  - `msgUnbindCredential` retires a stale nameservice binding. A binding is keyed
    by the cleartext contact, so after a contact correction the OLD value keeps
    resolving until the owner unbinds it -- and only the client knows which
    ephemeral wallets bound it.
  - `QadenaClient.applyCredentialUpdate` runs the whole sequence in the required
    order and reports which step failed, since a partial application leaves the
    wallet in a state the user needs to be told about.
  - `changedIdentityFields` and `identityHashChanges` for showing a diff.
    Deliberately not a policy verdict: the edit-distance rules, the lifetime
    alias budget, the cooldown and the configurable field cap all live in chain
    params, and putting a second copy of that engine on the device would let the
    copy the user sees disagree with the chain.
- FIX: `createCredentialHash` now canonicalizes names the way the chain does
  (lowercase, trim, collapse any run of Unicode whitespace to one space). The
  claim path assembled this string by hand without canonicalization, which agreed
  with the chain only for names that were already lowercased, trimmed and
  single-spaced -- a name carrying a double space, a tab or a no-break space
  produced a different hash and the enclave rejected the claim with a bare
  ErrGenericPedersen that named nothing. Pinned to vectors generated from the Go
  implementation in test/qadena/credential_hash_test.dart; wallet and chain must
  ship this function in lockstep.
- Proto bindings regenerated against Qadena 1.1.6.
- `scripts/generate_proto.sh` and `scripts/get_proto.sh` now REQUIRE the Qadena
  proto directory (`--qadena-src` or `QADENA_SRC`). The old default pointed at a
  sibling path that no longer holds, and every failure mode was silent: the
  wrong checkout regenerated without the new messages and exited 0, and an unset
  variable expanded `cp -r $QADENA_SRC/*` to `cp -r /*`.

## Version 0.41.4+1
- Added support for GrcpWeb inside the `AuthQuerier` and `NodeQuerier`

## Version 0.41.3+1
- Added `Wallet.import` method to import an existing wallet given a private key (thanks to @wenchaosong)
- Added support for GrpcWeb, allowing this library to be compatible with the Dart Web platform (thanks to @levischechter)

## Version 0.41.2+1
- Replaced legacy `/node_info` query with new gRPC client

## Version 0.41.1+1
- Added support for fee payer and granter fields

## Version 0.41.0+1
- `GRPCInfo#getChannel` now returns a new gRPC channel each time it's called. This makes it possible to easily switch between gRPC URLs if needed
- Updated Cosmos SDK to `v0.45.4` 
- Added support for CosmWASM

## Version 0.40.2+1
- Changed how `NetworkInfo` is built.
- Upgraded Cosmos Proto files to `v0.42.5`

## Version 0.40.1+1
Added support for null-safety

## Version 0.40.0+2 
Fixed incompatible dependencies versions

## Version 0.40.0+1
Support the Cosmos `v0.40.x`, `v0.41.x` and `v0.42.x` versions.

- Custom messages are now Protobuf-generated classes
- Transactions are serialized using Protobuf and signed using the `MODE_DIRECT` mode
- Queries are performed using the different `QueryClient` implementations
