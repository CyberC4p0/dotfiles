#---------------------------System---------------------------

# System Update/Upgrade
echo Your system will be setup immediately!
sleep 5
sudo apt update && sudo apt full-upgrade -y
echo System Updated/Upgraded...
sleep 3

# VMware Tools: Only for Parrot OS in a virtual machine
sudp apt install open-vm-tools-desktop

# Neofetch
sudo apt install neofetch
echo Neofetch has been installed...
sleep 3

# Install npm
sudo apt install npm
echo npm has been installed...
sleep 3

# Install Curl
sudo apt install curl
echo Curl has been installed...
sleep 3

# Install tree
sudo apt install tree
echo Tree has been installed...
sleep 3

# Cmake
sudo apt install cmake
echo Cmake has been installed...
sleep 3
clear

# Setup Dotfiles
cd && echo Setting up dotfiles...
sleep 3

# Removing existing dotfiles
sudo rm -r .bashrc .vimrc .gitconfig .bash_aliases
echo dotfiles have been removed...
sleep 2

# Symlinking the dotfiles
ln -s ~/dotfiles/Parrot/bash/.bashrc ~/.bashrc
ln -s ~/dotfiles/Parrot/bash/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/Parrot/vimrc/Workstation/.vimrc ~/.vimrc
ln -s ~/dotfiles/Parrot/vimrc/Workstation/vimrc-extensions ~/.vim/plugged/vimrc-extensions
ln -s ~/dotfiles/Parrot/git/.gitconfig ~/.gitconfig
echo dotfiles have been symlinked...
sleep 3
clear

#---------------------Programming Languages------------------

# C
sudo apt install build-essential
echo C has been installed...
sleep 3
clear

#-------------------------Vim Setup--------------------------

# Message
echo Setting up vim...
sleep 5

# Remove Neovim
sudo rm -r /usr/bin/vim /usr/bin/nvim
echo Removed existing installation of neovim...

# Vim
sudo apt install vim
echo Vim has been installed...
sleep 3

# Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo Vim Plug has been installed...
sleep 3

# Vim plugins
vim -c ":PlugInstall" -c ":call timer_start(15000, { tid -> execute('qa')})"
echo Vim plugins have been installed...
sleep 3

# Return to Home Directory and Reset Terminal
cd && reset

# Finish Line
neofetch --asciidistro Parrot
echo "Your system has been fully setup... Enjoy! :)"
