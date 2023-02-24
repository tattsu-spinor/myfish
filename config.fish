### Theme (Dracula)
fish_config theme choose "Dracula Official"

### Prompt (bobthefish)
set -g theme_display_git_default_branch yes
set -g theme_display_docker_machine yes
set -g theme_title_display_process yes
# set -g theme_display_user yes
# set -g theme_display_hostname yes
# set -g theme_display_sudo_user yes
set -g theme_date_format "+%Y/%m/%d %a %H:%M:%S"
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g theme_display_jobs_verbose yes
set -g theme_color_scheme nord
set -g fish_prompt_pwd_dir_length 0
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$ '

### Key Bindings
function fish_user_key_bindings
    fzf_configure_bindings \
        --history=\cr \
        --directory=\cf \
        --git_status=\cs \
        --git_log=\cl \

    bind \cz _fzf_search_z
end
