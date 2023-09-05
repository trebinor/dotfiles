#!/bin/bash

swayidle -w \
  timeout 900 ' swaylock -f -c 000000 ' \
  timeout 1800 ' hyprctl dispatch dpms off ' \
  resume ' hyprctl dispatch dpms on '
