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
alias vim='nvim'
alias ls='ls --color=auto'
alias fzf="fzf --preview 'cat {}'"

alias empty-trash="rm -r ~/.trash/*"
alias setup-wacom="sh ~/Documents/dotfiles/scripts/wacom.sh"

# Disable dotnet telemetry

export DOTNET_CLI_TELEMETRY_OPTOUT=1
