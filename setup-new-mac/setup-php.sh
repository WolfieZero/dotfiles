#!/usr/bin/env bash

# Setup PHP
# ------------------------------------------------------------------------------

apps=(
  php@7.4
  virtualbox
  vagrant
  # openssl
)

brew_install_multiple "${apps[@]}"

vagrant plugin install vagrant-hostmanager

# rm -f ~/.php_cs
# ln -s ~/dotfiles/.php_cs ~/.php_cs

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install Composer packages
composer global require "squizlabs/php_codesniffer=*"

echo 'App Store Installables'
echo '----------------------'
echo ' - Affinity Photo'
echo ' - Affinity Designer'
