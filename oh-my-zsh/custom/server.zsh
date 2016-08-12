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
        *)
            browser-sync start --server --files '**/*.*' --no-notify --no-open
        ;;
    esac
}
