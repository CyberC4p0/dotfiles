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
"map <Leader>tv :vertical terminal++close pwsh.exe -noprofile -noexit -command cd ~/Projects/<CR>
"map <Leader>th :terminal++close pwsh.exe -noprofile -noexit -command cd ~/Projects/<CR>
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
