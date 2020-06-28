#!/usr/bin/env bash

SUBLIMETEXT_PACKAGES="$HOME/.config/sublime-text-3/Packages"
echo "Configuring Sublime Text Settings"
currentdir=$(pwd)
cd $SUBLIMETEXT_PACKAGES
rm -r User
git clone https://github.com/macromantic/sublime-settings
mv sublime-settings User
cd $currentdir

