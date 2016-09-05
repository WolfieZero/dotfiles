# ==============================================================================
# Laravel
# ==============================================================================


# Aliases
# ==============================================================================

alias artisan="php artisan"

alias valetopen="e ~/.valet"


# Homestead
# ==============================================================================

function homestead() {
    case "$1" in
        'edit')
            vim ~/.homestead/Homestead.yaml
        ;;
        'up')
            (cd ~/Homestead; vagrant up)
        ;;
        'reload')
            (cd ~/Homestead; vagrant reload)
        ;;
        'provision')
            (cd ~/Homestead; vagrant reload --provision)
        ;;
        'ssh')
            (cd ~/Homestead; vagrant ssh)
        ;;
        'update')
            (cd ~/Homestead; vagrant box update)
        ;;
    esac
}
