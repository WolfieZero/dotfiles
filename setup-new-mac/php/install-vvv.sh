#!/usr/bin/env bash

# Install VVV
# ------------------------------------------------------------------------------

git clone -b stable https://github.com/Varying-Vagrant-Vagrants/VVV.git ~/vvv-local
cd ~/vvv-local
vagrant plugin install --local
