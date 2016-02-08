#!/bin/sh

if test ! $(which brew); then
    echo ""
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo ""
echo "Tapping brews"
brew tap homebrew/php
brew tap neovim/neovim

echo ""
echo "Installing cli tools"
brew install tree
brew install wget

echo ""
echo "Installing development tools"
brew install node
brew install python
brew linkapps python
pip install --upgrade pip setuptools
brew install git
brew install hub
brew install macvim --env-std --override-system-vim
brew install reattach-to-user-namespace
brew install tmux
brew install zsh
brew install highlight
brew install markdown
brew install php56 --with-mysql
brew install php56-mcrypt php56-xdebug

echo ""
echo "Installing app (and tapping)"
brew install caskroom/cask/brew-cask

echo ""
echo "Installing powerline fonts"
git clone https://github.com/powerline/fonts.git $HOME/dotfiles/powerline-fonts
cd $HOME/dotfiles/powerline-fonts
./install.sh
cd ..
rm -rf powerline-fonts
