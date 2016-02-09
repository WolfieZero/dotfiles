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
brew install php70 --with-mysql
brew install php70-mcrypt #php70-xdebug

# for php70
mkdir -p ~/Library/LaunchAgents
cp /usr/local/opt/php70/homebrew.mxcl.php70.plist ~/Library/LaunchAgents/
launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php70.plist
ln -sfv /usr/local/opt/php70/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.php70.plist

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


#echo ""
#echo "Install php-fmt"
#git clone https://github.com/phpfmt/fmt.git $HOME/dotfiles/bin/fmt
#ln -s ${HOME}/dotfiles/bin/fmt/fmt.phar /usr/local/bin/fmt.phar
