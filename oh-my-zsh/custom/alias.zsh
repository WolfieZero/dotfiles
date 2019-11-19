# ==============================================================================
# Terminal Aliases
# ==============================================================================


# ==============================================================================
# Editors


    alias v="vim"
    alias e="code"


# ==============================================================================
# Tor Connection


    alias torme="bash ~/dotfiles/torme.sh"


# ==============================================================================
# Folder Shortcuts


    alias l="exa -bghHlia --git"
    alias box="~/Dropbox"
    alias codebox="~/Code"
    alias projects="~/Projects"


# ==============================================================================
# Deletion

    alias del="rm -rf $1"
    alias delete=del
    alias del-node-modules="find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +"


# ==============================================================================
# Compress


    alias zip='tar -jcvf $1 $2' # zip to-file.tar this-folder
    alias unzip='tar -jxvf $1'  # unzip this-file.tar


# ==============================================================================
# Processes


    alias top="htop"
    alias top-original-="/usr/bin/top"


# ==============================================================================
# Other


    alias help="cht.sh"
    alias bu="brew update && brew upgrade && brew cleanup"
    alias weather='curl http://wttr.in/romsey,uk'
    alias hosts="code /etc/hosts"
    alias add-dock-split="defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type=\"spacer-tile\";}' && killall Dock"


# ==============================================================================
# Git


    alias git-leaderboard="git shortlog -sn --all --no-merges"
