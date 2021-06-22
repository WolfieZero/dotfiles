# Homestead
# ------------------------------------------------------------------------------

function homestead() {
  case "$1" in
    'edit')
      code ~/Homestead
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

# VVV
# ------------------------------------------------------------------------------

function vvv() {
  case "$1" in
    'dash')
      (open http://vvv.test)
    ;;
    'ssh')
      (cd ~/vvv-local; vagrant ssh)
    ;;
    'edit')
      (code ~/vvv-local/config/config.yml)
    ;;
    'start')
      (cd ~/vvv-local; vagrant up)
    ;;
    'stop')
      (cd ~/vvv-local; vagrant halt)
    ;;
    'provision')
      (cd ~/vvv-local; vagrant provision)
    ;;
    'reload')
      (cd ~/vvv-local; vagrant reload --provision)
    ;;
    'xon')
      (cd ~/vvv-local; vagrant ssh -c "switch_php_debugmod xdebug")
    ;;
    'xoff')
      (cd ~/vvv-local; vagrant ssh -c "switch_php_debugmod none")
    ;;
    *)
      echo 'dash       -  view web dashboard';
      echo 'ssh        -  ssh into env';
      echo 'edit       -  edit vvv config.yml';
      echo 'start      -  start vvv';
      echo 'stop       -  stop vvv';
      echo 'provision  -  provisions vvv';
      echo 'reload     -  reloads and provisions vvv';
      echo 'xon        -  turn xdebug on';
      echo 'xoff       -  turn xdebug off';
    ;;
  esac
}
