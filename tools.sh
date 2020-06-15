#!/usr/bin/env bash

TF_VERSION='0.12.26'

echo "Installing Terraform $TF_VERSION"
tfenv install "$TF_VERSION"
tfenv use "$TF_VERSION"

