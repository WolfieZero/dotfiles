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
