#!/bin/bash

python3 -m venv venv && . venv/bin/activate && pip install -e . 
#&& pip install -e '.[test]' && coverage run -m pytest && coverage report
