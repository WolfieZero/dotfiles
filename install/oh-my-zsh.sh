#!/bin/bash

notice_start
echo "Configuring (oh my) zsh as default shell"
notice_end_header
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
rm -f ${HOME}/.zshrc
ln -s ${HOME}/dotfiles/oh-my-zsh/zshrc ${HOME}/.zshrc
