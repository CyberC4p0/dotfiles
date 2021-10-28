#---------------------------System---------------------------

# System Update/Upgrade
echo Your system will be setup immediately!
sleep 5
sudo apt-get update && sudo apt-get upgrade -y
echo System Updated/Upgraded...
sleep 3

# Arc Dark Theme Package
sudo apt install arc-theme papirus-icon-theme breeze-cursor-theme

# Neofetch
sudo apt-get install neofetch
echo Neofetch has been installed...
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
sudo rm -r .bashrc .vimrc .gitconfig .bash_aliases
echo dotfiles have been removed...
sleep 2

# Symlinking the dotfiles
ln -s ~/dotfiles/Raspberry-Pi-OS/bash/.bashrc .bashrc
ln -s ~/dotfiles/Raspberry-Pi-OS/bash/.bash_aliases .bash_aliases
ln -s ~/dotfiles/Raspberry-Pi-OS/vimrc/Workstation/.vimrc .vimrc
ln -s ~/dotfiles/Raspberry-Pi-OS/vimrc/Workstation/vimrc-extensions ~/.vim/plugged/vimrc-extension
ln -s ~/dotfiles/Raspberry-Pi-OS/git/.gitconfig .gitconfig
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

# Vim
sudo apt-get install vim
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
neofetch --ascii_distro raspbian
echo "Your system has been fully setup... Enjoy! :)"
