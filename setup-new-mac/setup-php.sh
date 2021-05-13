#!/usr/bin/env bash

# Setup PHP
# ------------------------------------------------------------------------------

brew install php
brew install brew-php-switcher
brew install php-cs-fixer

rm -f ~/.php_cs
ln -s ~/dotfiles/.php_cs ~/.php_cs

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
