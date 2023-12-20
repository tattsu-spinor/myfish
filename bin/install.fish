#!/usr/bin/env fish

fisher install \
    dracula/fish \
    PatrickF1/fzf.fish \
    0rax/fish-bd \

set -l MYFISH_PATH (realpath (status dirname)/..)

ln -fsv $MYFISH_PATH/config.fish $HOME/.config/fish
