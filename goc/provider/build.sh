#!/bin/sh

apk add git gcc build-base linux-headers

git clone https://github.com/smarshall-spitzbart/gaia.git
cd gaia
git checkout glnro/ics-sdk45
BUILD_TAGS=muslc LDFLAGS='-linkmode=external -extldflags "-Wl,-z,muldefs -static"' make build
