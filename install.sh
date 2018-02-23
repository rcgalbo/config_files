#!/bin/bash
# script to be run after install of linux on ubuntu
# needs to be run as sudo to have root access
sudo apt-get update
sudo apt-get upgrade

# apps
sudo apt-get install git neovim curl gconf2

# shell
sudo apt-get install fish
chsh -s /usr/bin/fish # make fish default

# install omf
curl -L https://get.oh-my.fish | fish

# get spacedark colorscheme
git clone https://github.com/liuchengxu/space-vim-dark
mv space-vim-dark/colors ~/.config/nvim/
rm -rf space-vim-dark

# install flat remix
sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt-get update
sudo apt-get install flat-remix-gnome flat-remix

# nvm
git clone https://github.com/creationix/nvm.git ~/.nvm
cd ~/.nvm
git checkout (git describe --abbrev=0 --tags)
cd ~/.config/fish
git clone git://github.com/passcod/nvm-fish-wrapper.git nvm-wrapper

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	
# battery utilities
# thermald
sudo apt-get install thermald
# tlp
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp


# grive install
sudo apt-get install git cmake build-essential pkgconf libgcrypt11-dev libyajl-dev libboost-all-dev libcurl4-openssl-dev libexpat1-dev libcppunit-dev binutils-dev
git clone https://github.com/vitalif/grive2
cd grive2
mkdir build
cd build
cmake ..
make -j4
sudo make install

read -p "Press [Enter] to set up google drive..."
# grive configuration
cd 
mkdir drive
cd drive 
grive -a
cd
rm -rf grive2


# set up tools
sudo pip install csvkit

# configure home
rm -rf Music/ Public/ Videos/ Pictures/ Templates/ examples.desktop
mv Documents doc
mv Downloads dnld
mv Desktop dsk
mv Pictures pic
