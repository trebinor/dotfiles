#!/bin/sh

for functions in ~/.config/shell/functions
do
    [ -f $functions ] && source $functions
done
echo "$0" | grep "bash$" >/dev/null && [ -f ~/.bashrc ] && source "$HOME/.bashrc"

for exports in ~/.config/shell/exports_private ~/.config/shell/exports
do
    [ -f $exports ] && source $exports
done

export PATH
[ -f $HOME/.cargo/env ] && . "$HOME/.cargo/env"
eval "$(fnm env --use-on-cd --shell bash)"
eval "$(starship init bash)"
