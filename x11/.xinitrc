#!/usr/bin/env bash

### ENVIRONMET ###
mkdir -p ~/.local/share
: "${XDG_CONFIG_HOME:=$HOME/.config}"
source $HOME/.config/bash/exports

### INPUT CONFIGURATION ###
setxkbmap -layout no -model pc105 \
          -variant nodeadkeys -option caps:escape
xset    r rate 200 40
xmodmap "$XDG_CONFIG_HOME/x11/.Xmodmap"

### WALLPAPER ###
"$XDG_CONFIG_HOME/feh/setWallPaper.sh" &

### SCREEN SAVER ###
xset -dpms s 2400

### COMPOSITOR ###
pkill --exact picom 2>/dev/null
picom --config "$XDG_CONFIG_HOME/picom/picom.conf"  \
    >> ~/.local/share/picom.log 2>&1 &

### HOTKEY DAEMON ###
pkill --exact sxhkd 2>/dev/null
sxhkd -c "$XDG_CONFIG_HOME/sxhkd/bspwm.xhk" \
    >> ~/.local/share/sxhkd.log 2>&1 &

### WINDOW MANAGER ###
#xmodmap "$XDG_CONFIG_HOME/x11/.Xmodmap"
exec bspwm
