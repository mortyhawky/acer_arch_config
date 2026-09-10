#!/usr/bin/env bash

### ENVIRONMET ###
mkdir   -p ~/.local/share
: "${XDG_CONFIG_HOME:=$HOME/.config}"
source  $HOME/.config/bash/exports

### INPUT CONFIGURATION ###
#localectl set-x11-keymap no pc105 nodeadkeys caps:escape
#setxkbmap -layout no -model pc105 \
#          -variant nodeadkeys -option caps:escape

xmodmap "$XDG_CONFIG_HOME/x11/.Xmodmap"
xset    r rate 250 40 -dpms s 7200

### WALLPAPER ###
#"$XDG_CONFIG_HOME/feh/setWallPaper.sh" &

### SCREEN SAVER ###
#xset    -dpms s 2400 r rate 250 40

### COMPOSITOR ###
#pkill   --exact picom 2>/dev/null
#picom   --config "$XDG_CONFIG_HOME/picom/picom.conf"  \
#            >> ~/.local/share/picom.log 2>&1 &

### HOTKEY DAEMON ###
pkill   --exact sxhkd 2>/dev/null
sxhkd   -c "$XDG_CONFIG_HOME/sxhkd/bspwm.xhk" \
            >> ~/.local/share/sxhkd.log 2>&1 &

### Dual Screen setup:
#xrandr --output eDP1 --primary --mode 1600x900 --pos 0x0 --rotate normal --output HDMI1 --mode 1920x1200 --pos 1950x0 --rotate normal --output VIRTUAL1 --off &

### WINDOW MANAGER ###
#xmodmap "$XDG_CONFIG_HOME/x11/.Xmodmap"
#/usr/bin/alacritty &
exec bspwm
