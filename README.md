# cookiecutter-ansible-playbook

A [cookiecutter](https://cookiecutter.readthedocs.io/en/latest/) template for:
- create Ansible playbook repos and
- optionaly install environment.

## Usage

    $ cookiecutter gh:conloos/cookiecutter-ansible-playbook
    year [2022]:
    playbook_name [Do_magic_by_ansible]:
    author [J. Doe]:
    email [john@doe.com]:
    author_at_repo_server [jdoe]:
    repo_server [https://gitlab.com]:
    company [My IT company]:
    description [This playbook does magic on the network.]:
    vault_pass [Password for the Ansible vault]:
    Scope:
    1 - personally
    2 - internal
    3 - company
    4 - other
    Choose from 1, 2, 3, 4 [1]:

This does *not* use the Ansible provisioner as it's not usable on all Windows hosts.
While most Windows hosts can be *managed* by Ansible, it is not possible (or at least not feasible) to install Ansible tools themselves on Windows hosts. 

