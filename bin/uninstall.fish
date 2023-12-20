#!/usr/bin/env fish

fisher remove \
    dracula/fish \
    PatrickF1/fzf.fish \
    0rax/fish-bd \

set -l MYFISH_PATH (realpath (status dirname)/..)

rm -fv $HOME/.config/fish/config.fish
