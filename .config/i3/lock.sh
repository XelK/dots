#!/bin/bash

args="-n -e -f -t -i"
image=$(awk -F "'" '{print $2}' /home/alex/.fehbg)
#image=$(cat ~/.fehbg |awk '{print $3}'|sed "s/'//g")
#size=${#a}
#let "size=$size-2"
#image=$(echo $a|cut -c 9-$size)
i3lock $args $image

#i3lock $args /home/alex/gdriveAlex/Wallpapers/space-blue.png
