#!/usr/bin/env bash

sudo /opt/puppetlabs/bin/puppet module install puppetlabs-stdlib
sudo rm -r manifests
mkdir manifests
cd manifests
git clone git@github.com:SergK/puppet-tfenv.git
cd puppet-tfenv

