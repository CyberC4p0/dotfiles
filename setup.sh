#!/bin/bash

# Pathogen Installation
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Syntastic Syntax Checkers Installation
# Pylint
sudo apt-get install pylint

# Tidy (For HTML)
sudo apt install tidy

# CSSLint
sudo npm install -g csslint

# Javac
sudo apt install default-jre
sudo apt install default-jdk