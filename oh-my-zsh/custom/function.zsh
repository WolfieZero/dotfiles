# ==============================================================================
# Terminal Functions
# ==============================================================================


# Fix SSH pemissions
# ==============================================================================


    function fix-ssh() {
        echo 'Fixing ssh permissions'
        sudo chmod 600 ~/.ssh/*
        sudo chmod 755 ~/.ssh
        sudo chmod 755 ~/.ssh/keys
        sudo chmod 600 ~/.ssh/keys/*
    }


# Fix Git config
# ==============================================================================


    function fix-git() {
        echo 'Fixing git config'
        git config user.name "Neil Sweeney"
        git config user.email "neil@wolfiezero.com"
    }


# Fix Bluetooth?
# ==============================================================================


    function fix-bluetooth() {
        defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Max (editable)" 80
        defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" 80
        defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool (editable)" 80
        defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool Min (editable)" 80
        defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool" 80
        defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool Max" 80
        defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool Min" 80
        sudo killall bluetoothaudiod
    }


# Dotfiles
# ==============================================================================


    DOTFILES=${HOME}/dotfiles

    function dotfiles() {
        case "$1" in
            'edit')
                e ~/dotfiles
            ;;
            'reload')
                source ~/.zshrc
            ;;
            *)
                echo 'edit    -  edit the dotfiles';
                echo 'reload  -  sources the profile';
            ;;
        esac
    }


# Brew
# ==============================================================================


    function brew-cask-update() {
        (set -x; brew update;)

        (set -x; brew cleanup;)
        (set -x; brew cask cleanup;)

        red=`tput setaf 1`
        green=`tput setaf 2`
        reset=`tput sgr0`

        casks=( $(brew cask list) )

        for cask in ${casks[@]}
        do
            version=$(brew cask info $cask | sed -n "s/$cask:\ \(.*\)/\1/p")
            installed=$(find "/usr/local/Caskroom/$cask" -type d -maxdepth 1 -maxdepth 1 -name "$version")

            if [[ -z $installed ]]; then
                echo "${red}${cask}${reset} requires ${red}update${reset}."
                (set -x; brew cask uninstall $cask --force;)
                (set -x; brew cask install $cask --force;)
            else
                echo "${red}${cask}${reset} is ${green}up-to-date${reset}."
            fi
        done
    }
