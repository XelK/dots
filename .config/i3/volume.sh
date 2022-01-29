#!/bin/bash


 #set $PrintVolume $(amixer get Master|grep "Front Left\:")

 sink=$(pactl get-default-sink)
 level=$(pactl get-sink-volume $sink |awk '{print $5}')
 set $PrintVolume $level

