# Boom theme (based on Ys terminal theme - http://blog.ysmood.org/my-ys-terminal-theme/)
# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.

# Git Info
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$reset_color%} git:%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}X"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}O"

PROMPT="
%{$terminfo[bold]$fg[white]%}%~%{$reset_color%}\
${git_info}
%{$terminfo[bold]$fg[magenta]%}$ %{$reset_color%}"
