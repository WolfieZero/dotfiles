# ==============================================================================
# Terminal Functions
# ==============================================================================


# Fix SSH pemissions
# ==============================================================================

function fix-ssh() {
    echo 'Fixing ssh permissions'
    sudo chmod 600 ~/.ssh/id_rsa
    sudo chmod 600 ~/.ssh/id_rsa.pub
    sudo chmod 600 ~/.ssh/id_dsa
    sudo chmod 600 ~/.ssh/id_dsa.pub
    sudo chmod 644 ~/.ssh/known_hosts
    sudo chmod 755 ~/.ssh
}


# Force pull on git
# ==============================================================================

function gfp() {
    echo "Git force pull"
    git fetch --all
    git reset --hard origin/master
    git pull $1
}
