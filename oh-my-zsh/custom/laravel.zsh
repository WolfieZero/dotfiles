# ==============================================================================
# Laravel
# ==============================================================================

alias artisan="php artisan"


function homestead() {
    case "$1" in
        'edit')
            e ~/.homestead/Homestead.yaml
        ;;
        'up')
            cd ~/VagrantBoxes/Homestead && vagrant up
        ;;
        'reload')
            cd ~/VagrantBoxes/Homestead && vagrant reload
        ;;
        'provision')
            cd ~/VagrantBoxes/Homestead && vagrant reload --provision
        ;;
        'ssh')
            cd ~/VagrantBoxes/Homestead && vagrant ssh
        ;;
    esac
}
