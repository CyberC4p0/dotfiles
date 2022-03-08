"------------Autosave--------------
let g:auto_save = 1

"------------Undotree--------------
nnoremap <F3> :UndotreeToggle<CR>

"-------------Vim Rainbow----------
let g:rainbow_active = 1

"------------NERDTree--------------
map <F2> :NERDTreeToggle<CR>

"-----------Git Commit-------------
nnoremap <Leader>g :GV<CR>

"-----------Git Gutter-------------
function! GitStatus()
    let [a,m,r] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

set signcolumn=no
"--------------Gruvbox------------
let &t_Co=256
set background=dark
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_termcolors=256
let g:gruvbox_hls_cursor= 'orange'
colorscheme gruvbox

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

"------------Transparency----------
highlight Normal guibg=NONE ctermbg=NONE
