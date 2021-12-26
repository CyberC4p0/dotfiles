"-------------Mouse Toggle----------
let s:mouse_scrolling_toggle = 1
if s:mouse_scrolling_toggle == 1
    function! Mouse_Scrolling_Toggle()
        if &mouse == ""
            set mouse=a
        else
            set mouse=
        endif
    endfunction
    command! MouseScrollingToggle execute "call Mouse_Scrolling_Toggle()"
endif
map <Leader>m :MouseScrollingToggle<CR>

"------------Reload File-----------
nnoremap <Leader>e :e!<CR>

"----------Save Read-Only----------
map <Leader>! :w !sudo tee %<CR>

"--------------Quit----------------
map <Leader>q :q!<CR>
map <Leader>qa :qa<CR>

"-------------Autocomplete---------
inoremap <Leader>c <C-n>

"-----------Split Window-----------
map <Leader>sw :vnew<CR>
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

"------------Terminal--------------
map <Leader>t :set mouse=a<CR>:vertical terminal<CR>

"----------Resizing Windows--------
nnoremap <Leader>; :vertical resize +5<CR>
nnoremap <Leader>' :vertical resize -5<CR>

"----------------Tabs--------------
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"--------------Source--------------
map <F12> :source %<CR>
