"-------External Vim Scripts-----
filetype plugin on

source ~/.vim/plugged/vimrc-extensions/set.vim
source ~/.vim/plugged/vimrc-extensions/built-in_remaps.vim

"-----------Vim Plug-------------
call plug#begin('~/.vim/plugged')

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

call plug#end()

"---------Vim Plug Config-------
source ~/.vim/plugged/vimrc-extensions/plugin_configs.vim

"---------Compile Mappings------
source ~/.vim/plugged/vimrc-extensions/compile.vim
