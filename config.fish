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
set -g theme_color_scheme terminal2
set -g fish_prompt_pwd_dir_length 0
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$ '

### Paths
fish_add_path \
    /opt/homebrew/bin \
    /opt/homebrew/sbin \

### fzf
# set -U FZF_DEFAULT_OPTS "--reverse --inline-info"

### Key Binding
_fzf_uninstall # fzf.fishのキーバインドを削除
function fish_user_key_bindings
    # bind \cr peco_select_history
    # bind \cd peco_select_z
    bind \cr __fzf_reverse_isearch
    bind \cd __fzf_cd
    bind \cf __fzf_find_file
end
