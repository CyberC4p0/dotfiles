#!/bin/bash

#---------------------------System---------------------------

# System Update/Upgrade
echo Your system will be setup immediately!
sleep 5
sudo apt-get update
sudo apt-get upgrade

# Install npm
sudo apt-get install npm

# Message
echo npm has been installed...
sleep 3

# Message
echo System Updated/Upgraded...
sleep 5

# Clear Terminal
clear

# Setup Dotfiles
cd && echo Setting up dotfiles...
sleep 3

# Removing existing dotfiles
rm -r .bashrc .vimrc .gitconfig

# Symlinking the dotfiles

ln -s ~/dotfiles/bash/.bashrc .bashrc
ln -s ~/dotfiles/vimrc/.vimrc .vimrc
ln -s ~/dotfiles/git/.gitconfig .gitconfig

# Message
echo dotfiles have been set up...
sleep 5

# Clear Terminal
clear

#---------------------Programming Languages------------------

# Message
echo Setting up 2 programming languages...
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
echo C Has been installed...
sleep 3
echo 2 Programming languages have been installed...
sleep 5

# Clear Terminal
clear

#-------------------------Vim Setup--------------------------

# Message
echo Setting up Vim...
sleep 5

# Pathogen Installation
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Message
echo Pathogen has been installed...
sleep 3

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

# Syntastic Syntax Checkers Installation

# Message
echo Setting up Syntastic syntax checkers...
sleep 3

# Pylint (For Python)
sudo apt-get install pylint

# Message
echo Pylint has been installed...
sleep 3

# Tidy (For HTML)
sudo apt install tidy

# Message
echo Tidy has been installed
sleep 3

# CSSLint (For CSS)
sudo npm install -g csslint

# Message
echo CSSLint has been installed...
sleep 3

# Javac (For Java)
sudo apt install default-jre
sudo apt install default-jdk

# Message
echo Java language and syntax checker have been installed...
sleep 3

# Vim plugins
vim -c ':PluginInstall' \
	-c ":call timer_start(50000, { tid -> execute('PlugInstall')})" \
	-c ":call timer_start(50000, { tid -> execute('qa')})"

# Message
echo Vim plugins have been installed...
sleep 3

# YouCompleteMe Installation
cd ~/.vim/plugged/YouCompleteMe
./install.py

# Message
echo YouCompleteMe has been installed...
sleep 3

# Clear Terminal and Return to Home Directory
cd && clear

# Message
echo "Your system has been fully setup... Enjoy! :)"
