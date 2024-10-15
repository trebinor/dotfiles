#!/bin/bash
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.
for dotfile_alias_file in ~/.config/shell/aliases ~/.config/shell/aliases_private
do
    [ -f $dotfile_alias_file ] && source $dotfile_alias_file
done
