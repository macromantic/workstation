#!/usr/bin/env bash

ansible-playbook -i inventory playbooks/googlecloud.yml
$HOME/Downloads/google-cloud-sdk/install.sh
$HOME/Downloads/google-cloud-sdk/bin/gcloud init
