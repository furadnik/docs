#!/usr/bin/bash

git clone https://github.com/DLR-RM/stable-baselines3.git
cd stable-baselines3/docs
python -m venv venv
source venv/bin/activate
pip install '../.[docs]'
make html SPHINXOPTS="" 
pip install doc2dash
doc2dash -j -I index.html -u https://stable-baselines3.readthedocs.io/en/master/ -n "Stable_Baselines3" -d ../../build _build/html
cd ../..
rm -rf stable-baselines3
