#!/usr/bin/env python
from sys import exit
try:
    import venv
    print("Python module venv is installed.")
    exit(0)
except ModuleNotFoundError as err:
    print("Python module venv is not installed.")
    exit(1)
