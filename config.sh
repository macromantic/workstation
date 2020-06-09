#!/usr/bin/env bash

SUBLIMETEXT_LOCAL="$HOME/.config/sublime-text-3/Local"
SUBLIMEMERGE_LOCAL="$HOME/.config/sublime-merge/Local"
LICENSE_FILE="License.sublime_license"

gcloud secrets versions access \
 "latest" --secret=sublime-text-license >"$SUBLIMETEXT_LOCAL/$LICENSE_FILE"
gcloud secrets versions access \
 "latest" --secret=sublime-merge-license >"$SUBLIMEMERGE_LOCAL/$LICENSE_FILE"

