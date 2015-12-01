#!/bin/bash

DOTFILES=${HOME}/dotfiles

echo "Installing dotfiles"

echo "Initializing submodule(s)"
git submodule update --init --recursive

source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
    echo "Running on OSX"

    echo "Brewing all the things"
    source install/brew.sh

    echo "Updating OSX settings"
    source install/osx.sh

    echo "Installing node (from nvm)"
    source install/nvm.sh
fi

echo "Install composer"
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

echo "Config Vim setup"
ln -s ${DOTFILES}/vimrc ${HOME}/.vimrc

echo "Configuring (oh my) zsh as default shell"
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
ln -s ${DOTFILES}/oh-my-zsh/zshrc ${HOME}/.zshrc

echo "Done."
