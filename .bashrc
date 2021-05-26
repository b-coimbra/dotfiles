#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\n\e[1;34m┌──────┄┄\]\e[31m \e[1m\W\]\]\n\e[1;34m└───┄\] '

# aliases
alias c='clear'
alias q='exit'
alias r='ranger'
alias v='vim'
alias vi='vim'
alias ls='ls --color=auto'
alias fzf="fzf --preview 'cat {}'"
alias ll="ls -lah"
alias empty-trash="rm -r ~/.trash/*"

# toggle keyboard layout
setxkbmap -model abnt2 -layout us,br -variant abnt2 -option grp:win_space_toggle

# editing style
set -o emacs

# allows you to cd into directory by typing the dir name
shopt -s autocd

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh

# Remove dotnet telemetry

export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Start starship
eval "$(starship init bash)"
