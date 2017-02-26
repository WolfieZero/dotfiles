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
brew cask install appcleaner
brew cask install cheatsheet
brew cask install ubersicht
#brew cask install caffeine
brew cask install skyfonts
#brew cask install dropbox
brew cask install macdown
#brew cask install nimble
#brew cask install fluid
brew cask install franz
#brew cask install numi
brew cask install vlc


# Dev
# ==============================================================================

brew cask install visual-studio-code
#brew cask install vagrant-manager
brew cask install sourcetree
brew cask install imagealpha
brew cask install imageoptim
brew cask install virtualbox
#brew cask install sequel-pro
brew cask install transmit
brew cask install postman
brew cask install vagrant
brew cask install iterm2


# Quick look plugins
# ==============================================================================

brew cask install 'quicklook-json'
brew cask install 'qlmarkdown'
brew cask install 'quicklook-csv'
brew cask install 'betterzipql'


## Tidy up
# ==============================================================================

brew cleanup
