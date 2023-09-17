function fish_prompt
    # Prompt renders as: guy@avital:~/path/to/something$
    echo -ns (set_color brgreen) $USER@$hostname (set_color normal) ":" (set_color brblue) (prompt_pwd) (set_color normal) '$ '
end
