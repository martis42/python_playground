#!/usr/bin/env sh

# add both directories containing packages of the "my_namespace" namespace
export PYTHONPATH="root1:root2:root3"

python3 -B load_modules.py
