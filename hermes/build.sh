#!/bin/sh

apk add git gcc build-base linux-headers

git clone https://github.com/informalsystems/hermes.git
cd hermes
git checkout v1.5.0

rustup target add x86_64-unknown-linux-musl

CARGO_NET_GIT_FETCH_WITH_CLI=true cargo install --target=x86_64-unknown-linux-musl ibc-relayer-cli --bin hermes --locked
