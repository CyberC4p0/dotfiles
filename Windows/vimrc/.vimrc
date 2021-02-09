syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undofile
set incsearch
set splitright
set title
set noerrorbells
set novisualbell
set belloff=all
set backspace=indent,eol,start
set encoding=utf-8
set number
set shell=cmd
set guicursor=a:block-Cursor
let mapleader=","
filetype plugin indent on

"----------Working Directory-------
cd F:\Programming\Software-Development

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
map <Leader>t :vertical terminal<CR>

"----------Resizing Windows--------
nnoremap <Leader>; :vertical resize +5<CR>
nnoremap <Leader>' :vertical resize -5<CR>

"----------------Tabs--------------
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"--------------Source--------------
map <F12> :source %<CR>

"------------Color Scheme----------
set background=dark

"-------------Vim Plug-------------
call plug#begin('C:\Users\jmemb\vimfiles\plugged')

Plug 'tmsvg/pear-tree'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
Plug '907th/vim-auto-save'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"-------------Vim Rainbow----------
let g:rainbow_active = 1

"-----------Vim Fugitive-----------
set statusline+=%{FugitiveHead()}

"-----------Git Commit-------------
nnoremap <Leader>g :GV<CR>

"-----------Git Gutter-------------
set signcolumn=auto
map <F4> :GitGutterToggle<CR>
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

"------------NERDTree--------------
map <F2> :NERDTreeToggle<CR>

"------------Undotree--------------
nnoremap <F3> :UndotreeToggle<CR>

"------------Color Scheme----------
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

"------------Autosave--------------
let g:auto_save = 1

"----------------------------------
"Compile/Run languages with <F9> and clear console
autocmd filetype c nnoremap <F9> :!gcc % -o %< && %<<CR>
