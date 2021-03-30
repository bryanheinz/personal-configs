#!/bin/zsh

BASEDIR=$(dirname "$0")

zsh "$BASEDIR"/git-setup.zsh

ln -s "$BASEDIR"/vim/themes "$HOME"/.vim
ln -s "$BASEDIR"/vim/vimrc "$HOME"/.vimrc
ln -s "$BASEDIR"/editorconfig "$HOME"/.editorconfig
