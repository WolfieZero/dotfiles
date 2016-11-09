# ==============================================================================
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
