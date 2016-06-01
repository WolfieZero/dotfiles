alias v="vim"
alias e="atom"
alias mv="mvim"

alias box="~/Dropbox"
alias c="clear"

alias code="~/Dropbox/Code"
alias boom="~/Dropbox/Boom"
alias dump="~/Dropbox/Dump"

alias delete="rm -rf $1"

alias zshconfig="e ~/.zshrc"
alias ohmyzsh="e ~/.oh-my-zsh"

alias compress='tar -jcvf $1 $2'
alias uncompress='tar -jxvf $1'

alias js="/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc"

alias server="browser-sync start --server --files '**/*.*' --no-notify --no-open"
alias serverphp="php -S localhost:1337"
alias serverproxy="browser-sync start --no-notify --no-inject-changes --no-ghost-mode --no-open --proxy $1"

#alias top="vtop"
alias oldtop="/usr/bin/top"

alias tinkerme="git clone https://github.com/WolfieZero/tinker.git"

alias compose="php -dzend_extension=xdebug.so /usr/local/bin/composer"

alias scotchbox="wget https://raw.githubusercontent.com/scotch-io/scotch-box/master/Vagrantfile"
