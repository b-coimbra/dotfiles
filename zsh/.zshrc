# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt autocd extendedglob

# Editing style (emacs)
bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nexi/.zshrc'

autoload -Uz compinit
compinit

# Aliases
alias c='clear'
alias q='exit'
alias r='ranger'
alias v='vim'
alias vi='vim'
alias ls='ls --color=auto'
alias fzf="fzf --preview 'cat {}'"
alias ll="ls -lah"
alias empty-trash="rm -r ~/.trash/*"
alias sudo="nocorrect sudo"

# toggle keyboard layout
setxkbmap -model abnt2 -layout us,br -variant abnt2 -option grp:win_space_toggle

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# Load starship
eval "$(starship init zsh)"

# Load antigen (plugin manager)
source /usr/share/zsh/share/antigen.zsh

# Packages
antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions

antigen apply
