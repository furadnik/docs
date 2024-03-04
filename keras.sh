#!/usr/bin/bash
# TODO: implement later.

git clone --depth 1 git@github.com:keras-team/keras-io.git
cd keras-io

python -m venv venv
source venv/bin/activate

pip install -r requirements.txt
# Update Keras version to 3
pip install keras
cd scripts
python autogen.py make

pip install doc2dash



# rm -r keras-io
