#!/usr/bin/env bash

# Check if all required programs are installed.
# python
if ! [ -x "$(command -v python)" ]; then
  echo 'Error: Python is not installed.' >&2
  exit 1
fi

# python-venv
if ! [ -x "$(command -v python ./check_python3_venv-module.py)" ]; then
  echo 'Error: The Python module venv is not installed.' >&2
  exit 1
fi

# python-pip
if ! [ -x "$(command -v pip)" ]; then
  echo 'Error: Python pip is not installed.' >&2
  exit 1
fi

# git
if ! [ -x "$(command -v git)" ]; then
  echo 'Error: Git is not installed.' >&2
  exit 1
fi