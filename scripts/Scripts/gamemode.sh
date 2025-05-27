#!/bin/bash

# Parse command line arguments
for arg in "$@"
do
    case $arg in
        --deck)
        # Change screen resolution to 1200x800
        # Replace "Display" with the name of your display
        xrandr --output DP-4 --mode 1280x800
        shift
        ;;
        *)
        shift
        ;;
    esac
done

# Remove padding and border color from bspwm windows
bspc config border_width         0
bspc config window_gap           0
bspc config top_padding          0
bspc config right_padding        0
bspc config bottom_padding       0
bspc config left_padding         0
bspc config focused_border_color "#00000000"

# Force 1440p window
bspc config left_monocle_padding 1280
bspc config right_monocle_padding 1280
bspc config top_monocle_padding 5
bspc config bottom_monocle_padding 5

# Generate a black 5120x1440 image
convert -size 5120x1440 xc:black /tmp/black.png

# Set the black image as the wallpaper
feh --bg-fill /tmp/black.png

# Hide Polybar
polybar-msg cmd hide
