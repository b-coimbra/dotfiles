#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\n\e[1;34m┌──────┄┄\e[0m\e[31m \e[1m\W\e[0m\e[0m\n\e[1;34m└───┄\e[0m '

# aliases
alias c='clear'
alias q='exit'
alias r='ranger'
alias ls='ls --color=auto'
alias fzf="fzf --preview 'cat {}'"
alias empty-trash="rm -r ~/.trash/*"

# keyboard layout
setxkbmap -model abnt2 -layout br -variant abnt2

# editing style
set -o emacs

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
