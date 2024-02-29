#!/usr/bin/bash

cargo install cargo-docset
mkdir tmp
cd tmp
git clone ${1} $2
cd $2
cargo doc --no-deps -p $2
cargo docset --docset-name $2
cp -r target/docset/*.docset ../../build
cd ../..
rm -rf tmp

