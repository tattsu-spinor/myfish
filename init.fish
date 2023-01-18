#!/usr/bin/env fish

fisher install \
    oh-my-fish/theme-bobthefish \
    jethrokuan/fzf \
    jethrokuan/z \

set -l CURRENT (realpath (status dirname))
set -l FISH ~/.config/fish

ln -fsv $CURRENT/config.fish $FISH