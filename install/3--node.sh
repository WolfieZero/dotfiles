#!/usr/bin/env bash
# ==============================================================================
# Install Node and Packages
# ==============================================================================


# Install NVM
# ==============================================================================

if test ! $(which nvm); then
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
fi


# Install LTS version of Node and set it as default
# ==============================================================================

nvm install --lts
nvm alias default node


# Install packages
# ==============================================================================

npm install -g npm-check-updates
npm install -g react-native-cli
npm install -g browser-sync
npm install -g npm-cache
npm install -g grunt-cli
npm install -g gulp-cli
npm install -g cordova
npm install -g eslint
npm install -g bower
