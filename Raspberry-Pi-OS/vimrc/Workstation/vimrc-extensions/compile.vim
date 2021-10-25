"----------------------------------
"Compile/Run languages with <F9> and clear console
autocmd filetype java nnoremap <F9> :w<CR> :!clear<CR> :!javac % && java %<<CR>
autocmd filetype sh nnoremap <F9> :w<CR> :!clear<CR> :!bash %<CR>
autocmd filetype c nnoremap <F9> :w<CR> :!clear<CR> :!gcc % -o %< && %<<CR>
autocmd filetype cpp nnoremap <F9> :w<CR> :!clear<CR> :!g++ % -o %< && ./%<<CR>
autocmd filetype python nnoremap <F9> :w<CR> :!clear<CR> :!python3 ./%<CR>
autocmd filetype perl nnoremap <F9> :w<CR> :!clear<CR> :!perl ./%<CR>
"View MD (Markdown) on WSL
"Run HTML on Windows
"autocmd filetype html nnoremap <F9> :w<CR> :!clear<CR> :!chrome %<CR>
"Run HTML on Linux
"autocmd filetype html nnoremap <F9> :w<CR> :!clear<CR> :!google-chrome %<CR>
"Compile/Run C/CPP using Makefile with <F8> and clear console
autocmd filetype c nnoremap <F8> :w<CR> :!clear<CR> :!make && ./%<<CR>
autocmd filetype cpp nnoremap <F8> :w<CR> :!clear<CR> :!make && ./%<<CR>
