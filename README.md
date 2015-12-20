# Dotfiles

Welcome to my world. This is a collection of vim, tmux, and zsh configurations. Interested in a video walkthrough of the dotfiles? Check out my talk, [vim + tmux](https://www.youtube.com/watch?v=5r6yzFEXajQ).


## Initial Setup and Installation

If on OSX, you will need to install the XCode CLI tools before continuing. To do so, open a terminal and type

```bash
xcode-select --install
```

May need to setup git, best practice for this is to do the following

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
cd
git clone https://github.com/WolfieZero/dotfiles.git
```

Once done you can run install

```bash
cd dotfiles
./install.sh
```
