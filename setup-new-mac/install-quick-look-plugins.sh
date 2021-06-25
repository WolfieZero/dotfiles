#!/usr/bin/env bash

source ~/dotfiles/setup-new-mac/_config.sh

apps=(
  # qlcolorcode     # Preview source code files with syntax highlighting
  # qlstephen       # Preview plain text files without or with unknown file extension. Example: README, CHANGELOG, index.styl, etc.
  qlmarkdown      # Preview Markdown files
  quicklook-json  # Preview JSON files
  qlimagesize     # Display image size and resolution
  apparency       # Preview the contents of a macOS app
  qlvideo         # Preview most types of video files, as well as their thumbnails, cover art and metadata
)

brew_install_multiple "${apps[@]}"
