filetype plugin on

"-------External Vim Scripts-----
source ~/.vim/vimrc-extensions/set.vim
source ~/.vim/vimrc-extensions/built-in_remaps.vim

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
Plug 'github/copilot.vim'

call plug#end()

"---------Vim Plugin Config-------
source ~/.vim/vimrc-extensions/plugin_configs.vim
