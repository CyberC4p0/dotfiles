#!/bin/bash

#---------------------------System---------------------------

# System Update/Upgrade
echo Your system will be setup immediately!
sleep 5
sudo apt update && sudo apt upgrade -y
echo System Updated/Upgraded...
sleep 3
clear

# Desktop-xfce
sudo apt install kali-desktop-xfce -y

# dbus-x11
sudo apt-get install dbus-x11

# xrdp
sydo apt install xrdp -y

# Tree
sudo apt install tree

# npm
sudo apt install npm

# Curl
sudo apt install curl

echo Tree, npm, and curl have been installed...
sleep 3
clear

# Remove existing dotfiles
sudo rm -r .bashrc .vimrc .gitconfig .bash_aliases /etc/inputrc

echo Existing dotfiles have been removed...
sleep 2

# Symlinking the updated dotfiles
ln -s ~/dotfiles/Kali/bash/.bashrc ~/.bashrc
ln -s ~/dotfiles/Kali/bash/.bash_aliases ~/.bash_aliases
sudo ln -s ~/dotfiles/Kali/f-slash/etc/inputrc /etc/inputrc
ln -s ~/dotfiles/Kali/git/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/Kali/vimrc/.vimrc ~/.vimrc

# Git Credentials
git config --global credential.helper store

echo Dotfiles have been symlinked...
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

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Vim Plugins
vim -c ":PlugInstall" -c ":PluginInstall" -c ":call timer_start(20000, { tid -> execute('qa')})"

# YouCompleteMe Manual Installation
cd ~/.vim/plugged/YouCompleteMe
./install.py

echo Vim plugins have been installed...
sleep 3

# Return to Home Directory, Reset Terminal, and Clear Terminal
cd && reset && clear

# Finish Line
echo "Your system has been fully setup... Enjoy! :)"
