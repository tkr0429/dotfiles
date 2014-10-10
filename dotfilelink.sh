#!/bin/bash

if [ ! -d "~/.dotfile" ];then
    mkdir ~/.dotfile
fi

if [ ! -d "~/.vim" ];then
    mkdir -p ~/.vim/bundle
    git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

fi
cp -pr . ~/.dotfile/
ln -sf ~/.dotfile/.vimrc ~/.vimrc
ln -sf ~/.dotfile/.gvimrc ~/.gvimrc
ln -sf ~/.dotfile/.bashrc ~/.bashrc
ln -sf ~/.dotfile/.bash_profile ~/.bash_profile
ln -sf ~/.dotfile/snippets ~/.vim/
ln -sf ~/.dotfile/.gitconfig ~/.gitconfig
ln -sf ~/.dotfile/.gitignore_global ~/.gitignore_global

