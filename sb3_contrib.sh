#!/usr/bin/bash

git clone https://github.com/Stable-Baselines-Team/stable-baselines3-contrib
cd stable-baselines3-contrib/docs
python -m venv venv
source venv/bin/activate
pip install ../. sphinx sphinx-autobuild sphinx_rtd_theme
make html SPHINXOPTS="" 
pip install doc2dash
doc2dash -j -I index.html -u https://sb3-contrib.readthedocs.io/en/master/ -n "SB3 Contrib" -d ../../build _build/html
cd ../..
rm -rf stable-baselines3-contrib
