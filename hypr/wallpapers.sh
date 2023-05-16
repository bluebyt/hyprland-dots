#!/bin/sh

user='bluebyt'
img_array=(~/Pictures/*)

img_array_rndm=( $(echo "${img_array[@]}" | tr ' ' '\n' | sort -R) )

transition="--transition-type outer --transition-pos 1,1 --transition-step 90 --transition-fps 144"

delay=5s

while true; do
	selected_img=${img_array[$RANDOM % ${#img_array[@]}]}
	swww img $selected_img $transition
	sleep ${delay}
echo $selected_img

#notify-send "selected_img"

done
