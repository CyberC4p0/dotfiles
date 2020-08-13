syntax on

set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

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

call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'morhetz/gruvbox'
Plug 'tmsvg/pear-tree'
Plug 'preservim/nerdtree'
Plug 'frazrepo/vim-rainbow'

call plug#end()

"Plugin Configurations
let g:rainbow_active = 1

colorscheme gruvbox
set background=dark
