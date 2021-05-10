#!/usr/bin/env bash

sh ./_config.sh

browsers=(
  browserosaurus
  google-chrome
  firefox
)

brew_install_multiple "${browsers[@]}"
