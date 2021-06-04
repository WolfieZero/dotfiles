#!/usr/bin/env bash

# Install Apps
# ------------------------------------------------------------------------------

source ~/dotfiles/setup-new-mac/_config.sh

apps=(
  htop                     # terminal system monitor
  appcleaner               # removes apps
  dozer                    # tidy toolbar
  imagealpha               # optimise transparent pngs
  imageoptim               # images
  iterm2                   # terminal
  keepingyouawake          # disable screen sleep
  keka                     # file archiver
  notion                   # note app
  numi                     # verbose calculator
  spotify                  # music
  homebrew/cask/syncthing  # sync files locally

  browserosaurus           # browser picker
  firefox                  # browser
  google-chrome            # browser

  slack                    # chats
  whatsapp                 # chats
  zoomus                   # video chats
)

brew_install_multiple "${apps[@]}"
