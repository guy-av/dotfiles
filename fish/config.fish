if status is-interactive
    # Commands to run in interactive sessions can go here
    fzf_configure_bindings --directory=\ct --git_status=\cs

    set -x fzf_diff_highlighter delta --paging=never --width=20
    set -x fzf_fd_opts --hidden --exclude=.git --no-ignore

    set -x PAGER less -RF --mouse
    set -x MANPAGER less -R --mouse
end
