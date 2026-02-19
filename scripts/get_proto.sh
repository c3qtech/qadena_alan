#!/usr/bin/env bash

set -eo pipefail

COSMOS_VERSION=$4
GOOGLEAPI_VERSION=$5
GOGOPROTO_VERSION=$6
COSMOSPROTO_VERSION=$7
COSMOSEVM_VERSION=$8
QADENA_SRC=$9

#if COSMOS_VERSION="skip" and GOOGLEAPI_VERSION="skip" and GOGOPROTO_VERSION="skip" and COSMOSPROTO_VERSION="skip" then we will only update the qadena proto files

BUILD=.build
PROTO=$1
THIRD_PARTY=$2
OUT=$3

if [ "$COSMOS_VERSION" == "skip" ] && [ "$GOOGLEAPI_VERSION" == "skip" ] && [ "$GOGOPROTO_VERSION" == "skip" ] && [ "$COSMOSPROTO_VERSION" == "skip" ] && [ "$COSMOSEVM_VERSION" == "skip" ]; then
    echo "Only updating the qadena proto files from $QADENA_SRC"
    rm -r -f "$PROTO/qadena"
    mkdir -p "$PROTO/qadena"

    cp -r $QADENA_SRC/* $PROTO/qadena/
else 
    echo "Updating all the proto files from the Cosmos SDK and qadena"
    rm -r -f $BUILD
    mkdir -p $BUILD

    rm -r -f "$PROTO"
    mkdir -p "$PROTO"

    rm -r -f "$THIRD_PARTY"
    mkdir -p "$THIRD_PARTY"

    rm -r -f "$OUT"
    mkdir -p "$OUT"

    mkdir $PROTO/qadena

    cp -r $QADENA_SRC/* $PROTO/qadena/

    COSMOSPROTO_ZIP="$BUILD/cosmosproto.zip"
    wget -O "$COSMOSPROTO_ZIP" "https://github.com/cosmos/cosmos-proto/archive/v$COSMOSPROTO_VERSION.zip"
    unzip "$COSMOSPROTO_ZIP" -d "$BUILD/" && rm "$COSMOSPROTO_ZIP"
    COSMOSPROTO="$BUILD/cosmos-proto-$COSMOSPROTO_VERSION"

    PROTO_COSMOSPROTO=$PROTO/cosmos_proto
    mkdir -p "$PROTO_COSMOSPROTO"
    mv -f "$COSMOSPROTO/proto/cosmos_proto"/* "$PROTO_COSMOSPROTO"

    GOGOPROTO_ZIP="$BUILD/gogoproto.zip"
    wget -O "$GOGOPROTO_ZIP" "https://github.com/cosmos/gogoproto/archive/v$GOGOPROTO_VERSION.zip"
    unzip "$GOGOPROTO_ZIP" -d "$BUILD/" && rm "$GOGOPROTO_ZIP"
    GOGOPROTO="$BUILD/gogoproto-$GOGOPROTO_VERSION"

    PROTO_GOGOPROTO=$PROTO/gogoproto
    mkdir -p "$PROTO_GOGOPROTO"
    mv -f "$GOGOPROTO/gogoproto"/* "$PROTO_GOGOPROTO"

    GOOGLEAPI_ZIP="$BUILD/googleapi.zip"
    wget -O "$GOOGLEAPI_ZIP" "https://github.com/gogo/googleapis/archive/v$GOOGLEAPI_VERSION.zip"
    unzip "$GOOGLEAPI_ZIP" -d "$BUILD/" && rm "$GOOGLEAPI_ZIP"
    GOOGLEAPI="$BUILD/googleapis-$GOOGLEAPI_VERSION"

    PROTO_GOOGLEAPI=$PROTO/google/api
    mkdir -p "$PROTO_GOOGLEAPI"
    mv -f "$GOOGLEAPI/google/api"/* "$PROTO_GOOGLEAPI"




    # Download the Cosmos Protobuf files from the Cosmos SDK
    COSMOS_ZIP="$BUILD/cosmos.zip"
    wget -O "$COSMOS_ZIP" "https://github.com/cosmos/cosmos-sdk/archive/v$COSMOS_VERSION.zip"
    unzip "$COSMOS_ZIP" -d "$BUILD/" && rm "$COSMOS_ZIP"
    COSMOS="$BUILD/cosmos-sdk-$COSMOS_VERSION"

    # Download the Cosmos EVM Protobuf files
    COSMOSEVM_ZIP="$BUILD/cosmosevm.zip"
    wget -O "$COSMOSEVM_ZIP" "https://github.com/cosmos/evm/archive/v$COSMOSEVM_VERSION.zip"
    unzip "$COSMOSEVM_ZIP" -d "$BUILD/" && rm "$COSMOSEVM_ZIP"
    COSMOSEVM="$BUILD/evm-$COSMOSEVM_VERSION"

    WASMD_ZIP="$BUILD/wasmd.zip"
    wget -O "$WASMD_ZIP" "https://github.com/CosmWasm/wasmd/archive/refs/heads/main.zip"
    unzip "$WASMD_ZIP" -d "$BUILD/" && rm "$WASMD_ZIP"
    WASMD="$BUILD/wasmd-main"



    PROTO_COSMOS=$PROTO/cosmos
    mkdir -p "$PROTO_COSMOS"
    mv -f "$COSMOS/proto/cosmos"/* "$PROTO_COSMOS"

    PROTO_COSMOSEVM=$PROTO/cosmos/evm
    mkdir -p "$PROTO_COSMOSEVM"
    mv -f "$COSMOSEVM/proto/cosmos/evm"/* "$PROTO_COSMOSEVM"


    PROTO_AMINO=$PROTO/amino
    mkdir -p "$PROTO_AMINO"
    mv -f "$COSMOS/proto/amino"/* "$PROTO_AMINO"

    PROTO_TENDERMINT=$PROTO/tendermint
    mkdir -p "$PROTO_TENDERMINT"
    mv -f "$COSMOS/proto/tendermint"/* "$PROTO_TENDERMINT"


    PROTO_COSMWASM=$PROTO/cosmwasm
    mkdir -p "$PROTO_COSMWASM"
    mv -f "$WASMD/proto/cosmwasm"/* "$PROTO_COSMWASM"

    mkdir -p "$THIRD_PARTY"
    #mv -f "$COSMOS/third_party"/* "$THIRD_PARTY"

    # Get the missing Protobuf types files
    PROTO_PROTOBUF=$THIRD_PARTY/proto/google/protobuf

    mkdir -p $PROTO_PROTOBUF

    PROTOBUF_LINK=https://raw.githubusercontent.com/protocolbuffers/protobuf/master/src/google/protobuf
    curl "$PROTOBUF_LINK/timestamp.proto" > "$PROTO_PROTOBUF/timestamp.proto"
    curl "$PROTOBUF_LINK/duration.proto" > "$PROTO_PROTOBUF/duration.proto"
    curl "$PROTOBUF_LINK/any.proto" > "$PROTO_PROTOBUF/any.proto"

    # Delete unnecessary folders
    rm -rf "$BUILD"
fi
