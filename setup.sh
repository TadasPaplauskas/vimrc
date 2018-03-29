#!/bin/sh
git clone git@github.com:tadaspaplauskas/vimrc.git ~/.vim
cd ~/.vim
git submodule init
git submodule update
ln -s ~/.vim/vimrc ~/.vimrc

