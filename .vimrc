if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

set number relativenumber
set clipboard=unnamedplus
set nocompatible
set bs=indent,eol,start
set ai

imap jk <ESC>

syntax on
filetype plugin on

colorscheme koehler
