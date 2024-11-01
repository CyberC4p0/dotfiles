"---------Syntax & Filetype---------
syntax on
filetype plugin on

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

"------------Reload File-----------
nnoremap <Leader>e :e!<CR>

"--------------Quit----------------
map <Leader>q :qa!<CR>

"-----------Split Window-----------
map <Leader>sh :new<CR>
map <Leader>sv :vnew<CR>
nnoremap <Leader>o :only!<CR>
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

"------------Terminal--------------
"map <Leader>tv :vertical terminal++close pwsh.exe -noexit -command<CR>
"map <Leader>th :terminal++close pwsh.exe -noexit -command<CR>
map <Leader>tv :vertical terminal++close<CR>
map <Leader>th :terminal++close<CR>

"------------Tabs------------------
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>tq :tabo!<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"---------Copy To Clipboard-------
function! CopyToClipboard()
    normal! gv
    silent execute 'normal! "+y'
endfunction

vnoremap <C-c> :call CopyToClipboard()<CR>

"-----------New Vim Workstation----
nnoremap <F8> :wa <bar> :new <bar> :tabo! <bar> :only! <bar> :%bd! <bar> :cd ~/<CR>

"------------New Line--------------
nnoremap o o<Esc>
nnoremap O O<Esc>

"------------Vim Session-----------
nnoremap <Leader>m :wa <bar> :mksession!<CR>

"------------Source----------------
nnoremap <F12> :source Session.vim<CR>

"---------Highlight Search---------
nnoremap <C-CR> :nohlsearch<CR>
nnoremap <C-Up> N
nnoremap <C-Down> n

"----------Toggle Folds------------
nnoremap <Leader>f za
nnoremap <Leader>a zi

"-----------Vim Plug-------------
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug '907th/vim-auto-save'
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tmsvg/pear-tree'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/AutoComplPop'

call plug#end()

"------------Autosave--------------
let g:auto_save = 1

"------------Undotree--------------
nnoremap <F3> :UndotreeToggle<CR>

"-------------Vim Rainbow----------
let g:rainbow_active = 1

"------------NERDTree--------------
let NERDTreeShowHidden=1
map <F2> :NERDTreeToggle<CR>

"-----------Git Gutter-------------
function! GitStatus()
    let [a,m,r] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

set signcolumn=no

"----------Colorscheme Toggle------
"Default: Gruvbox Dark - Value 0 equals Gruvbox Dark - Value 1 equals Gruvbox Light
let g:gruvbox_contrast_dark = 'medium'
let &t_Co=256
let g:gruvbox_termcolors=256
colorscheme gruvbox

let s:current_colorscheme = 0
if s:current_colorscheme == 0
    function! Colorscheme_Toggle()
        if s:current_colorscheme == 0
                        let g:gruvbox_contrast_light = 'soft'
                        colorscheme gruvbox
                        set background=light
                        let s:current_colorscheme = 1
        else
                        let g:gruvbox_contrast_dark = 'medium'
            colorscheme gruvbox
                        set background=dark
            let s:current_colorscheme = 0
        endif
    endfunction
    command! ColorschemeToggle execute "call Colorscheme_Toggle()"
endif
map <Leader>cs :ColorschemeToggle<CR>

"-----------Vim Airline-----------
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_solarized_bg='dark'

"-----------Vim Fugitive-----------
"Vim Fugitive
set statusline+=%{FugitiveHead()}
