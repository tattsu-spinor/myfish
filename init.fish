#!/usr/bin/env fish

fisher install \
    oh-my-fish/theme-bobthefish \
    dracula/fish \
    PatrickF1/fzf.fish \
    jethrokuan/z \

set -l CURRENT (realpath (status dirname))
set -l FISH ~/.config/fish

ln -fsv $CURRENT/config.fish $FISH
