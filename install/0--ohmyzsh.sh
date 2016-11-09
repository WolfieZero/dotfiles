#!/usr/bin/env bash
# ==============================================================================
# Install Oh My ZSH
# ==============================================================================


sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

rm -f ~/.zshrc
ln -s ~/dotfiles/oh-my-zsh/zshrc ~/.zshrc

source ${HOME}/.zshrc
