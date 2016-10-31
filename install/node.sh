#!/usr/bin/env bash

# Install NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash

nvm install node

npm config set prefix '~/.npm-packages'

npm install -g npm-check-updates
npm install -g react-native-cli
npm install -g browser-sync
npm install -g npm-cache
npm install -g grunt-cli
npm install -g gulp-cli
npm install -g cordova
npm install -g bower
