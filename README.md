# Dotfiles

## Initial Setup and Installation

To get started...

```bash
xcode-select --install
sudo xcodebuild -license
```

### Setup new Mac

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
brew install git
brew cleanup
cd && git clone https://github.com/WolfieZero/dotfiles.git
```

Once done you can run the following (best to do one-by-one):

```bash
bash ~/dotfiles/setup-new-mac/setup-ohmyzsh.sh
bash ~/dotfiles/setup-new-mac/install-cli-tools.sh
bash ~/dotfiles/setup-new-mac/macos-improvements.sh

bash ~/dotfiles/setup-new-mac/install-apps.sh
bash ~/dotfiles/setup-new-mac/install-browsers.sh

bash ~/dotfiles/setup-new-mac/install-dev-tools.sh

bash ~/dotfiles/setup-new-mac/setup-vim.sh

bash ~/dotfiles/install/3--node.sh
bash ~/dotfiles/install/4--ruby.sh
bash ~/dotfiles/install/5--php.sh
bash ~/dotfiles/install/6--osx.sh
bash ~/dotfiles/install/7--powerlinefonts.sh
bash ~/dotfiles/install/8--symlinks.sh
bash ~/dotfiles/install/9--python.sh
```

Best to do one-by-one as some with cause terminal to restart.

### Extra Stuff

Run the following:

```bash
bash ~/dotfiles/install/vim.sh
bash ~/dotfiles/install/games.sh
```
