# ==============================================================================
# Development
# ==============================================================================


# Laravel
# ==============================================================================


    # Aliases
    # --------------------------------------------------------------------------

    alias artisan="php artisan"
    alias valet-open="e ~/.valet"


    # Homestead
    # --------------------------------------------------------------------------

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


# Python
# ==============================================================================


    alias startenv="source env/bin/activate"
    alias stopenv="deactivate"


# Server
# ==============================================================================


    function server() {
        case "$1" in
            'php')
                php -S localhost:1337
            ;;
            'proxy')
                browser-sync start --no-notify --no-inject-changes --no-ghost-mode --no-open --proxy $1
            ;;
            'local')
                browser-sync start --server --files '**/*.*' --no-notify --no-open
            ;;
            *)
                echo 'php                 -  start PHP localhost:1337 in local directory';
                echo 'proxy [server_url]  -  start a Browser Sync session via a proxy';
                echo 'local               -  start a Browser Sync session on the current folder';
            ;;
        esac
    }

    alias serve="browser-sync start --server --files '**/*.*' --no-notify --no-open"
