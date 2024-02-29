#!/usr/bin/bash

git clone https://github.com/prompt-toolkit/python-prompt-toolkit
cd python-prompt-toolkit/docs
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
pip install ../.
make html
pip install doc2dash
doc2dash -j -I index.html -u https://python-prompt-toolkit.readthedocs.io/en/master/ -d ../../build _build/html
cd ../..
rm -rf python-prompt-toolkit
