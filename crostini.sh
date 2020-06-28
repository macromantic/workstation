#!/usr/bin/env bash

sudo apt install build-essential python python3 ansible puppet -y
ansible-playbook -i inventory playbooks/crostini.yml \
    --extra-vars "owner_group={{ ansible_user }}"

