#!/bin/bash

# Setup Vim
# ==============================================================================

# Removing any existing Vim configs and update

rm -rf ${HOME}/.vim
ln -s ${HOME}/dotfiles/.vim ${HOME}/.vim

rm -rf ${HOME}/.vimrc
ln -s ${HOME}/dotfiles/.vimrc ${HOME}/.vimrc

rm -rf ${HOME}/.gvimrc
ln -s ${HOME}/dotfiles/.gvimrc ${HOME}/.gvimrc

rm -rf ${HOME}/dotfiles/vim/bundle