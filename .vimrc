syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
inoremap <F3> <C-O>:set invnumber<CR>
noremap <F3> :set invnumber<CR>
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

execute pathogen#infect()

"----------------------------------
"Compile/Run languages with <F9> and clear console
autocmd filetype java nnoremap <F9> :w<CR> :!clear<CR> :!javac % && java %<<CR>
autocmd filetype c nnoremap <F9> :w<CR> :!clear<CR> :!gcc % -o %< && ./%<<CR>
autocmd filetype cpp nnoremap <F9> :w<CR> :!clear<CR> :!g++ % -o %< && ./%<<CR>
autocmd filetype python nnoremap <F9> :w<CR> :!clear<CR> :!python3 ./%<CR>
autocmd filetype perl nnoremap <F9> :w<CR> :!clear<CR> :!perl ./%<CR>
"Compile/Run C/CPP using Makefile or multiple java files with <F8> and clear console
autocmd filetype c nnoremap <F8> :w<CR> :!clear<CR> :!make && ./%<<CR>
autocmd filetype cpp nnoremap <F8> :w<CR> :!clear<CR> :!make && ./%<<CR>
autocmd filetype java nnoremap <F8> :w<CR> :!clear<CR> :!javac *.java && java main<CR>

"----------------------------------
"Vundle Plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin '907th/vim-auto-save'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on

"Vundle Plugin Configurations
let g:auto_save = 1

"-----------------------------------
"Syntastic Configurations
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Syntastic Syntax Checkers
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_html_checkers = ['tidy']
let g:syntastic_css_checkers = ['csslint']

"----------------------------------
"Vim Plug
call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'morhetz/gruvbox'
Plug 'tmsvg/pear-tree'
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow'

call plug#end()

"Vim Plug Configurations

"Vim Rainbow Configurations
let g:rainbow_active = 1

colorscheme gruvbox
set background=dark
