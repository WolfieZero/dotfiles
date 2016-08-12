# ==============================================================================
# Laravel
# ==============================================================================


# Aliases
# ==============================================================================

alias artisan="php artisan"


# Homestead
# ==============================================================================

function homestead() {
    case "$1" in
        'edit')
            vim ~/.homestead/Homestead.yaml
        ;;
        'up')
            (cd ~/VagrantBoxes/Homestead; vagrant up)
        ;;
        'reload')
            (cd ~/VagrantBoxes/Homestead; vagrant reload)
        ;;
        'provision')
            (cd ~/VagrantBoxes/Homestead; vagrant reload --provision)
        ;;
        'ssh')
            (cd ~/VagrantBoxes/Homestead; vagrant ssh)
        ;;
        'update')
            (cd ~/VagrantBoxes/Homestead; vagrant box update)
        ;;
    esac
}
