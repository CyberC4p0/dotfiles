syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

"-----------Line Numbers-----------
set invnumber
inoremap <F3> <C-O>:set invnumber<CR>
noremap <F3> :set invnumber<CR>

"--------------Quit----------------
map <F4> :q!<CR>

"-----------Split Window-----------
map <F5> :vsplit<CR>
map <Tab> <C-W>w

"--------------Source--------------
map <F12> :source %<CR>

"------------Pathogen--------------
execute pathogen#infect()

"---------Vundle Plugins-----------
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

"Autosave
let g:auto_save = 1

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 0
let g:syntastic_mode_map = {
            \"mode": "passive" }

map <F6> :SyntasticToggleMode<CR>

"Syntastic Syntax Checkers
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_html_checkers = ['tidy']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_java_checkers = ['javac']

"----------------------------------
"Vim Plug
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'tmsvg/pear-tree'
Plug 'frazrepo/vim-rainbow'

call plug#end()

"Vim Plug Configurations

"Vim Rainbow
let g:rainbow_active = 1

"NERDTree
map <F2> :NERDTreeToggle<CR>

"Vim Theme
colorscheme gruvbox
set background=dark

"----------------------------------
"Compile/Run languages with <F9> and clear console
autocmd filetype java nnoremap <F9> :w<CR> :!clear<CR> :!javac % && java %<<CR>
autocmd filetype c nnoremap <F9> :w<CR> :!clear<CR> :!gcc % -o %< && ./%<<CR>
autocmd filetype cpp nnoremap <F9> :w<CR> :!clear<CR> :!g++ % -o %< && ./%<<CR>
autocmd filetype python nnoremap <F9> :w<CR> :!clear<CR> :!python3 ./%<CR>
autocmd filetype perl nnoremap <F9> :w<CR> :!clear<CR> :!perl ./%<CR>
"Run HTML on Windows
"autocmd filetype html nnoremap <F9> :w<CR> :!clear<CR> :!powershell.exe start chrome %<CR>
"Run HTML on Linux
"autocmd filetype html nnoremap <F9> :w<CR> :!clear<CR> :!google-chrome %<CR>
"Compile/Run C/CPP using Makefile with <F8> and clear console
autocmd filetype c nnoremap <F8> :w<CR> :!clear<CR> :!make && ./%<<CR>
autocmd filetype cpp nnoremap <F8> :w<CR> :!clear<CR> :!make && ./%<<CR>
"----------------------------------
