#!/bin/bash

notice_start
echo "Config Vim setup"
notice_end_header

echo "Removing any existing Vim configs"
rm -rf ${HOME}/.vim
rm -rf ${HOME}/.vimrc
rm -rf ${HOME}/.gvimrc
rm -rf ${HOME}/dotfiles/vim/bundle

echo "Link Vim configs to dotfiles"
ln -s ${HOME}/dotfiles/vim ${HOME}/.vim # vim folder
ln -s ${HOME}/dotfiles/vim/.vimrc ${HOME}/.vimrc # vim file
ln -s ${HOME}/dotfiles/vim/.gvimrc ${HOME}/.gvimrc # vim file

echo "Remove Neovim configs"
#rm -rf ${HOME}/.config/nvim

echo "Make the config directory"
mkdir ${HOME}/.config

#echo "Link Neovim to Vim configs"
#ln -s ${HOME}/dotfiles/vim ${HOME}/.config/nvim # vim folder
#ln -s ${HOME}/dotfiles/vim/.vimrc ${HOME}/dotfiles/vim/init.vim # vim file

echo "Download and install bundles"
git clone https://github.com/VundleVim/Vundle.vim.git ${HOME}/dotfiles/vim/bundle/Vundle.vim
vim +PluginInstall +qall
