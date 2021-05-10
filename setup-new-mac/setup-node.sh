#!/usr/bin/env bash

# Setup Dev - Node
# ==============================================================================

sh ./_config.sh


cli=(
  nvm
)

brew_multiple "${cli[@]}"
