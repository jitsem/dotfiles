#/bin/bash


sleep 10

while :
do
    xdotool keydown R
    xdotool type "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    xdotool keyup R
    xdotool keydown R
    xdotool type "dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd"
    xdotool keyup R
    xdotool keydown A
    xdotool type "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    xdotool keyup A
    xdotool keydown D
    xdotool type "dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd"
    xdotool keyup D
    sleep 3
done


exit