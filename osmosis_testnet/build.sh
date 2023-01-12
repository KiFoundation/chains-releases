#!/bin/sh

apk add git gcc build-base linux-headers
wget https://github.com/CosmWasm/wasmvm/releases/download/v1.1.1/libwasmvm_muslc.x86_64.a -O /lib/libwasmvm_muslc.a

git clone https://github.com/osmosis-labs/osmosis.git
cd osmosis
git checkout v14.0.0-rc1
BUILD_TAGS=muslc LINK_STATICALLY=true make build
