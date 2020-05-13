"" Defaults
set number relativenumber
set nocompatible
set bs=indent,eol,start
set ai
set shiftwidth=4
set tabstop=4
set clipboard=unnamedplus
set encoding=utf-8
set ttimeoutlen=50
set t_Co=256

let mapleader="\<Space>"

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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'

call plug#end()

""" Snippets configuration

"" NCM2

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

set completeopt=noinsert,menuone,noselect

"" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'gruvbox'

"" Gruvbox theme
colorscheme gruvbox
