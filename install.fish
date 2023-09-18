#! /usr/bin/env fish

set -g cwd $(command pwd)
set -g config "$HOME/.config"
set -g share "$HOME/.local/share"

function link-fish
    ln -s $cwd/fish $config/fish
end

function link-fonts
    for font in $cwd/fonts/*
        set -l base_name (command basename $font)
        ln -s $font $share/fonts/$base_name
    end
end

link-fish
link-fonts
