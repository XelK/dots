#! /bin/bash
#setxkbmap -layout it,us -variant ,intl -option grp:ctrl_alt_toggle
#exec i3 -V >>/home/alex/i3log 2>&1
xrdb ~/.Xresources
exec i3
