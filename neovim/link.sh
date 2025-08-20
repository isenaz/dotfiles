#!/bin/sh
mkdir -p ~/.config/nvim && ln -sf ~/.dotfiles/neovim/init.vim ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim/after/plugin && ln -sf ~/.dotfiles/neovim/after.vim ~/.config/nvim/after/plugin/unmaps.vim

