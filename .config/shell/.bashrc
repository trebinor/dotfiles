#!/bin/bash
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.
GIT_PROMPT=$HOME/.local/bin/git-prompt.sh
if [[ -f $GIT_PROMPT ]]; then
    source $GIT_PROMPT
else
    __git_ps1() { :; }
fi
if [[ "$-" == *i* ]]; then
    PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\w\[$(tput setaf 2)\]\$(__git_ps1 \" (%s)\")\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\n\$ \[$(tput sgr0)\]"
    #PS1="%B%S%t%s%b %U%m%u ! %B%c9/\nb${MY_TREE_NUM}::%B%c3%b> "
fi

for dotfile_alias_file in ~/.config/shell/aliases ~/.config/shell/aliases_private
do
    [ -f $dotfile_alias_file ] && source $dotfile_alias_file
done
. "$HOME/.cargo/env"
