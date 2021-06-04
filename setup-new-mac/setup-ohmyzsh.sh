#!/usr/bin/env bash

# Set Oh My ZSH
# ------------------------------------------------------------------------------

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm -f ~/.zshrc
ln -s ~/dotfiles/oh-my-zsh/zshrc ~/.zshrc

source ${HOME}/.zshrc
