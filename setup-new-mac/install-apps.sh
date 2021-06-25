#!/usr/bin/env bash

# Install Apps
# ------------------------------------------------------------------------------

source ~/dotfiles/setup-new-mac/_config.sh

apps=(
  appcleaner                # removes apps
  dozer                     # tidy toolbar
  keepingyouawake           # disable screen sleep
  keka                      # file archiver
  notion                    # note app
  numi                      # verbose calculator
  spotify                   # music
  homebrew/cask/syncthing   # sync files locally
  atext                     # text completion
  rectangle                 # window control
  # ticktick                  # task managment

  # Chats
  slack
  whatsapp
  zoomus
  messenger
)

brew_install_multiple "${apps[@]}"

echo 'App Store Installables'
echo '----------------------'
echo ' - TickTick'
