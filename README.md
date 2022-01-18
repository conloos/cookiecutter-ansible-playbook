# cookiecutter-ansible-playbook

A [cookiecutter](https://cookiecutter.readthedocs.io/en/latest/) template for:
- create Ansible playbook repos and
- optionaly install environment.

# Dependencies

You have to install a lot of packages first:
  * python
  * python venv module
  * pip
  * git
Without them the using of that cookiecutter will fail.

## Usage

    $ cookiecutter gh:conloos/cookiecutter-ansible-playbook or
    $ cookiecutter https://gitlab.com/b3533/cookiecutter.git or 
    $ cookiecutter ~/path/to/template

and anwer the questions

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

