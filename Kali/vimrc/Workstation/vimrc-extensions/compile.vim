"----------------------------------
"Compile/Run languages with <F9> and clear console
autocmd filetype sh nnoremap <F9> :w<CR> :!clear<CR> :!bash %<CR>
autocmd filetype c nnoremap <F9> :w<CR> :!clear<CR> :!gcc % -o %< && %<<CR>
autocmd filetype cpp nnoremap <F9> :w<CR> :!clear<CR> :!g++ % -o %< && ./%<<CR>
autocmd filetype python nnoremap <F9> :w<CR> :!clear<CR> :!python3 ./%<CR>
