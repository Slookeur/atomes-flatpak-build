#!/bin/bash

# Pre-requisites
# sudo dnf install flatpak-builder
# flatpak install org.freedesktop.Sdk/x86_64/22.08
# flatpak install org.freedesktop.Platform/x86_64/22.08

if [ ! -d .git ]; then
  git init
fi
# Next line to add the shared modules repo to use glu 
git submodule add https://github.com/flathub/shared-modules.git

flatpak-builder atomes org.flatpak.atomes.yml --force-clean
# To use the flatpak:
# 0) Uninstall previous version
# flatpak uninstall org.flatpak.atomes
# 1) Install latest version
#   1-1) If in the flatpak repo:
#     flatpak install org.flatpak.atomes
#   1-2) If not in the flatpak repo:
#     flatpak-builder --user --install --force-clean atomes org.flatpak.atomes.yml
# 2) Run flatpak
# flatpak run --socket=session-bus --nosocket=fallback-x11 --socket=x11 org.flatpak.atomes
