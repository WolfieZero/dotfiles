#!/usr/bin/env bash

# `brew install` shortcut
brew_install_multiple () {
  apps="${1}"
  shift
  for app in ${apps[*]}
  do
    brew install $app
  done
  brew cleanup
}
