#!/usr/bin/env bash

# Install Dev Tools
# ------------------------------------------------------------------------------

source ~/dotfiles/setup-new-mac/_config.sh

apps=(
  git                   # override mac's
  cyberduck             # ftp tool
  iterm2                # terminal
  imagealpha               # optimise transparent pngs
  imageoptim               # images
  # homebrew/cask/docker  # development environments
  fork                  # git mananger
  integrity             # website link checker
  runjs                 # js tool
  postman               # api tool
  visual-studio-code    # code editor

  # Database
  sequel-ace            # mysql/mariadb tool
  # sqlectron             # generic db tool

  #Browser
  browserosaurus           # browser picker
  firefox-developer-edition
  # homebrew/cask-versions/google-chrome-dev
  google-chrome

  # Design
  figma

)

brew_install_multiple "${apps[@]}"
