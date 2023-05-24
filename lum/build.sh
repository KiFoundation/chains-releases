#!/bin/sh

apk add git gcc build-base linux-headers

git clone https://github.com/lum-network/chain.git
cd chain
git checkout v1.4.0
BUILD_TAGS=muslc LINK_STATICALLY=true make install
