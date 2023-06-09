#!/bin/sh

apk add git gcc build-base linux-headers

git clone https://github.com/crescent-network/crescent.git
cd crescent
git checkout v4.2.0
BUILD_TAGS=muslc LDFLAGS='-linkmode=external -extldflags "-Wl,-z,muldefs -static"' make build
