# Workstation Vimrc Config
*Supported systems:*
- *Linux*: (Any distro based off of debian)
- *Windows*: Windows Subsystem for Linux (Ubuntu/Debian/Kali Linux)

Article on how to enable Windows Subsystem for Linux https://www.windowscentral.com/install-windows-subsystem-linux-windows-10

## Features/Keymappings
### Keymappings
- `<F2>` to Toggle NERDTree (`:NERDTreeToggle`)
- `<F3>` to toggle line numbers (`:set invnumber`)
- `<F4>` to quit without saving (`:q!`)
- `<F5>` to open a split window (`:vsplit`)
- `<Tab>` to switch between split windows (CTRL+w+w)
- `<F6>` to toggle between passive/active syntastic checker (`:SyntasticToggleMode`)
- `<F8>` to compile/run C/CPP using Makefile and clear console
- `<F9>` to compile/run languages and clear console
- `<F12>` to source file (`:source %`)

### Features
- Autosave everytime you go into normal mode
- Syntax checker everytime active mode is toggled with `<F6>` and into normal mode in vim
- Nerdtree for easy file tree access
- Autocompleter for vim.. Depending on filetypes, it will give you a brief description about certain functions and objects
- The greatest color scheme of all time: "Gruvbox"! As said so by "The Primeagen".
- Pear Tree for autopairs (Ex: `()`, `{}`, `[]`, `<>`, `""`, `''`)
- Vim rainbow for different color for symbols to be able to be destinguished easier.

### Integrated Syntastic Checkers
- CSSLint (For CSS)
- Javac (For Java)
- Pylint (For Python)
- Tidy (For HTML)

### Supported F9 filetypes/languages
- C
- CPP
- HTML
- Java
- Perl
- Python
- Shell

*Note:* You will need to install the languages yourself with the exception of Java since in comes backed up on the installation script.

## Running HTML via Vim
*Read only if you plan to run HTML on your system*

You will need to uncomment either of the following HTML commands depending on which system you're on:

### Linux
`"autocmd filetype html nnoremap <F9> :w<CR> :!clear<CR> :!google-chrome %<CR>`

Remove the " symbol in order to uncomment in the vimrc
### Windows (Subsystem For Linux)
`"autocmd filetype html nnoremap <F9> :w<CR> :!clear<CR> :!powershell.exe start chrome %<CR>`

Remove the " symbol in order to uncomment in the vimrc
## Installation

### Linux (Also For Windows Subsystem for Linux)
First run the installation shell script with the following command:
```
sh ./installation.sh
```
After running the installation script, you will need to access the vimrc and run the following commands in vim:
- *Vim-Plug:* `:PlugInstall`
- *Vundle:* `:PluginInstall`

After Installing the plugins, you will need to install YouCompleteMe manually with the following commands:
```
cd ~/.vim/plugged/YouCompleteMe
./install.py
```
After you have followed all the instructions, ENJOY!
