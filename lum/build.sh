#!/bin/sh

apk add git gcc build-base linux-headers

git clone https://github.com/lum-network/chain.git
cd chain
git checkout v1.3.1
BUILD_TAGS=muslc LINK_STATICALLY=true make build
