#!/usr/bin/env bash

# Install Homestead
# ------------------------------------------------------------------------------

git clonee -b release  https://github.com/laravel/homestead.git ~/Homestead
cd ~/Homestead
bash init.sh
