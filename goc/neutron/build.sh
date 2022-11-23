#!/bin/sh

apk add git gcc build-base linux-headers

wget https://github.com/CosmWasm/wasmvm/releases/download/v1.1.1/libwasmvm_muslc.x86_64.a -O /lib/libwasmvm_muslc.a

git clone https://github.com/neutron-org/neutron.git
cd neutron
git checkout f5f1ce84a18d9b274a3caa2719997e26c43d3448

BUILD_TAGS=muslc LDFLAGS='-linkmode=external -extldflags "-Wl,-z,muldefs -static"' make build
