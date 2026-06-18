#!/usr/bin/env bash

### KEYBOARD ###
setxkbmap -layout no -model pc105 -variant nodeadkeys -option caps:escape
xmodmap "$XDG_CONFIG_HOME/x11/.Xmodmap"

### WALLPAPER ###
"$XDG_CONFIG_HOME/feh/setWallPaper.sh" &

### SCREEN SAVER ###
xset -dpms s 2400

### HOTKEY DAEMON ###
sxhkd -c "$XDG_CONFIG_HOME/sxhkd/bspwm.xhk" &

### COMPOSITOR ###
picom --config "$XDG_CONFIG_HOME/picom/picom.conf" &

### WINDOW MANAGER ###
exec bspwm
