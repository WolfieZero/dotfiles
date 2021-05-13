#!/usr/bin/env bash

# Install Apps
# ------------------------------------------------------------------------------

sh ./_config.sh

apps=(
  appcleaner          # removes apps
  dozer               # tidy toolbar
  imagealpha          # optimise transparent pngs
  imageoptim          # images
  iterm2              # terminal
  keka                # file archiver
  notion              # note app
  numi                # verbose calculator
  spotify             # music
  syncthing           # sync files locally

  browserosaurus      # browser picker
  firefox             # browser
  google-chrome       # browser

  slack               # chats
  whatsapp            # chats
  zoomus              # video chats
)

brew_install_multiple "${apps[@]}"
