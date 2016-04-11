function fixssh() {
    echo 'Fixing ssh permissions'
    sudo chmod 600 ~/.ssh/id_rsa
    sudo chmod 600 ~/.ssh/id_rsa.pub
    sudo chmod 600 ~/.ssh/id_dsa
    sudo chmod 600 ~/.ssh/id_dsa.pub
    sudo chmod 644 ~/.ssh/known_hosts
    sudo chmod 755 ~/.ssh
}

function gitreset() {
    echo 'Resetting git repo to last commit'
    git fetch origin master
    git reset --hard FETCH_HEAD
    git clean -df
}

function gfp() {
    echo "FORCE PULL"
    echo "=========="
    echo " "
    git fetch --all
    git reset --hard origin/master
    git pull $1
}
