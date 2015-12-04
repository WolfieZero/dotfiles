#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# taps
brew tap homebrew/php
brew tap neovim/neovim

# cli tools
brew install tree
brew install wget

# install powerline fonts
brew install python
pip install --user powerline-status

# development tools
brew install node
brew install python
brew install git
brew install hub
brew install macvim --env-std --override-system-vim
brew install neovim
brew install reattach-to-user-namespace
brew install tmux
brew install zsh
brew install highlight
brew install markdown
brew install php56 php56-mcrypt php56-xdebug

# apps
brew install caskroom/cask/brew-cask

# server type stuff
brew install dnsmasq

# link dnsmasq config into place
ln -s $DOTFILES/hosts/dnsmasq.conf /usr/local/etc/

# setup dnsmasq
sudo cp -fv /usr/local/opt/dnsmasq/homebrew.mxcl.dnsmasq.plist /Library/LaunchDaemons
sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.dnsmasq
