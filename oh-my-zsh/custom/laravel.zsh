# ==============================================================================
# Laravel
# ==============================================================================

alias artisan="php artisan"


function homestead() {
    case "$1" in
        'edit')
            v ~/.homestead/Homestead.yaml
        ;;
        'up')
            cd ~/Homestead && vagrant up
        ;;
        'reload')
            cd ~/Homestead && vagrant reload
        ;;
        'provision')
            cd ~/Homestead && vagrant reload --provision
        ;;
        'ssh')
            cd ~/Homestead && vagrant ssh
        ;;
    esac
}
