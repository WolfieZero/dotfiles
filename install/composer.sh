#!/usr/bin/env bash

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Quicker composer installs
composer global require hirak/prestissimo

composer global require laravel/installer
composer global require laravel/lumen-installer
