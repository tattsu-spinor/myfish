### Theme (bobthefish)
set -g theme_display_git_default_branch yes
set -g theme_display_docker_machine yes
set -g theme_title_display_process yes
# set -g theme_display_user yes
# set -g theme_display_hostname yes
# set -g theme_display_sudo_user yes
set -g theme_date_format "+%Y/%m/%d %a %H:%M:%S"
set -g theme_show_exit_status yes
set -g theme_display_jobs_verbose yes
set -g theme_color_scheme dracula
set -g fish_prompt_pwd_dir_length 0
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$ '

### Paths
fish_add_path \
    /opt/homebrew/bin \
    /opt/homebrew/sbin \

### Key Binding
function fish_user_key_bindings
    # キーバインドを追加
end
fzf_configure_bindings --directory=\cf --git_status=\cs --git_log=\cl
