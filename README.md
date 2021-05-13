# Dotfiles

## Initial Setup and Installation

To get started...

```bash
xcode-select --install
sudo xcodebuild -license
```

## Setup new Mac

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
brew install git
brew cleanup
cd && git clone https://github.com/WolfieZero/dotfiles.git
bash ~/dotfiles/setup-new-mac/setup-ohmyzsh.sh
```

Once done you can run the following (best to do one-by-one):

```bash
bash ~/dotfiles/setup-new-mac/install-apps.sh
bash ~/dotfiles/setup-new-mac/install-quick-look-plugins.sh
bash ~/dotfiles/setup-new-mac/macos-improvements.sh
bash ~/dotfiles/setup-new-mac/make-symlinks.sh
bash ~/dotfiles/setup-new-mac/install-cli-tools.sh
```

## Dev Setup

```bash
bash ~/dotfiles/setup-new-mac/install-dev-tools.sh
```

### Node

```bash
bash ~/dotfiles/setup-new-mac/setup-node.sh
```

### PHP

```bash
bash ~/dotfiles/setup-new-mac/setup-php.sh
```

### Python

```bash
bash ~/dotfiles/setup-new-mac/setup-python.sh
```
