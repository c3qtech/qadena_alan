#!/usr/bin/env bash

set -eo pipefail

# Define variables
OUT=lib/proto
PROTO=proto
THIRD_PARTY=third_party
COSMOS_VERSION=0.50.6
GOOGLEAPI_VERSION=1.4.1
GOGOPROTO_VERSION=1.4.12
COSMOSPROTO_VERSION=1.0.0-beta.5

QADENA_SRC=../qadena_v3/proto/qadena

QADENA=qadena

# get commandline parameters, if "--help" is one of them, print help, update the qadena proto files

# if no parameters, display help
if [ $# -eq 0 ] || [ $1 == "--help" ]; then
  echo "Usage: $0 [--help] [--qadena-only] [-all]"
  echo "  --help: print this help"
  echo "  --qadena-only: only update the qadena proto files"
  echo "  --all: update all the proto files"
  exit 0
fi

# if it is "-qadena-only" then only update the qadena proto files
if [ "$1" == "--qadena-only" ]; then
#  QADENA_SRC=../qadena_v3/proto/qadena
  COSMOS_VERSION="skip"
  GOOGLEAPI_VERSION="skip"
  GOGOPROTO_VERSION="skip"
  COSMOSPROTO_VERSION="skip"
  shift
elif [ "$1" == "--all" ]; then
  echo "Will update all the files"
else 
  echo "Usage: $0 [--help] [--qadena-only] [--all]"
  echo "  --help: print this help"
  echo "  --qadena-only: only update the qadena proto files"
  echo "  --all: update all the proto files"
  exit 1
fi

## Download the Protobuf files
source scripts/get_proto.sh $PROTO $THIRD_PARTY $OUT $COSMOS_VERSION $GOOGLEAPI_VERSION $GOGOPROTO_VERSION $COSMOSPROTO_VERSION $QADENA_SRC

# Generate the third party Protobuf implementations
PROTOC="protoc --dart_out=grpc:$OUT -I$THIRD_PARTY/proto"
proto_dirs=$(find "$THIRD_PARTY/proto" -path -prune -o -name '*.proto' -print0 | xargs -0 -n1 dirname | sort | uniq)
echo "Running protoc on third party proto dirs"
for dir in $proto_dirs; do
  $PROTOC -I$THIRD_PARTY/proto $(find "${dir}" -maxdepth 1 -name '*.proto')
done


# Generate the Cosmos Protobuf implementation
proto_dirs=$(find "$PROTO" -path -prune -o -name '*.proto' -print0 | xargs -0 -n1 dirname | sort | uniq)
echo "Running protoc on Cosmos proto dirs"
for dir in $proto_dirs; do
  $PROTOC -I$PROTO \
  --gocosmos_out=plugins=interfacetype+grpc,\
Mgoogle/protobuf/any.proto=github.com/cosmos/cosmos-sdk/codec/types:. \
  $(find "${dir}" -maxdepth 1 -name '*.proto')
done



# Remove all .pbserver.dart files as they are unnecessary
find "$OUT" -name "*.pbserver.dart" -type f -delete

# Clean directories
rm -rf "google"
rm -rf "cosmos"
rm -rf "qadena"
rm -rf "cosmossdk.io"
rm -rf "github.com"

# Generate exports
source scripts/generate_exports.sh
