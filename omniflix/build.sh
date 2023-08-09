#!/bin/sh

apk add git gcc build-base linux-headers

git clone https://github.com/OmniFlix/omniflixhub.git
cd omniflixhub
git checkout v0.12.0
BUILD_TAGS=muslc LDFLAGS='-linkmode=external -extldflags "-Wl,-z,muldefs -static"' make build
