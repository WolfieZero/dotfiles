#!/usr/bin/env bash

# Install CLI Tools
# ------------------------------------------------------------------------------

source ~/dotfiles/setup-new-mac/_config.sh

tools=(
  imagemagick
  exa
)

brew_install_multiple "${tools[@]}"
