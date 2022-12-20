#!/bin/sh

apk add git gcc build-base linux-headers
wget https://github.com/CosmWasm/wasmvm/releases/download/v1.0.0/libwasmvm_muslc.x86_64.a -O /lib/libwasmvm_muslc.a

git clone https://github.com/comdex-official/comdex.git
cd comdex
git checkout v6.0.2

BUILD_TAGS=muslc LINK_STATICALLY=true make build
