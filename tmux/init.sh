#!/bin/sh

# install tpm - tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install files into ~/.terminfo to show TrueColor
curl -LO https://invisible-island.net/datafiles/current/terminfo.src.gz && gunzip terminfo.src.gz
/usr/bin/tic -xe tmux-256color terminfo.src
rm terminfo.src.gz
rm terminfo.src

# reload tmux
tmux source ~/.tmux.conf
