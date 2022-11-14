" execute pathogen#infect()

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

set number relativenumber
set nocompatible
set bs=indent,eol,start
set ai
set shiftwidth=4
set tabstop=4
set clipboard=unnamedplus

imap jk <ESC>

syntax on
filetype plugin indent on

colorscheme desert

" Vim-airline
" let g:airline_powerline_fonts = 1
" let g:airline_theme='base16_chalk'

" POWERLINE
" set rtp+=/usr/lib/python3.7/site-packages/powerline/bindings/vim/
" set laststatus=2
" set t_Co=256

"" VSVIM

map <Space>r :vsc Refactor.Rename<CR>
map <Space>i :vsc Edit.QuickInfo<CR>
map <Space>p :vsc Edit.PeekDefinition<CR>
