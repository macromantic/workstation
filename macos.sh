#!/usr/bin/env bash

brew install python python3 ansible
ansible-playbook -i inventory playbooks/macos.yml \
    --extra-vars "owner_group=staff"
