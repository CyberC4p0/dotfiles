set tabstop=4 "Set tabs to 4 spaces
set shiftwidth=4 "Set indentation to 4 when using << or >>
set number "Show line numbers
set ruler "Show row and col position
set incsearch "Search for text as you type it using /
colorscheme ron "Set default color scheme
syntax on "Enable syntax highlighting

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug
Plug 'morhetz/gruvbox'
call plug

"Compile/Run languages with <F9> and clear console
autocmd filetype java nnoremap <F9> :w<CR> :!clear<CR> :!javac % && java %<<CR>
autocmd filetype c nnoremap <F9> :w<CR> :!clear<CR> :!gcc % -o %< && ./%<<CR>
autocmd filetype cpp nnoremap <F9> :w<CR> :!clear<CR> :!g++ % -o %< && ./%<<CR>
autocmd filetype python nnoremap <F9> :w<CR> :!clear<CR> :!python3 ./%<CR>
autocmd filetype perl nnoremap <F9> :w<CR> :!clear<CR> :!perl ./%<CR>
"Compile/Run C/CPP using Makefile or multiple java files with <F8> and clear console
autocmd filetype c nnoremap <F8> :w<CR> :!clear<CR> :!make && ./%<<CR>
autocmd filetype cpp nnoremap <F8> :w<CR> :!clear<CR> :!make && ./%<<CR>
autocmd filetype java nnoremap <F8> :w<CR> :!clear<CR> :!javac *.java && java main<CR>

