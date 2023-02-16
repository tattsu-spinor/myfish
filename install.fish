#!/usr/bin/env fish

fisher install \
    oh-my-fish/theme-bobthefish \
    dracula/fish \
    PatrickF1/fzf.fish \
    jethrokuan/z \
    0rax/fish-bd \

set -l MYFISH_PATH (realpath (status dirname))
set -l FISH_PATH ~/.config/fish

ln -fsv $MYFISH_PATH/config.fish $FISH_PATH

for file in $MYFISH_PATH/completions/*.fish
    ln -fsv $file $FISH_PATH/completions
end

for file in $MYFISH_PATH/conf.d/*.fish
    ln -fsv $file $FISH_PATH/conf.d
end

for file in $MYFISH_PATH/functions/*.fish
    ln -fsv $file $FISH_PATH/functions
end
