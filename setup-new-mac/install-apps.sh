#!/usr/bin/env bash

# Install apps
# ==============================================================================

sh ./_config.sh

apps=(
  appcleaner
  1password
  dropbox
  whatsapp
  spotify
  slack
  keka
)

brew_install_multiple "${apps[@]}"
