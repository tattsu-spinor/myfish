function _fzf_search_z --description "Search z list. Change current directory to the selected directory."
    # history merge incorporates history changes from other fish sessions
    # it errors out if called in private mode
    if test -z "$fish_private_mode"
        builtin history merge
    end

    # Delinate commands throughout pipeline using null rather than newlines because commands can be multi-line
    set commands_selected (
        # Reference https://devhints.io/strftime to understand strftime format symbols
        z --list |
        string replace -a -r "\S+\s+/" "/" |
        string join0 |
        _fzf_wrapper --read0 \
            --print0 \
            --multi \
            --tiebreak=index \
            --prompt="Search Z List> " \
            --query=(commandline) \
            --preview="_fzf_preview_file {}" \
            $fzf_z_opts |
        string split0
    )

    if test $status -eq 0
        builtin cd $commands_selected
    end

    commandline --function repaint
end
