#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing homebrew packages..."

# taps
brew tap homebrew/php

# cli tools
brew install tree
brew install wget

# development server setup
brew install nginx
brew install dnsmasq

# development tools
brew install git
brew install hub
brew install macvim --override-system-vim
brew install reattach-to-user-namespace
brew install tmux
brew install zsh
brew install highlight
brew install nvm
brew install z
brew install markdown
brew install php56 php56-mcrypt php56-xdebug

# install neovim
brew install neovim/neovim/neovim

exit 0
