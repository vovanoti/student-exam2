#!/bin/bash

python3 -m venv venv && . venv/bin/activate && pip install -e && coverage run -m pytest && coverage report 
