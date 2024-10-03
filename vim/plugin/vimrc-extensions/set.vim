"---------Syntax & Filetype---------
syntax on
filetype plugin on
au BufNewFile,BufRead *.xaml setf xml

"-----------------Set---------------
set tabstop=4 softtabstop=4
set foldmethod=indent
set shiftwidth=4
set relativenumber
set number
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set hlsearch
set incsearch
set ignorecase
set splitright
set title
set noerrorbells
"set shell=pwsh.exe
"set shellcmdflag=-command
set shell=/bin/zsh
set pastetoggle=<F4>
set encoding=utf-8
set scrolloff=8
set noshowmode
set cmdheight=1
set showcmd
set path+=**
set wildmenu
set complete+=kspell
set completeopt=menuone,longest,preview
set shortmess+=c
set nocompatible
let mapleader=","
set backspace=2
set belloff=all
set background=dark
"set guifont=Dina:h11
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set mouse=a
