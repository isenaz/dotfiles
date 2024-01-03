#!/bin/sh

# install tpm - tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# reload tmux
tmux source ~/.tmux.conf
