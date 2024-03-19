#!/usr/bin/bash

git clone https://github.com/pallets/jinja
cd jinja/docs
python -m venv venv
source venv/bin/activate
pip install -r ../requirements/docs.txt
pip install ../.
make html
pip install doc2dash
doc2dash -j -I index.html -u https://jinja.palletsprojects.com/en/master/ -d ../../build _build/html
cd ../..
rm -rf jinja
