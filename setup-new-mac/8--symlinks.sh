#!/usr/bin/env bash
# ==============================================================================
# Symlinks
# ==============================================================================

rm -f ${HOME}/.ssh
ln -s ${HOME}/Dropbox/syslocal/ssh ${HOME}/.ssh

rm -f ${HOME}/.php_cs
ln -s ${HOME}/dotfiles/.php_cs ${HOME}/.php_cs

rm -f ${HOME}/.jscsrc
ln -s ${HOME}/dotfiles/.jscsrc ${HOME}/.jscsrc

rm -f ${HOME}/.jshintrc
ln -s ${HOME}/dotfiles/.jshintrc ${HOME}/.jshintrc

rm -f ${HOME}/.gitconfig
ln -s ${HOME}/dotfiles/git/gitconfig ${HOME}/.gitconfig

rm -f ${HOME}/.gitignore
ln -s ${HOME}/dotfiles/git/gitignore ${HOME}/.gitignore
