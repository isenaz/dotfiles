#!/bin/sh
ln -sf ~/.dotfiles/vim/.vimrc ~/.vimrc

[ -d ~/.vim  ] || mkdir ~/.vim
ln -sf ~/.dotfiles/vim/coc-settings.json ~/.vim/coc-settings.json
