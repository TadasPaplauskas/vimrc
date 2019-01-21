#!/bin/bash
git clone --recurse-submodules https://github.com/tadaspaplauskas/vimrc.git . || exit
ln -s . ~/.vim || exit
ln -s vimrc ~/.vimrc  || exit
