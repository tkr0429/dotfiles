#!/bin/bash

if [ ! -d "~/.dotfile" ];then
    mkdir ~/.dotfile
fi

<<<<<<< HEAD
=======
if [ ! -d "~/.vim" ];then
    mkdir -p ~/.vim/bundle
    git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

fi
>>>>>>> f605caf3c89c1fa4170ffd103dd1f42c1dd424e6
cp -pr . ~/.dotfile/
ln -sf ~/.dotfile/.vimrc ~/.vimrc
ln -sf ~/.dotfile/.gvimrc ~/.gvimrc
ln -sf ~/.dotfile/.bashrc ~/.bashrc
ln -sf ~/.dotfile/.bash_profile ~/.bash_profile
ln -sf ~/.dotfile/snippets ~/.vim/
<<<<<<< HEAD
=======
ln -sf ~/.dotfile/.gitconfig ~/.gitconfig
ln -sf ~/.dotfile/.gitignore_global ~/.gitignore_global

>>>>>>> f605caf3c89c1fa4170ffd103dd1f42c1dd424e6

