# Fix SSH pemissions
# ------------------------------------------------------------------------------

function fix-ssh() {
  echo 'Fixing ssh permissions'
  sudo chmod 600 ~/.ssh/*
  sudo chmod 755 ~/.ssh
  sudo chmod 755 ~/.ssh/keys
  sudo chmod 600 ~/.ssh/keys/*
}

# Fix Git config
# ------------------------------------------------------------------------------

function fix-git() {
  echo 'Fixing git config'
  git config user.name "Neil Sweeney"
  git config user.email "neil@wolfiezero.com"
}

# Fix Bluetooth?
# ------------------------------------------------------------------------------

function fix-bluetooth() {
  defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Max (editable)" 80
  defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" 80
  defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool (editable)" 80
  defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool Min (editable)" 80
  defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool" 80
  defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool Max" 80
  defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool Min" 80
  sudo killall bluetoothaudiod
}

# Server
# ------------------------------------------------------------------------------

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

# Dotfiles
# ------------------------------------------------------------------------------

function dotfiles() {
  case "$1" in
    'edit')
      code ~/dotfiles
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

# Create a personal project
# ------------------------------------------------------------------------------

function create-personal-project() {
  PROJECT_DIRECTORY=~/Projects/
  PROJECT_DEAULT_FOLDERS=(
    Assets
    Code
    Documents
  )
  NAME=$1

  # Check if NAME was passed
  if [ -z "$NAME" ]; then
      echo "No name given..."
      return
  fi
cd
  # Make lowercase version of NAME
  LOWER_NAME=`echo $NAME | perl -ne 'print lc'`
  echo "Creating Project \"$NAME\""

  # Create the project in the project directory
  cd $PROJECT_DIRECTORY
  mkdir $NAME
  cd $NAMEd ..

  # Create folders within the project
  for FOLDER in ${PROJECT_DEAULT_FOLDERS[*]}
  do
      mkdir $FOLDER
  done

  # Create default code folder
  mkdir Code/$LOWER_NAME
}

# Make and change directory
# ------------------------------------------------------------------------------

function mcd() {
    mkdir "$@" && cd "$@"
}
