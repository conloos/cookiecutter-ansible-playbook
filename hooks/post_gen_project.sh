#!/usr/bin/env bash

# create venv
/usr/bin/env python -m venv .venv
if [ $? -ne 0 ]; then
  echo 'Error: The venv could not be created .' >&2
  exit 1
fi


# activate venv
# pip install
#   * ansible
#   * ansible-lint
#   * bumpversion
#   * pre-commit
source .venv/bin/activate
pip install wheel ansible ansible-lint bumpversion pre-commit
if [ $? -ne 0 ]; then
  echo 'Error: The activation of the venv or dependency installation failed  .' >&2
  exit 1
fi

# encrypt group_vars/default.vault
# && ansible-vault encrypt --vault-password-file .ansible_vault_pass group_vars/default.vault && rm .ansible_vault_pass
ansible-vault encrypt --vault-password-file .ansible_vault_pass group_vars/default.vault && rm .ansible_vault_pass
if [ $? -ne 0 ]; then
  echo 'Error: The default.vault could not be encrypted WHATCH OUT YOUR PW IS VISIBLE AT .ansible_vault_pass' >&2
  exit 1
fi

# init git
git init && git branch -m main
if [ $? -ne 0 ]; then
  echo 'Error: init git' >&2
  exit 1
fi

#set user and email
source .git_config.temp
git config user.name $temp_git_username
git config user.email $temp_git_user_email

#remove .git_config.tmp
rm .git_config.temp
if [ $? -ne 0 ]; then
  echo 'Error: Deleting Temp Files' >&2
  exit 1
fi

#create initial git commit
git add * && git commit -m "init"
if [ $? -ne 0 ]; then
  echo 'Error: Git creating first commit.' >&2
  exit 1
fi

# install pre-commit
pre-commit install
if [ $? -ne 0 ]; then
  echo 'Error: install pre-commit' >&2
  exit 1
fi