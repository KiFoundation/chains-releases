#!/bin/sh

apk add git gcc build-base linux-headers

git clone https://github.com/cosmos/gaia.git
cd gaia
git checkout 2627f224c78010c1884f7e8da3d9ce0d5b54a812

BUILD_TAGS=muslc LDFLAGS='-linkmode=external -extldflags "-Wl,-z,muldefs -static"' make build
