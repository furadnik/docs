#!/usr/bin/bash

cargo install cargo-docset
mkdir tmp
cd tmp
git clone ${1} cloned
cd cloned
cargo doc --no-deps -p $2
cargo docset
cp -r target/docset/*.docset ../../build
cd ../..
rm -rf tmp

