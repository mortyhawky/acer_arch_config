# bspc (Binary Space Partitioning Client)

```bspc general syntax
bspc DOMAIN [SELECTOR] COMMAND [ARGUMENTS]
```
[Command Reference](https://madnight.github.io/bspwm/COMMANDS/)

```bash
bspc wm -r
wm = Window manager operations
```


WM Commands

Control the window manager itself.

```
# Quit bspwm
bspc quit       

# Quit with a specific exit code
bpsc quit 1     

# Dump state to file (for restoring after restart)
bspc wm -d > /tmp/bspwm-state

# Load state from file
bspc wm -l /tmp/bspwm-state

# Adopt orphaned windows (after a crash/restart)
bspc wm -o
```
