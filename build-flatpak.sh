#!/bin/bash

if [ ! -d .git ]; then
  git init
fi
# Next line to add the shared modules repo to use glu 
git submodule add https://github.com/flathub/shared-modules.git

flatpak-builder atomes org.flatpak.atomes.yml --force-clean
#flatpak-builder --user --install --force-clean atomes org.flatpak.atomes.yml
#flatpak run org.flatpak.atomes
