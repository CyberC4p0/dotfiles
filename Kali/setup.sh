#---------------------------System---------------------------

# Hush Startup Message
touch ~/.hushlogin

# System Update/Upgrade
echo Your system will be setup immediately!
sleep 5
sudo apt update && sudo apt upgrade -y
echo System Updated/Upgraded...
sleep 3
clear

# Win-Kex for GUI
sudo apt install -y kali-win-kex

# Tree
sudo apt install tree

# npm
sudo apt install npm

# Curl
sudo apt install curl

# Neofetch
sudo apt install neofetch

echo System applications have been installed...
sleep 3
clear

# Remove existing dotfiles
sudo rm ~/.bashrc ~/.vimrc ~/.gitconfig ~/.bash_aliases

echo Existing dotfiles have been removed...
sleep 2

# Symlinking the updated dotfiles
ln -s ~/dotfiles/Kali/bash/.bashrc ~/.bashrc
ln -s ~/dotfiles/Kali/bash/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/Kali/git/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/Kali/vimrc/Workstation/.vimrc ~/.vimrc
ln -s ~/dotfiles/Kali/vimrc/Workstation/vimrc-extensions ~/.vim/plugged/vimrc-extensions

echo Dotfiles have been symlinked...
sleep 3
clear

#-------------------Programming Languages--------------------

# C Language
sudo apt install build-essential
echo C Language has been installed...
sleep 3
clear

# Cmake
sudo apt install cmake
echo Cmake has been installed...
sleep 3
clear

#-------------------------Vim Setup--------------------------

echo Setting up Vim...
sleep 5

# Vim
sudo apt install vim

# Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Vim Plugins
vim -c ":PlugInstall" -c ":PluginInstall" -c ":call timer_start(20000, { tid -> execute('qa')})"

# Message
echo Vim plugins have been installed...
sleep 3

# Return to Home Directory, Reset Terminal, and Clear Terminal
cd && reset && clear

# Finish Line
neofetch --asciidistro Kali
echo "Your system has been fully setup... Enjoy! :)"
