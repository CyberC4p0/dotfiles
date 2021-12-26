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
let mapleader="`"

"-----------Line Numbers-----------
set invnumber
inoremap <F4> :set invnumber<CR>
noremap <F4> :set invnumber<CR>
"
"----------Explore Toggle----------
inoremap <F2> :Lexplore<CR>
noremap <F2> :Lexplore<CR>

"------------Save/Exit-------------
map <Leader>w :w<CR>
map <Leader>q :q!<CR>

"-----------Split Window-----------
map <F3> :vsplit<CR>
nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>

"----------Resizing Windows--------
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

"-------------Source---------------
map <F12> :source %<CR>

"-----------Color Scheme-----------
colorscheme desert

"----------------------------------
"Compile/Run languages with <F9> and clear console
autocmd filetype java nnoremap <F9> :w<CR> :!clear<CR> :!javac % && java%<<CR>
autocmd filetype c nnoremap <F9> :w<CR> :!clear<CR> :!gcc % -o %< && ./%<<CR>
autocmd filetype cpp nnoremap <F9> :w<CR> :!clear<CR> :!g++ % -o %< && ./%<<CR>
autocmd filetype python nnoremap <F9> :w<CR> :!clear<CR> :!python3 ./%<CR>
autocmd filetype perl nnoremap <F9> :w<CR> :!clear<CR> :!perl ./%<CR>
autocmd filetype sh nnoremap <F9> :w<CR> :!clear<CR> :!sh %<CR>
"Run HTML on Windows
"autocmd filetype html nnoremap <F9> :w<CR> :!clear<CR> :!powershell.exe start chrome %<CR>
"Run HTML on Linux
"autocmd filetype html nnoremap <F9> :w<CR> :!clear<CR> :!google-chrome %<CR>
"Compile/Run C/CPP using Makefile or multiple java files with <F8> and clear console
autocmd filetype c nnoremap <F8> :w<CR> :!clear<CR> :!make && ./%<<CR>
autocmd filetype cpp nnoremap <F8> :w<CR> :!clear<CR> :!make && ./%<<CR>
