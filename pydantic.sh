#!/usr/bin/bash

git clone https://github.com/pydantic/pydantic
cd pydantic
python -m venv venv
source venv/bin/activate
pip install pdm
pdm update -dG test
make docs
pip install doc2dash
doc2dash -j -I index.html -u https://sb3-contrib.readthedocs.io/en/master/ -n "Pydantic" -d ../build site

cd ..
rm -rf pydantic
