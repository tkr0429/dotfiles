#!/bin/bash

if [ ! -d "~/.dotfile" ];then
    mkdir ~/.dotfile
fi

cp -pr . ~/.dotfile/
ln -sf ~/.dotfile/.vimrc ~/.vimrc
ln -sf ~/.dotfile/.gvimrc ~/.gvimrc
ln -sf ~/.dotfile/.bashrc ~/.bashrc
ln -sf ~/.dotfile/.bash_profile ~/.bash_profile
ln -sf ~/.dotfile/snippets ~/.vim/
ln -sf ~/.dotfile/.gitconfig ~/.gitconfig
ln -sf ~/.dotfile/.gitignore_global ~/.gitignore_global


