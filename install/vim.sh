#!/bin/bash
# ==============================================================================
# Setup Vim
# ==============================================================================


brew install macvim
brew install vim


# Removing any existing Vim configs
# ==============================================================================

rm -rf ${HOME}/.vim
rm -rf ${HOME}/.vimrc
rm -rf ${HOME}/.gvimrc
rm -rf ${HOME}/dotfiles/.vim/bundle


# Link Vim configs to dotfiles
# ==============================================================================

ln -s ${HOME}/dotfiles/.vim ${HOME}/.vim # vim folder
ln -s ${HOME}/dotfiles/.vimrc ${HOME}/.vimrc # vim file
ln -s ${HOME}/dotfiles/.gvimrc ${HOME}/.gvimrc # vim file


# Download and install bundles
# ==============================================================================

git clone https://github.com/VundleVim/Vundle.vim.git ${HOME}/dotfiles/vim/bundle/Vundle.vim
vim +PluginInstall +qall
