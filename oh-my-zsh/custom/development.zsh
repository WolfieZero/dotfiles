# ==============================================================================
# Development
# ==============================================================================


# ==============================================================================
# iOS devices

    # https://www.npmjs.com/package/ios-sim

    alias device-show-all="npx ios-sim showdevicetypes"

    alias device-iPhone6="npx ios-sim start --devicetypeid com.apple.CoreSimulator.SimDeviceType.iPhone-6"
    alias device-iPhone6-plus="npx ios-sim start --devicetypeid com.apple.CoreSimulator.SimDeviceType.iPhone-6-Plus"

    alias device-iPhone7="npx ios-sim start --devicetypeid com.apple.CoreSimulator.SimDeviceType.iPhone-7"
    alias device-iPhone7-plus="npx ios-sim start --devicetypeid com.apple.CoreSimulator.SimDeviceType.iPhone-7-Plus"

    alias device-iPhoneXr="npx ios-sim start --devicetypeid com.apple.CoreSimulator.SimDeviceType.iPhone-XR"


# ==============================================================================
# Node


    alias ncu="npx npm-check-updates"
    alias npr="npm run"


# ==============================================================================
# Laravel


    # Aliases
    # --------------------------------------------------------------------------

    alias artisan="php artisan"
    alias valet-open="e ~/.valet"


    # Homestead
    # --------------------------------------------------------------------------

    function homestead() {
        case "$1" in
            'edit')
                e ~/Homestead/Homestead.yaml
            ;;
            'start')
                (cd ~/Homestead; vagrant up)
            ;;
            'stop')
                (cd ~/Homestead; vagrant halt)
            ;;
            'restart')
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
                echo 'start      -  vagrant up';
                echo 'restart    -  vagrant reload';
                echo 'provision  -  vagrant reload --provision';
                echo 'ssh        -  ssh into homestead';
                echo 'update     -  updates the homestead box';
            ;;
        esac
    }


# ==============================================================================
# Symfony

    function symfony() {
        case $1 in
            'new')
                (composer create-project symfony/skeleton $1)
            ;;
            'new3')
                (composer create-project symfony/framework-standard-edition $2 "3.*.*")
            ;;
            'serve')
                (./bin/console server:run)
            ;;
            'console')
                (./bin/console $2)
            ;;
            *)
                echo 'new {name}           -  new Symfony 4 app';
                echo 'new3 {name}          -  new Symfony 3 app';
                echo 'serve                -  runs built in server';
                echo 'console "{command}"  -  vagrant reload --provision';
            ;;
        esac
    }

    alias console-bin="./bin/console"


# ==============================================================================
# Python


    alias startenv="source env/bin/activate"
    alias stopenv="deactivate"


# ==============================================================================
# Server


    function server() {
        case "$1" in
            'php')
                php -S localhost:1337
            ;;
            'proxy')
                npx browser-sync start --no-notify --no-inject-changes --no-ghost-mode --no-open --proxy $2
            ;;
            'local')
                npx browser-sync start --server --files '**/*.*' --no-notify --no-open
            ;;
            *)
                echo 'php                 -  start PHP localhost:1337 in local directory';
                echo 'proxy [server_url]  -  start a Browser Sync session via a proxy';
                echo 'local               -  start a Browser Sync session on the current folder';
            ;;
        esac
    }

    alias serve="browser-sync start --server --files '**/*.*' --no-notify --no-open"


# ==============================================================================
# Git


    function gfp() {
        echo "Git force pull"
        git fetch --all
        git reset --hard origin/master
        git pull $1
    }
