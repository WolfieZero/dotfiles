#!/usr/bin/env bash
# ==============================================================================
# Install apps via Cask
# ==============================================================================


# Install native apps
# ==============================================================================

brew tap caskroom/cask


# Set install into Applications directory
# ==============================================================================

export HOMEBREW_CASK_OPTS="--appdir=/Applications"


# Personal
# ==============================================================================

brew cask install the-unarchiver
brew cask install google-chrome
brew cask install appcleaner
brew cask install cheatsheet
brew cask install 1password
brew cask install ubersicht
brew cask install caffeine
brew cask install skyfonts
brew cask install transmit
brew cask install dropbox
brew cask install macdown
brew cask install nimble
brew cask install skitch
brew cask install fluid
brew cask install franz
brew cask install numi
brew cask install seil
brew cask install vlc


# Dev
# ==============================================================================

brew cask install vagrant-manager
brew cask install github-desktop
brew cask install imagealpha
brew cask install imageoptim
brew cask install virtualbox
brew cask install sequel-pro
brew cask install postman
brew cask install vagrant
brew cask install iterm2
brew cask install atom


# Gaming
# ==============================================================================

brew cask install openemu
brew cask install gzdoom
brew cask install steam


# Quick look plugins
# ==============================================================================

brew caks install 'quicklook-json'
brew caks install 'qlmarkdown'
brew caks install 'quicklook-csv'
brew caks install 'betterzipql'


## Tidy up
# ==============================================================================

brew cleanup
