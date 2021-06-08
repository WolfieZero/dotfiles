#!/usr/bin/env bash

# Install CLI Tools
# ------------------------------------------------------------------------------

source ~/dotfiles/setup-new-mac/_config.sh

tools=(
  htop         # terminal system monitor
  imagemagick  #
  exa          #
)

brew_install_multiple "${tools[@]}"
