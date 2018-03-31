#!/bin/bash
mkdir ~/.vim || exit
git clone --recurse-submodules https://github.com/tadaspaplauskas/vimrc.git ~/.vim || exit
ln -s ~/.vim/vimrc ~/.vimrc || exit
