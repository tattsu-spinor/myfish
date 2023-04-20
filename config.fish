### Theme (Dracula)
fish_config theme choose "Dracula Official"

### Prompt (Starship)
starship init fish | source

### Key Bindings
function fish_user_key_bindings
    fzf_configure_bindings \
        --history=\cr \
        --directory=\cf \
        --git_status=\cs \
        --git_log=\cl \

    bind \cz _fzf_search_z
end
