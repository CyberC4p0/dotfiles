# Workstation Vimrc Config
*Supported systems:*
- *Linux*: (Any distro based off of debian)
- *Windows*: Windows Subsystem for Linux (Ubuntu/Debian/Kali Linux)

Article on how to enable Windows Subsystem for Linux https://www.windowscentral.com/install-windows-subsystem-linux-windows-10

## Features/Keymappings
### Keymappings
- `U` to undo in normal mode in Vim
- `<F2>` to toggle NERDTree (`:NERDTreeToggle`)
- `<F3>` to toggle Undotree (`:UndotreeToggle`)
- `<F5>` to open a split window (`:vnew`)
- `<F6>` to toggle between passive/active syntastic checker (`:SyntasticToggleMode`)
- `<F8>` to compile/run C/CPP using Makefile and clear console
- `<F9>` to compile/run languages and clear console
- `<F10>` to toggle line numbers (`:set invnumber`)
- `<F12>` to source file (`:source %`)
- `<Leader>h` to switch to left window (`:wincmd h`)
- `<Leader>j` to switch to bottom window (`:wincmd j`)
- `<Leader>k` to switch to upper window (`:wincmd k`)
- `<Leader>l` to switch to right window (`:wincmd l`)
- `<Leader>+` to resize split window +5 (`:vertical resize +5`)
- `<Leader>-` to resize split window -5 (`:vertical resize -5`)
- `<Leader>q` to quit forcefully (`:q!`)
- `<Leader>g` to open git commit browser (`:GV`)
- `<Leader>m` to enable mouse scrolling in all modes on WSL (`:set mouse=a`)
- `<Leader>n` to disable mouse scrolling in all modes on WSL (`:set mouse=`)
- `<C-Left>` to switch to previous tab with left arrow key (`:tabprevious`)
- `<C-Right>` to switch to next tab with right arrow key (`:tabnext`)

### Features
- Leader key is ,
- Syntax Highlighting
- Autosave everytime you go into normal mode
- Syntax checker everytime active mode is toggled with `<F6>` and into normal mode in vim. (Default: Passive)
- Nerdtree for easy file tree access
- Undotree to access recent undo's
- Autocompleter for vim.. Depending on filetypes, it will give you a brief description about certain functions and objects
- The greatest color scheme of all time: "Gruvbox"! As said so by "The Primeagen".
- Pear Tree for autopairs (Ex: `()`, `{}`, `[]`, `<>`, `""`, `''`)
- Vim Rainbow for different colors for symbols to be able to be destinguished easier.
- Airline and Airline theme
- Vim Fugitive for Git and statusline feature

### Integrated Syntastic Checkers
- CSSLint (For CSS)
- Javac (For Java)
- Pylint (For Python)
- Tidy (For HTML)

### Supported F9 filetypes/languages
- C
- CPP
- HTML (Under Construction)
- Java
- Markdown (Under Construction)
- Perl
- Python
- Shell

*Note:* You will need to install the languages yourself with the exception of Java since in comes backed up on the installation script.

## Viewing HTML via Vim in browser
*Read only if you plan to run HTML on your system*

You will need to uncomment either of the following HTML commands depending on which system you're on:

### Linux
`"autocmd filetype html nnoremap <F9> :w<CR> :!clear<CR> :!google-chrome %<CR>`

Remove the " symbol in order to uncomment in the vimrc
### Windows (Subsystem For Linux)
*Under Construction*

Remove the " symbol in order to uncomment in the vimrc

## Viewing Markdown via Vim in browser
*Under Construction*

## Installation

### Linux (Also For Windows Subsystem for Linux)
First run the installation shell script with the following commands:
```
cd Workstation-vimrc-config
sh ./installation.sh
```
After running the installation script, you will need to access the vimrc and run the following commands in vim:
- *Vim-Plug:* `:PlugInstall`
- *Vundle:* `:PluginInstall`

Then you hit `<F12>` to source the vimrc and you should see the customizations and the color scheme!

After Installing the plugins, you will need to install YouCompleteMe manually with the following commands:
```
cd ~/.vim/plugged/YouCompleteMe
./install.py
```
After you have followed all the instructions, ENJOY!
