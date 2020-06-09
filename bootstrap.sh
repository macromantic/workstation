#!/usr/bin/env bash

sudo apt install build-essential python python3 ansible puppet -y
ansible-playbook -i inventory playbooks/bootstrap.yml
$HOME/Downloads/google-cloud-sdk/install.sh
$HOME/Downloads/google-cloud-sdk/bin/gcloud init


