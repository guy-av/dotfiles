#! /usr/bin/env fish

set -g cwd $(command pwd)
set -g config "$HOME/.config"
set -g share "$HOME/.local/share"

function link-fish
    rm -r $config/fish
    ln -s $cwd/fish $config/
end

function link-gitmux
    ln -s $cwd/gitmux $config/
end

function link-tmux
    ln -s $cwd/tmux $config/

    tmux start
    tmux source ~/.config/tmux/tmux.conf

    if ! test -d $cwd/tmux/plugins/tpm
        git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
        $cwd/tmux/plugins/tpm/bin/install_plugins
    end
end

function link-fonts
    for font in $cwd/fonts/*
        set -l base_name (command basename $font)
        ln -s $font $share/fonts/$base_name
    end
end

link-fish
link-gitmux
link-tmux
