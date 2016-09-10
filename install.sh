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
echo 'Running on OSX'
notice_end_header

notice_start
echo "Brewing"
notice_end
source install/brew.sh

notice_start
echo "Node-ing"
notice_end
source install/node.sh

notice_start
echo "Grabbing some Ruby(s)"
notice_end
source install/ruby.sh

notice_start
echo "Pumping in some casks"
notice_end
source install/cask.sh

notice_start
echo "Updating OSX settings"
notice_end
source install/osx.sh

notice_start
echo "Install powerline fonts"
notice_end
git clone https://github.com/powerline/fonts.git $HOME/dotfiles/powerline-fonts
cd $HOME/dotfiles/powerline-fonts
./install.sh
cd ..
rm -rf powerline-fonts
cd ${HOME}

notice_start
echo "Symlink files & folders"
notice_end
rm -f ${HOME}/.jscsrc
rm -f ${HOME}/.jshintrc
ln -s ${HOME}/dotfiles/jscsrc ${HOME}/.jscsrc
ln -s ${HOME}/dotfiles/jshintrc ${HOME}/.jshintrc

notice_start
echo "Install composer"
notice_end
source install/composer.sh

notice_start
echo "Install vim"
notice_end
source install/vim.sh

notice_start
echo "Setup Oh My ZSH"
notice_end
source install/oh-my-zsh.sh

echo "Done."
