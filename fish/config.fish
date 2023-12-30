if status is-interactive
    # Commands to run in interactive sessions can go here
    fzf_configure_bindings --directory=\ct --git_status=\cs

    set -gx fzf_diff_highlighter delta --paging=never --width=20
    set -gx fzf_fd_opts --hidden --exclude=.git --no-ignore
    set -gx MANPATH $MANPATH ~/.local/share/npm-packages/share/man
end
