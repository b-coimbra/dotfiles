"" Defaults
set number relativenumber
set nocompatible
set bs=indent,eol,start
set ai
set shiftwidth=4
set tabstop=4
set clipboard=unnamedplus

syntax on
filetype plugin indent on

imap jk <ESC>

"" Plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-ultisnips'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

Plug 'tpope/vim-surround'

Plug 'morhetz/gruvbox'

call plug#end()

""" Snippets configuration

"" NCM2

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

set completeopt=noinsert,menuone,noselect

"" Gruvbox theme
autocmd vimenter * colorscheme gruvbox
