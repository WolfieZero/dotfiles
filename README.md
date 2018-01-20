# Dotfiles


## Initial Setup and Installation

If on OSX, you will need to install the XCode CLI tools before continuing. To do so, open a terminal and type

```bash
xcode-select --install
sudo xcodebuild -license
```

### Install Mac Brew and Git

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
cd && git clone https://github.com/WolfieZero/dotfiles.git
```

### Install Everything Else

Once done you can run the following (best to do one-by-one):

```bash
bash ~/dotfiles/install/0--ohmyzsh.sh
bash ~/dotfiles/install/1--brew.sh
bash ~/dotfiles/install/2--cask.sh
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
