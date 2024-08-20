#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
/etc/X11/Xsession

# set some variables
export monitor=$(xrandr | grep -Po -m1 "\w+(-1)+")
export XDG_CONFIG_HOME=$HOME/.config/

# set background handled in bspwmrc
# xsetbg -fullscreen /home/etonit/Pictures/Shelter_Within_roly_poly_post.jpg

# start graphical interface
sxhkd &
bspwm
