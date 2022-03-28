#!/bin/sh

apk add git gcc build-base linux-headers
wget https://github.com/CosmWasm/wasmvm/releases/download/v1.0.0-beta5/libwasmvm_muslc.a -O /lib/libwasmvm_muslc.a

git clone https://github.com/osmosis-labs/osmosis.git
cd osmosis
git checkout v7.0.3
BUILD_TAGS=muslc make build
