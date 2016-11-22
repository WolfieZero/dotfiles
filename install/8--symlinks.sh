#!/usr/bin/env bash
# ==============================================================================
# Symlinks
# ==============================================================================

rm -f ${HOME}/.ssh
rm -f ${HOME}/.jscsrc
rm -f ${HOME}/.jshintrc
ln -s ${HOME}/Dropbox/syslocal/ssh ${HOME}/.ssh
ln -s ${HOME}/dotfiles/jscsrc ${HOME}/.jscsrc
ln -s ${HOME}/dotfiles/jshintrc ${HOME}/.jshintrc
