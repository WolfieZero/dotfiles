#!/usr/bin/env bash

# Install homebrew
if test ! $(which brew); then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
#brew install coreutils
#echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."

brew install macvim --env-std --with-override-system-vim
brew install imagemagick
brew install watchman
brew install rsync
brew install wget
brew install tmux
brew install git
brew install vim
brew install zsh

# Install PHP with MariaDB
brew install homebrew/dupes/grep
brew install mariadb
brew install homebrew/php/php70 --with-mysql --without-apache --with-fpm
brew install homebrew/php/php70-imagick homebrew/php/php70-mcrypt homebrew/php/php70-xdebug

# Post-Install stuffs
brew services start mariadb

# Tidy it all up
brew cleanup
