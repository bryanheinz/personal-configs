#!/bin/zsh

# setup colours
mkdir -p ~/.vim/colors
if [[ -f /usr/bin/curl ]]; then
    curl -L "https://www.vim.org/scripts/download_script.php?src_id=14937" \
        -o ~/.vim/colors/twilight256.vim
else
    wget "https://www.vim.org/scripts/download_script.php?src_id=14937" \
        -O ~/.vim/colors/twilight256.vim
fi

# install vimrc
if [[ -f /usr/bin/curl ]]; then
    curl -L "https://raw.githubusercontent.com/bryanheinz/personal-configs/master/vim/vimrc" \
        -o ~/.vimrc
else
    wget "https://raw.githubusercontent.com/bryanheinz/personal-configs/master/vim/vimrc" \
        -O ~/.vimrc
fi
