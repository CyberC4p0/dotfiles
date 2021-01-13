#!/bin/bash

#---------------------------System---------------------------

# System Update/Upgrade
echo Your system will be setup immediately!
sleep 5
sudo apt-get update
sudo apt-get upgrade

# Message
echo System Updated/Upgraded...
sleep 3

# Install npm
sudo apt-get install npm

# Message
echo npm has been installed...
sleep 3

# Install Curl
sudo apt-get install curl

# Message
echo Curl has been installed...
sleep 3

# Install tree
sudo apt-get install tree

# Cmake
sudo apt-get install cmake

# Message
echo Tree has been installed...
sleep 3

# Clear Terminal
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
ln -s ~/dotfiles/bash/.bashrc .bashrc
ln -s ~/dotfiles/bash/.bash_aliases .bash_aliases
ln -s ~/dotfiles/vimrc/Workstation/.vimrc .vimrc
ln -s ~/dotfiles/git/.gitconfig .gitconfig
sudo ln -s ~/dotfiles/bash/inputrc /etc/inputrc

# Git Credentials
git config --global credential.helper store

# Message
echo dotfiles have been symlinked...
sleep 5

# Clear Terminal
clear

#---------------------Programming Languages------------------

# Message
echo Setting up 3 programming languages...
sleep 5

# Python
sudo apt-get install python3.8
sudo apt install python3-pip
pip install numpy

# Message
echo Python has been installed...
sleep 3

# C
sudo apt install build-essential

# Message
echo C has been installed...
sleep 3

# Java
sudo apt install default-jre
sudo apt install default-jdk

# Message
echo Java has been installed...
sleep 3

echo 3 Programming languages have been installed...
sleep 5

# Clear Terminal
clear

#-------------------------Vim Setup--------------------------

# Message
echo Setting up Vim...
sleep 5

# Vim
sudo apt-get install vim

# Message
echo Vim has been installed...

# Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Message
echo Vim Plug has been installed...
sleep 3

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Message
echo Vundle has been installed...
sleep 3

# Vim plugins
vim -c ":PlugInstall" -c ":PluginInstall" -c ":call timer_start(50000, { tid -> execute('qa')})"

# YouCompleteMe Manual Installation
cd ~/.vim/plugged/YouCompleteMe
./install.py

# Message
echo Vim plugins have been installed...
sleep 3

# Clear Terminal and Return to Home Directory
cd && clear

# Reset Terminal
reset

# Message
echo "Your system has been fully setup... Enjoy! :)"
