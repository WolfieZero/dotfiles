#!/usr/bin/env bash

# Install Dev Tools
# ------------------------------------------------------------------------------

sh ./_config.sh

apps=(
  cyberduck           # ftp tool
  docker              # development environments
  fork                # git mananger
  integrity           # website link checker
  runjs               # js tool
  postman             # api tool
  visual-studio-code  # code editor
)

brew_install_multiple "${apps[@]}"
