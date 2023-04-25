#!/usr/bin/env fish

fisher remove \
    dracula/fish \
    PatrickF1/fzf.fish \
    jethrokuan/z \
    0rax/fish-bd \

set -l MYFISH_PATH (realpath (status dirname))

rm -fv ~/.config/fish/config.fish

for file in $MYFISH_PATH/functions/*.fish
    rm -fv ~/.config/fish/functions/(path basename $file)
end

rm -fv ~/.config/mytheme.omp.json
