#!/bin/zsh

# setup colours
mkdir -p ~/.vim/colors
curl -L "https://www.vim.org/scripts/download_script.php?src_id=14937" -o ~/.vim/colors/twilight256.vim

# install vimrc
curl -L "https://raw.githubusercontent.com/bryanheinz/personal-configs/master/vim/vimrc" -o ~/.vimrc
