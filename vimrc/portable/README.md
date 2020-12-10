# Portable-vimrc-config
A portable vimrc config using the built-in features of Vim and mapping them to keys. Since its a portable config, there are no plugins used nor that need to be installed! Enjoy!
# Features/Kep Mappings
- `F2` to toggle Explore feature (`:Lexplore`)
to save (`:w`)
- `F3` to open a split window (`:vsplit`)
- `<Leader>h` to switch to left window (`:wincmd h`)
- `<Leader>j` to switch to bottom window (`:wincmd j`)
- `<Leader>k` to switch to upper window (`:wincmd k`)
- `<Leader>l` to switch to right window (`:wincmd l`)
- `<Leader>+` to resize window +5 (`:vertical resize +5`)
- `<Leader>-` to resize window -5 (`:vertical resize -5`)
- `F4` to toggle line numbers (`:set invnumber`)
- `F8` to compile/run C/CPP using Makefile and clear console
- `F9` to compile/run languages and clear console
- `F12` to source vimrc with a click of a key instead of typing the full thing (`:source %`)
- `<Leader>w` to save (`:w`)
- `<Leader>q` to quit forcefully (`:q!`)

# Supported F9 filetypes/languages
- C
- CPP
- HTML (Read note)
- Java
- Perl
- Python
- Shell

# Note about HTML F9 command mapping
*Read only if you plan to run HTML on your system

You will need to uncomment either of the following HTML command mappings depending on which system you're on:
### Windows
`"autocmd filetype html nnoremap <F9> :w<CR> :!clear<CR> :!powershell.exe start chrome %<CR>`

Remove the " symbol in order to uncomment in the vimrc
### Linux
`"autocmd filetype html nnoremap <F9> :w<CR> :!clear<CR> :!google-chrome %<CR>`
  
Remove the " symbol in order to uncomment in the vimrc`
