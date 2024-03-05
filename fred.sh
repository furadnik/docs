#!/usr/bin/bash

git clone https://gitlab.nic.cz/fred/docs fred-docs
cd fred-docs
python -m venv venv
source venv/bin/activate
pip install sphinx sphinx-autobuild sphinx_rtd_theme
make html
pip install doc2dash
doc2dash -j -I index.html -u https://python-prompt-toolkit.readthedocs.io/en/master/ -d ../../build _build/html
cd ../..
rm -rf python-prompt-toolkit
