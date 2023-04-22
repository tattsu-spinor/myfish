### Theme (Dracula)
fish_config theme choose "Dracula Official"

### Prompt (oh-my-posh)
oh-my-posh init fish --config ~/.config/mytheme.omp.json --manual | source
oh-my-posh completion fish | source

### Key Bindings
function fish_user_key_bindings
    fzf_configure_bindings \
        --history=\cr \
        --directory=\cf \
        --git_status=\cs \
        --git_log=\cl \

    bind \cz _fzf_search_z
end
