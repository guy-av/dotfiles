#! /usr/bin/env fish

set -g cwd $(command pwd)
set -g config "$HOME/.config"

function link-fish
    ln -s $cwd/fish $config/fish
end

link-fish
