#!/bin/bash
# script to be run after install of linux on ubuntu
# needs to be run as sudo to have root access
sudo apt-get update
sudo apt-get upgrade

# apps
sudo apt-get install git tmux neovim curl gconf2

# add git email
git config --global user.email "rcglb627@gmail.com"
git config --global user.name "rgalbo"

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

# vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# conda install
curl https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh | bash

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
rm -rf Music/ Public/ Videos/ Templates/ examples.desktop
mv Documents doc
mv Downloads dnld
mv Desktop dsk
mv Pictures pic
