" general

let &t_ut=''
colorscheme jellybeans
" colorscheme twilight256
hi CursorLine term=bold cterm=bold
filetype plugin on
syntax on

" sets 

set nomodeline
set number relativenumber
set cursorline
set laststatus=2
set viewoptions=cursor,folds,slash,unix
" set nocompatible " compatible <-> removing all enhancements, resulting in vi

" plugvim 

call plug#begin('~/.vim/plug')
	Plug 'preservim/nerdcommenter'
	Plug 'vimwiki/vimwiki'
	Plug 'honza/vim-snippets'
	Plug 'SirVer/ultisnips'
	Plug 'junegunn/fzf.vim'
	Plug 'vim-scripts/restore_view.vim'
	Plug 'tpope/vim-fugitive'
call plug#end()

" nerdcommenter self config

let g:NERDCustomDelimiters = { 'c': { 'left': '/**', 'right': '*/' } }

" powerline

let g:powerline_pycmd="py3"
