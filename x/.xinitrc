#!/bin/sh
xrdb ~/.Xresources
xsetroot -cursor_name left_ptr
exec bspwm
