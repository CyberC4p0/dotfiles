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
set shell=Ubuntu
set noerrorbells
set vb t_vb=
let mapleader=","

"-----------Line Numbers-----------
set invnumber
inoremap <F10> <C-O>:set invnumber<CR>
noremap <F10> :set invnumber<CR>

"-----------Mouse Scrolling--------
map <Leader>m :set mouse=a<CR>
map <Leader>n :set mouse=<CR>

"------------Saving/Reload-----------
nnoremap <Leader>w :w<CR>
nnoremap <Leader>e :e!<CR>

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

"------------Explorer--------------
map <F2> :Vex 15<CR>

"----------Resizing Windows--------
nnoremap <Leader>' :vertical resize +5<CR>
nnoremap <Leader>; :vertical resize -5<CR>

"----------------Tabs--------------
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"--------------Source--------------
map <F12> :source %<CR>

"---------Encoding------------
set encoding=utf-8

"------------Color Scheme----------
set background=dark
colorscheme desert
