# {{cookiecutter.playbook_name}}

{{cookiecutter.description}}

## Using this Cookiecutter Template
The repo is ready to go for development after answering the cookiecutter questions.

By default, a python virtual environment is created in the ".venv" directory and Ansible is allready installed. 
To activate the virtual environment use:
    $ source .venv/bin/activate 

A vault has been created with the password requested during initialization and is located at:
    group_vars/default.vault

Have a lot of Fun!

## Requirements

Your need install:
  * python
  * venv (python-venv in debian)
  * pip
  * git

## Facts

The following directory was created for facts that are to be transferred and executed on the target host:
    facts.d/

## Variables & Defaults

See [`group_vars/default.vault`](group_vars/default.vault) by "ansible-vault edit group_vars/default.vault".
See [`group_vars/all.yml`](group_vars/all.yml) for more information.

## Usage

Provide an example of the playbook in action.

## Dependencies

List any roles which this playbook depends on.
Briefly explain why if not self-evident.

## Scope
[{{cookiecutter.scope}}](LICENSE)

## Authors
[{{cookiecutter.author}}]({{cookiecutter.repo_server}}/{{cookiecutter.author_at_repo_server}})
