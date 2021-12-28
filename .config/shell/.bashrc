#!/bin/bash
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.
if [[ "$-" == *i* ]]; then
    PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\w\[$(tput setaf 2)\]\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\n\$ \[$(tput sgr0)\]"
fi

for dotfile_alias_file in ~/.config/aliases ~/.config/aliases_private
do
    [ -f $dotfile_alias_file ] && source $dotfile_alias_file
done
