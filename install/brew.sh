#!/usr/bin/env bash

# Install homebrew
if test ! $(which brew); then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Tap installers
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap josegonzalez/homebrew-php

# Install GNU core utilities (those that come with OS X are outdated)
#brew install coreutils
#echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."

brew install macvim --env-std --override-system-vim
brew install imagemagick
brew install watchman
brew install rsync
brew install wget
brew install node
brew install tmux
brew install git
brew install vim
brew install zsh

# Install PHP with MariaDBbrew install homebrew/dupes/grep
brew install homebrew/dupes/grep
brew install mariadb
brew install php70 --with-mysql --without-apache --with-fpm
brew install php70-imagick php70-mcrypt php70-xdebug
brew install josegonzalez/php/composer

# Tidy it all up
brew cleanup
