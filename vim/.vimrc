let s:current_file = expand('%:t')
if s:current_file == ''
	cd ~\Projects\
else
	;
endif

"-------External Vim Scripts-----
source ~/vimfiles/plugin/vimrc-extensions/set.vim
source ~/vimfiles/plugin/vimrc-extensions/built-in_remaps.vim

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
Plug 'vim-scripts/AutoComplPop'

call plug#end()

"---------Vim Plugin Config-------
source ~/vimfiles/plugin/vimrc-extensions/plugin_configs.vim