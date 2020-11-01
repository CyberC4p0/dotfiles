#!/bin/bash

# Pathogen Installation (Required for Syntastic)
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

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

# YouCompleteMe Installation
sudo apt install build-essential cmake vim python3-dev
cd ~/.vim/plugged/YouCompleteMe
./install.py
