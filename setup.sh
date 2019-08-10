#!/bin/bash
mkdir ~/.vim || exit
git clone https://github.com/tadaspaplauskas/vimrc.git ~/.vim || exit
ln -i ~/.vim/vimrc ~/.vimrc || exit

