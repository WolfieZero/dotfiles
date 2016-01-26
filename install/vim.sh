#!/bin/bash

notice_start
echo "Config Vim setup"
notice_end_header

echo "Removing any existing Vim configs"
rm -rf ${HOME}/.vimrc
rm -rf ${HOME}/.vim
rm -rf ${HOME}/dotfiles/vim/bundle

echo "Link Vim configs to dotfiles"
ln -s ${HOME}/dotfiles/vimrc ${HOME}/.vimrc
ln -s ${HOME}/dotfiles/vim ${HOME}/.vim

echo "Remove Neovim configs"
rm -rf ${HOME}/.config/nvim

echo "Make the config directory"
mkdir ${HOME}/.config

echo "Link Neovim to Vim configs"
ln -s ${HOME}/dotfiles/vim ${HOME}/.config/nvim
ln -s ${HOME}/dotfiles/vimrc ${HOME}/dotfiles/vim/init.vim

echo "Download and install bundles"
git clone https://github.com/VundleVim/Vundle.vim.git ${HOME}/dotfiles/vim/bundle/Vundle.vim
vim +PluginInstall +qall
