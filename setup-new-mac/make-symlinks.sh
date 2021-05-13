#!/usr/bin/env bash

# Symlinks
# ------------------------------------------------------------------------------

rm -f ~/.ssh
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/System/ssh ~/.ssh

rm -f ~/.gitconfig
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

rm -f ~/.gitignore
ln -s ~/dotfiles/git/gitignore ~/.gitignore
