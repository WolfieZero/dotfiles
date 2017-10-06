# ==============================================================================
# Terminal Aliases
# ==============================================================================


# Editors
# ==============================================================================


    alias v="vim"
    alias e="atom"


# Tor Connection
# ==============================================================================


    alias torme="bash ~/dotfiles/torme.sh"


# Folder Shortcuts
# ==============================================================================


    alias l="exa -bghHlia --git"
    alias box="~/Dropbox"
    alias codebox="~/Dropbox/Code"

    alias apps="~/Dropbox/Code/App"
    alias webs="~/Dropbox/Code/Web"
    alias boom="~/Dropbox/Code/Boom"
    alias tool="~/Dropbox/Code/Tools"

    alias web=webs
    alias tools=tool


# Deletion
# ==============================================================================

    alias del="rm -rf $1"
    alias delete=del


# Compress
# ==============================================================================


    alias zip='tar -jcvf $1 $2' # zip to-file.tar this-folder
    alias unzip='tar -jxvf $1'  # unzip this-file.tar


# Processes
# ==============================================================================


    alias top="htop"
    alias top-original-="/usr/bin/top"
