#!/usr/bin/env bash

sudo apt install build-essential python python3 ansible puppet -y
ansible-playbook -i inventory playbooks/bootstrap.yml

