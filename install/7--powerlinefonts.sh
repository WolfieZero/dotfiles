#!/usr/bin/env bash
# ==============================================================================
# Install Powerline Fonts
# ==============================================================================


git clone https://github.com/powerline/fonts.git ~/dotfiles/powerline-fonts
cd ~/dotfiles/powerline-fonts
./install.sh
cd ..
rm -rf powerline-fonts
cd ~
