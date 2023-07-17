#!/bin/sh

apk add git gcc build-base linux-headers

git clone https://github.com/Stride-Labs/stride.git
pwd
cd stride
git checkout v11.0.0
BUILD_TAGS=muslc LINK_STATICALLY=true make build
