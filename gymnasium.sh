#!/usr/bin/bash

git clone https://github.com/Farama-Foundation/Gymnasium.git
cd Gymnasium/docs
python -m venv venv
source venv/bin/activate
pip install gymnasium
pip install -r requirements.txt
ls
make dirhtml
pip install doc2dash
doc2dash -j -I index.html -u https://gymnasium.farama.org/ -n Gymnasium -d ../../build _build/dirhtml
cd ../..
rm -rf Gymnasium
