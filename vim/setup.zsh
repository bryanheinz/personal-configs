#!/bin/zsh

function download () {
    if [[ -f /usr/bin/curl ]]; then
        curl -L "$1" -o "$2"
    else
        wget "$1" -O "$2"
    fi
}

# setup vim folder
mkdir -p ~/.vim/{colors,syntax}

# setup colours
download "https://www.vim.org/scripts/download_script.php?src_id=14937" \
    "$HOME/.vim/colors/twilight256.vim"

# download haproxy snyax
download "https://www.vim.org/scripts/download_script.php?src_id=6924" \
    "$HOME/.vim/syntax/haproxy.vim"

# install vimrc
download "https://raw.githubusercontent.com/bryanheinz/personal-configs/master/vim/vimrc" \
    "$HOME/.vimrc"
