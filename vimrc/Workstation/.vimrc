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
set splitright
set title
let mapleader=","

"-----------Line Numbers-----------
set invnumber
inoremap <F10> <C-O>:set invnumber<CR>
noremap <F10> :set invnumber<CR>

"-----------Mouse Scrolling--------
map <Leader>m :set mouse=a<CR>
map <Leader>n :set mouse=<CR>

"------------Reload File-----------
nnoremap <Leader>e :e!<CR>

"----------Save Read-Only----------
map <Leader>! :w !sudo tee %<CR>

"--------------Quit----------------
map <Leader>q :q!<CR>
map <Leader>qa :qa<CR>

"-----------Split Window-----------
map <Leader>sw :vnew<CR>
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

"------------Terminal--------------
map <Leader>t :set mouse=a<CR>:vertical terminal<CR>

"----------Resizing Windows--------
nnoremap <Leader>; :vertical resize +5<CR>
nnoremap <Leader>' :vertical resize -5<CR>

"----------------Tabs--------------
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"--------------Source--------------
map <F12> :source %<CR>

"---------Vundle Plugins-----------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin '907th/vim-auto-save'
Plugin 'mbbill/undotree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

"Vundle Plugin Configurations

"------------Autosave--------------
let g:auto_save = 1

"------------Undotree--------------
nnoremap <F3> :UndotreeToggle<CR>

"----------------------------------
"Vim Plug
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'tmsvg/pear-tree'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()

"Vim Plug Configurations

"---------YouCompleteMe------------
set encoding=utf-8

"-------------Vim Rainbow----------
let g:rainbow_active = 1

"------------NERDTree--------------
map <F2> :NERDTreeToggle<CR>

"-----------Git Commit-------------
nnoremap <Leader>g :GV<CR>

"-----------Git Gutter-------------
set signcolumn=yes
map <Leader>ge :GitGutterLineHighlightsEnable<CR>
map <Leader>gd :GitGutterLineHighlightsDisable<CR> 

"------------Color Scheme----------
set termguicolors
let &t_Co=256
set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_termcolors=256
colorscheme gruvbox

"-----------Vim Airline-----------
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_solarized_bg='dark'

"-----------Status Line-----------
"Vim Fugitive
set statusline+=%{FugitiveHead()}

"Git Gutter
function! GitStatus()
	let [a,m,r] = GitGutterGetHunkSummary()
	return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

"----------------------------------
"Compile/Run languages with <F9> and clear console
autocmd filetype java nnoremap <F9> :w<CR> :!clear<CR> :!javac % && java %<<CR>
autocmd filetype sh nnoremap <F9> :w<CR> :!clear<CR> :!bash %<CR>
autocmd filetype c nnoremap <F9> :w<CR> :!clear<CR> :!gcc % -o %< && ./%<<CR>
autocmd filetype cpp nnoremap <F9> :w<CR> :!clear<CR> :!g++ % -o %< && ./%<<CR>
autocmd filetype python nnoremap <F9> :w<CR> :!clear<CR> :!python3 ./%<CR>
autocmd filetype perl nnoremap <F9> :w<CR> :!clear<CR> :!perl ./%<CR>
"View MD (Markdown) on WSL
"Run HTML on Windows
"autocmd filetype html nnoremap <F9> :w<CR> :!clear<CR> :!chrome %<CR>
"Run HTML on Linux
"autocmd filetype html nnoremap <F9> :w<CR> :!clear<CR> :!google-chrome %<CR>
"Compile/Run C/CPP using Makefile with <F8> and clear console
autocmd filetype c nnoremap <F8> :w<CR> :!clear<CR> :!make && ./%<<CR>
autocmd filetype cpp nnoremap <F8> :w<CR> :!clear<CR> :!make && ./%<<CR>
"----------------------------------
