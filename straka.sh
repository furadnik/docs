#!/usr/bin/bash

mkdir tmp
cd tmp
curl -L https://redmine.ms.mff.cuni.cz/projects/straka/repository/straka-tf-zeal-docs/revisions/master/raw/docsets/${1}.docset.tar > user.tgz
tar -xzf user.tgz
rm user.tgz
mv *.docset ../build
cd ..
rm -rf tmp


