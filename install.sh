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
    echo "Tooling all the things"
    notice_end
    source install/tools.sh

    notice_start
    echo "Updating OSX settings"
    notice_end
    source install/osx.sh

    notice_start
    echo "Symlink JS config files"
    notice_end
    ln -s ${HOME}/dotfiles/jscsrc ${HOME}/.jscsrc
    ln -s ${HOME}/dotfiles/jshintrc ${HOME}/.jshintrc

fi

notice_start
echo "Install composer"
notice_end_header
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
composer global require fabpot/php-cs-fixer
composer global require laravel/installer
composer global require laravel/spark-installer
composer global require laravel/lumen-installer
composer global require hirak/prestissimo
composer global require phpfmt/fmt

source install/vim.sh

source install/oh-my-zsh.sh

echo ""
echo ""
echo ""
echo "Done."
echo ""
