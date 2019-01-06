#!/bin/bash
mkdir ~/vim || exit
git clone --recurse-submodules https://github.com/tadaspaplauskas/vimrc.git ~/vim || exit
ln -i ~/vim/vimrc ~/.vimrc || exit
