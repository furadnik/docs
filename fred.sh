#!/usr/bin/bash

git clone https://gitlab.nic.cz/fred/docs fred-docs
cd fred-docs
python -m venv venv
source venv/bin/activate
pip install sphinx~=5.0 sphinx-autobuild sphinx_rtd_theme
make html
pip install doc2dash
doc2dash -j -I index.html -u https://fred.nic.cz/ -n FRED -d ../build _build/html
cd ../..
rm -rf fred-docs
