#!/bin/sh

# install vim-plug
# https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install nerd-font
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
