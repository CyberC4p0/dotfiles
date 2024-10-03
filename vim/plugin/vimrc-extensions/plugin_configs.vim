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

"-----------Copilot-----------
let g:copilot#enabled = 1
nnoremap <Leader>c :Copilot<CR>
