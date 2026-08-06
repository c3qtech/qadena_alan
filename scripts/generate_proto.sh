#!/usr/bin/env bash

# -u matters here: this script passes QADENA_SRC through to get_proto.sh, which
# does `cp -r $QADENA_SRC/*`. Unset, that expands to `cp -r /*`.
set -euo pipefail

# Run from the package root regardless of where this was invoked from, so the
# relative OUT/PROTO/THIRD_PARTY paths and the `source scripts/...` calls below
# do not depend on the caller's working directory.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/.."

# Define variables
OUT=lib/proto
PROTO=proto
THIRD_PARTY=third_party
COSMOS_VERSION=0.53.5
GOOGLEAPI_VERSION=1.4.1
GOGOPROTO_VERSION=1.4.12
COSMOSPROTO_VERSION=1.0.0-beta.5
COSMOSEVM_VERSION=0.5.1

QADENA=qadena

# The qadena proto directory is a REQUIRED parameter. It used to default to
# ../qadena_v3/proto/qadena, which silently regenerated against whatever
# happened to sit at that path -- including a checkout too old to contain the
# messages being added, which produces Dart that compiles and is simply missing
# them. Nothing about the directory layout is assumed any more.
QADENA_SRC="${QADENA_SRC:-}"
MODE=""
REQUIRE_MSG=""

usage() {
  cat <<EOF
Usage: $0 --qadena-src <path> (--qadena-only | --all) [--require-msg <name>]

  --qadena-src <path>  REQUIRED. Path to the qadena proto directory, e.g.
                       ../../qv3/proto/qadena. Must contain qadena/tx.proto.
                       May also be supplied as the QADENA_SRC env var.
  --qadena-only        Only regenerate the qadena protos (skip Cosmos et al).
  --all                Regenerate everything, re-downloading the Cosmos SDK,
                       gogoproto, googleapis, cosmos-proto, evm and wasmd protos.
  --require-msg <name> Fail unless <name> appears in qadena/tx.proto. Use this
                       to prove you are pointed at a new enough checkout, e.g.
                       --require-msg MsgUpdateCredential
  --help               Print this help.

Example:
  $0 --qadena-src ../../qv3/proto/qadena --qadena-only \\
     --require-msg MsgUpdateCredential
EOF
}

while [ $# -gt 0 ]; do
  case "$1" in
    --qadena-src)
      [ $# -ge 2 ] || { echo "error: --qadena-src needs a path" >&2; usage >&2; exit 2; }
      QADENA_SRC="$2"; shift 2 ;;
    --qadena-src=*)  QADENA_SRC="${1#*=}"; shift ;;
    --require-msg)
      [ $# -ge 2 ] || { echo "error: --require-msg needs a message name" >&2; exit 2; }
      REQUIRE_MSG="$2"; shift 2 ;;
    --require-msg=*) REQUIRE_MSG="${1#*=}"; shift ;;
    --qadena-only)   MODE="qadena-only"; shift ;;
    --all)           MODE="all"; shift ;;
    --help|-h)       usage; exit 0 ;;
    *) echo "error: unknown argument '$1'" >&2; usage >&2; exit 2 ;;
  esac
done

if [ -z "$MODE" ]; then
  echo "error: pick one of --qadena-only or --all" >&2
  usage >&2
  exit 2
fi

# Required in BOTH modes: get_proto.sh copies the qadena protos either way.
if [ -z "$QADENA_SRC" ]; then
  echo "error: --qadena-src is required (or set QADENA_SRC)" >&2
  usage >&2
  exit 2
fi
if [ ! -d "$QADENA_SRC" ]; then
  echo "error: --qadena-src is not a directory: $QADENA_SRC" >&2
  echo "       resolved from $(pwd)" >&2
  exit 2
fi
if [ ! -f "$QADENA_SRC/qadena/tx.proto" ]; then
  echo "error: $QADENA_SRC does not look like a qadena proto directory" >&2
  echo "       (expected $QADENA_SRC/qadena/tx.proto)" >&2
  exit 2
fi
if [ -n "$REQUIRE_MSG" ] && ! grep -q "$REQUIRE_MSG" "$QADENA_SRC/qadena/tx.proto"; then
  echo "error: '$REQUIRE_MSG' not found in $QADENA_SRC/qadena/tx.proto" >&2
  echo "       that checkout is too old for what you are generating" >&2
  exit 2
fi

QADENA_SRC="$(cd "$QADENA_SRC" && pwd)"
echo "Using qadena protos from $QADENA_SRC"

if [ "$MODE" == "qadena-only" ]; then
  COSMOS_VERSION="skip"
  COSMOSEVM_VERSION="skip"
  GOOGLEAPI_VERSION="skip"
  GOGOPROTO_VERSION="skip"
  COSMOSPROTO_VERSION="skip"
else
  echo "Will update all the files"
fi

## Download the Protobuf files
source scripts/get_proto.sh $PROTO $THIRD_PARTY $OUT $COSMOS_VERSION $GOOGLEAPI_VERSION $GOGOPROTO_VERSION $COSMOSPROTO_VERSION $COSMOSEVM_VERSION $QADENA_SRC

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
