#!/usr/bin/env bash
# ==============================================================================
# Symlinks
# ==============================================================================

rm -f ${HOME}/.jscsrc
rm -f ${HOME}/.jshintrc
ln -s ${HOME}/dotfiles/jscsrc ${HOME}/.jscsrc
ln -s ${HOME}/dotfiles/jshintrc ${HOME}/.jshintrc
