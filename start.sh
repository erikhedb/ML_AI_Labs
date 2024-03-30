#!/bin/sh
git pull
cd labs
source ./venv/bin/activate
jupyter lab
