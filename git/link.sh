#!/bin/sh
# .gitconfig.localは値を上書きする必要があるためコピーする
cp ~/.dotfiles/git/.gitconfig.local ~/.gitconfig.local
ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig
