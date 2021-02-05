#!/bin/bash

#---------------------------System---------------------------

# System Update/Upgrade
echo Your system will be setup immediately!
sleep 5
sudo apt-get update && sudo apt-get upgrade -y

# Message
echo System Updated/Upgraded...
sleep 3

# Install npm
sudo apt-get install npm
echo npm has been installed...
sleep 3

# Install Curl
sudo apt-get install curl
echo Curl has been installed...
sleep 3

# Install tree
sudo apt-get install tree
echo Tree has been installed...
sleep 3

# Cmake
sudo apt-get install cmake
echo Cmake has been installed...
sleep 3
clear

# Setup Dotfiles
cd && echo Setting up dotfiles...
sleep 3

# Removing existing dotfiles
sudo rm -r .bashrc .vimrc .gitconfig .bash_aliases /etc/inputrc

# Message
echo dotfiles have been removed...
sleep 2

# Symlinking the dotfiles
ln -s ~/dotfiles/Ubuntu/bash/.bashrc .bashrc
ln -s ~/dotfiles/Ubuntu/bash/.bash_aliases .bash_aliases
ln -s ~/dotfiles/Ubuntu/vimrc/Workstation/.vimrc .vimrc
ln -s ~/dotfiles/Ubuntu/git/.gitconfig .gitconfig
sudo ln -s ~/dotfiles/Ubuntu/f-slash/etc/inputrc /etc/inputrc

# Git Credentials
git config --global credential.helper store

# Message
echo dotfiles have been symlinked...
sleep 3
clear

#---------------------Programming Languages------------------

# Message
echo Setting up 3 programming languages...
sleep 5

# Python
sudo apt-get install python3
sudo apt install python3-pip
pip install numpy
echo Python has been installed...
sleep 3

# C
sudo apt install build-essential
echo C has been installed...
sleep 3

echo 2 Programming languages have been installed...
sleep 5
clear

#-------------------------Vim Setup--------------------------

# Message
echo Setting up Vim...
sleep 5

# Vim
sudo apt-get install vim
echo Vim has been installed...
sleep 3

# Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo Vim Plug has been installed...
sleep 3

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo Vundle has been installed...
sleep 3

# Vim plugins
vim -c ":PlugInstall" -c ":PluginInstall" -c ":call timer_start(20000, { tid -> execute('qa')})"

# YouCompleteMe Manual Installation
cd ~/.vim/plugged/YouCompleteMe
./install.py

# Message
echo Vim plugins have been installed...
sleep 3

# Return to Home Directory and Reset Terminal
cd && reset

# Finish Line
echo "Your system has been fully setup... Enjoy! :)"
