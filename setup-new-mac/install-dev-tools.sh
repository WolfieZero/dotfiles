#!/usr/bin/env bash

# Setup Dev - General
# ==============================================================================

sh ./_config.sh

apps=(
  visual-studio-code
  postman
  iterm2
  fork
)

brew_install_multiple "${apps[@]}"
