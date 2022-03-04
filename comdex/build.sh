#!/bin/sh

apk add git gcc build-base linux-headers
wget https://github.com/CosmWasm/wasmvm/releases/download/v1.0.0-beta5/libwasmvm_muslc.a -O /lib/libwasmvm_muslc.a

# We use our fork because the official repo does not support additional build tags 
git clone https://github.com/KiFoundation/comdex.git
cd comdex
git checkout v0.1.1
# Apply Makefile improvement commit: https://github.com/KiFoundation/comdex/commit/175a20016f6e7172e874bcf0e7b8fae958c9b4ee
git cherry-pick 175a200

BUILD_TAGS=muslc make build
