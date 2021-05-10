#!/usr/bin/env bash

# Where `brew cask` apps should install to
export HOMEBREW_CASK_OPTS="--appdir=/Applications"


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


# `brew cask install` shortcut
brew_cask_install_multiple () {
  apps="${1}"
  shift
  for app in ${apps[*]}
  do
    brew cask install $app
  done
}
