#!/usr/bin/env bash

# Setup Node
# ------------------------------------------------------------------------------

# Install NVM
brew install nvm

# Install LTS version of Node
nvm install --lts

# Set it as default
nvm alias default node
