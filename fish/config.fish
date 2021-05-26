# toggle keyboard layout
setxkbmap -model abnt2 -layout us,br -variant abnt2 -option grp:win_space_toggle

# import colorscheme from 'wal' asynchronously
cat ~/.cache/wal/sequences &

# Options
set fish_greeting
set fish_vi_key_bindings

# Aliases
alias cat='bat'
alias r='ranger'
alias c='clear'
alias v='nvim'
#alias vim='nvim'
alias ls='ls --color=auto'
alias ll='ls -la'
alias fzf="fzf --preview 'cat {}'"

alias empty-trash="rm -r ~/.trash/*"

# Disable dotnet telemetry

export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Editor

export VISUAL=nvim
export EDITOR=nvim

# Start starship

starship init fish | source

# Path
# export DENO_INSTALL="/home/nexi/.deno"
# export PATH="$DENO_INSTALL/bin:$PATH"
