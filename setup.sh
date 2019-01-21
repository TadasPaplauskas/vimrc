#!/bin/bash
git clone --recurse-submodules https://github.com/tadaspaplauskas/vimrc.git . || exit
ln -s $(pwd) ~/.vim || exit
ln -s $(pwd)/vimrc ~/.vimrc  || exit
