#!/usr/bin/env bash

# Install Dev Tools
# ------------------------------------------------------------------------------

source ~/dotfiles/setup-new-mac/_config.sh

apps=(
  git                   # override mac's
  cyberduck             # ftp tool
  homebrew/cask/docker  # development environments
  fork                  # git mananger
  integrity             # website link checker
  runjs                 # js tool
  postman               # api tool
  visual-studio-code    # code editor
  sequel-ace            # mysql/mariadb tool
  # sqlectron             # generic db tool
)

brew_install_multiple "${apps[@]}"
