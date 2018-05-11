#!/bin/sh
# created by Luo Yu

cd ~
mkdir Projects
cd Projects
git clone https://github.com/blodely/Mac-Configurations
cd ~
ln -sf ~/Projects/Mac-Configurations/vundle-vimrc ~/.vimrc
cd .vim
mkdir bundle
cd bundle
git clone https://github.com/VundleVim/Vundle 
vim +PluginInstall +qall

