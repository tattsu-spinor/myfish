#!/usr/bin/env fish

fisher install \
    dracula/fish \
    PatrickF1/fzf.fish \
    jethrokuan/z \
    0rax/fish-bd \

set -l MYFISH_PATH (realpath (status dirname))

ln -fsv $MYFISH_PATH/config.fish ~/.config/fish

for file in $MYFISH_PATH/functions/*.fish
    ln -fsv $file ~/.config/fish/functions
end

ln -fsv $MYFISH_PATH/mytheme.omp.json ~/.config
