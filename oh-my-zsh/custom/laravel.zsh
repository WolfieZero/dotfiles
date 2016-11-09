# ==============================================================================
# Laravel
# ==============================================================================


# Aliases
# ==============================================================================

alias artisan="php artisan"
alias valet-open="e ~/.valet"


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
        *)
            echo 'edit       -  opens Homestead.yaml in Vim';
            echo 'up         -  vagrant up';
            echo 'reload     -  vagrant reload';
            echo 'provision  -  vagrant reload --provision';
            echo 'ssh        -  ssh into homestead';
            echo 'update     -  updates the homestead box';
        ;;
    esac
}
