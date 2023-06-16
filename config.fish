### Theme (Dracula)
fish_config theme choose "Dracula Official"

### Prompt (oh-my-posh)
oh-my-posh init fish --config $HOME/.config/mytheme/powerlevel10k.omp.json --manual | source
oh-my-posh completion fish | source

### zoxide
zoxide init fish | source

### Key Bindings
function fish_user_key_bindings
    fzf_configure_bindings \
        --directory=\eF \
        --git_status=\eS \
        --git_log=\eL \
        --history=\cR \
        --processes=\eP \
        --variables=\cV \

end
