#!/usr/bin/env bash

# Setup PHP
# ------------------------------------------------------------------------------

# brew install openssl

apps=(
  php@7.4
  php-cs-fixer
  virtualbox
  vagrant
)

brew_install_multiple "${apps[@]}"

vagrant plugin install vagrant-hostmanager

# rm -f ~/.php_cs
# ln -s ~/dotfiles/.php_cs ~/.php_cs

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
