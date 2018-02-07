#!/bin/bash

cd ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/colors
mv dotfiles/solarized.vim ~/.vim/colors/
echo "Moving .vimrc, .bash_custom, .tmux.conf"
mv dotfiles/.vimrc ~
mv dotfiles/.bash_custom ~
mv dotfiles/.tmux.conf ~

echo "Now launch vim and :PluginInstall, then source .bash_custom"
