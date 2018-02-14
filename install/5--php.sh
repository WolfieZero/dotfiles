#!/usr/bin/env bash
# ==============================================================================
# Composer
# ==============================================================================


# Install
# ==============================================================================

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer


# Quicker composer installs
# ==============================================================================

# composer global require hirak/prestissimo


# Install PHP 7.1 locally
# ==============================================================================

 brew install homebrew/php/php71
 brew install php71-xdebug php71-opcache

# FOR XDEBUG
# Run `php --ini` and check for the file
# - /usr/local/etc/php/7.1/conf.d/ext-xdebug.ini
# Add the following to that file
# ```
# xdebug.remote_enable=true
# xdebug.remote_host=localhost
# xdebug.remote_port=9000
# xdebug.remote_handler=dbgp
# ```


# Composer packages
# ==============================================================================

composer global require friendsofphp/php-cs-fixer
composer global require laravel/installer
composer global require laravel/valet


# Setup Valet / localhost env
# ==============================================================================
# https://laravel.com/docs/valet

valet install
valet domain localhost
brew install mysql
brew services start mysql
