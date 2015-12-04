#!/bin/bash

DOTFILES=${HOME}/dotfiles

# Start of notice
function notice_start () {
    echo -e "\033[0;35m"
}

# End of notice
function notice_end_header () {
    echo "================================================================================"
    echo -e "\033[0m"
}

# End of notice
function notice_end () {
    echo "--------------------------------------------------------------------------------"
    echo -e "\033[0m"
}

notice_start
echo "================================================================================"
echo "Installing dotfiles"
notice_end_header

notice_start
echo 'Initializing submodule(s)'
notice_end

git submodule update --init --recursive

if [ "$(uname)" == "Darwin" ]; then

    notice_start
    echo 'Running on OSX'
    notice_end_header

    notice_start
    echo "Brewing all the things"
    notice_end
    source install/10-tools.sh

    notice_start
    echo "Updating OSX settings"
    notice_end
    source install/20-osx.sh
fi

notice_start
echo "Install composer"
notice_end_header
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

notice_start
echo "Config Vim setup"
notice_end_header
echo "Removing any existing VIM configs"
rm -rf ${HOME}/.vimrc
rm -rf ${HOME}/.vim
rm -rf ${DOTFILES}/vim/bundle
ln -s ${DOTFILES}/vimrc ${HOME}/.vimrc
ln -s ${DOTFILES}/vim ${HOME}/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ${DOTFILES}/vim/bundle/Vundle.vim
vim +PluginInstall +qall

cd ${DOTFILES}/vim/at

notice_start
echo "Configuring (oh my) zsh as default shell"
notice_end_header
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
ln -s ${DOTFILES}/oh-my-zsh/zshrc ${HOME}/.zshrc

echo ""
echo ""
echo ""
echo "Done."
echo ""
