#!/bin/bash

cd ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/colors
mv dotfiles/solarized.vim ~/.vim/colors/
mv dotfiles/.bash_custom ~
mv dotfiles/.tmux.conf ~

echo "Now launch vim and :PluginInstall, then source .bash_custom"
