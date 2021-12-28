#!/bin/sh

for functions in ~/.config/shell/functions
do
    [ -f ~/.config/shell/functions ] && source ~/.config/shell/functions
done

echo "$0" | grep "bash$" >/dev/null && [ -f ~/.bashrc ] && source "$HOME/.bashrc"

for exports in ~/.config/shell/exports ~/.config/shell/exports_private
do
    [ -f $exports ] && source $exports
done

[ -f $HOME/.cargo/env ] && source "$HOME/.cargo/env"

export PATH
