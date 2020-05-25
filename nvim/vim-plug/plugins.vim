" Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	"autocmd VimEnter * PlugInstall
	"autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/nvim/autoload/plugged')

	" Intellisense engine and LSP 
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Completion framework
	Plug 'ncm2/ncm2'
	" Remote Plugin Framework
	Plug 'roxma/nvim-yarp'
	" Snippets engine
	Plug 'SirVer/ultisnips'
	" Snippet completion source
	Plug 'ncm2/ncm2-ultisnips'
	" Snippets for various langs
	Plug 'honza/vim-snippets'
	" Quoting/parenthesizing made simple
	Plug 'tpope/vim-surround'
	" Lightweight statusbar 
	Plug 'vim-airline/vim-airline'
	" Themes for vim-airline
	Plug 'vim-airline/vim-airline-themes'
	" Motions on speed
	Plug 'easymotion/vim-easymotion'
	" Better Syntax Support
	Plug 'sheerun/vim-polyglot'
	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
	" Commenting powers
	Plug 'preservim/nerdcommenter'
	" Indentation guides
	Plug 'Yggdroot/indentLine'
	" Show popup keybindings 
	Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
	"" Themes
	Plug 'morhetz/gruvbox'


call plug#end()
