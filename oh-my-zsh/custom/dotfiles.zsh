# ==============================================================================
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
