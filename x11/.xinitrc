#!/usr/bin/env bash

#                              LAYOUT  MODEL   VARIANT     OPTIONS
sudo localectl set-x11-keymap  no      pc105   nodeadkeys  caps:escape --no-convert &
xmodmap $XDG_CONFIG_HOME/x11/.Xmodmap &
$XDG_CONFIG_HOME/feh/.fehbg &
#$XDG_CONFIG_HOME/x11/dwm_status.sh &
xset -dpms s 20*60 & # 1200s/60s/min=20minutes
#sxhkd & #
sxhkd -c $XDG_CONFIG_HOME/sxhkd/bspwm_xhk &

#cd ~ &
exec bspwm
# No commands below here will be excuted.
