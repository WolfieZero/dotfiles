# Dotfiles

## Initial Setup and Installation

To get started setup xcode on the mac

```bash
xcode-select --install
```

Now setup the basic environment required

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install wget
brew install zsh
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
