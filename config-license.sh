#!/usr/bin/env bash

set -e

SUBLIMETEXT_PACKAGES="$HOME/.config/sublime-text-3/Packages"
SUBLIMETEXT_LOCAL="$HOME/.config/sublime-text-3/Local"
SUBLIMEMERGE_LOCAL="$HOME/.config/sublime-merge/Local"
LICENSE_FILE="License.sublime_license"

echo "Configuring Sublime Text License"
gcloud secrets versions access \
    "latest" --secret=sublime-text-license >"$SUBLIMETEXT_LOCAL/$LICENSE_FILE"
echo "Configuring Sublime Merge License"
gcloud secrets versions access \
    "latest" --secret=sublime-merge-license >"$SUBLIMEMERGE_LOCAL/$LICENSE_FILE"
echo "Configuring Sublime Text Settings"
currentdir=$(pwd)
cd $SUBLIMETEXT_PACKAGES
rm -r User
git clone https://github.com/macromantic/sublime-settings
mv sublime-settings User
cd $currentdir
