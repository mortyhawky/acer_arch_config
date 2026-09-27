# pkill -USR1 -x sxhkd
## pkill -SIGUSR1 -exact
```
This command reloads the configuration file of sxhkd 
(Simple X Hotkey Daemon) without stopping or restarting the sxhkd
program itself.

pkill 
A utility that sends a signal to processes based on their name or 
other attributes.

-USR1 (or -SIGUSR1)
Specifies the signal to send.  SIGUSR1 is a user-defined signal.
Many Linux daemons (like sxhkd) catch this specific signal and
interpret it as a command to reload their configuration files on the
fly.

-x --exact (Exact match)
Forces pkill to match the process name exactly. Without -x, running
pkill sxhkd would also kill processes that contain "sxhkd" in their
names (e.g., sxhkd-status or a script named mysxhkd.sh).

sxhkd
The target process name. sxhkd stand for Simple X Hotkey Daemon,
a popular lightweight key-binding daemon for X11 (commonly used with
window managers like bspwm, i3 or awesome).

Use Case
Whenever you edit your ~/.config/sxhkd/sxhkdrc file to add, remove,
or modify keybindings, running this command causes sxhkd to read the
new changes immediately without needing to restart your X session
or kill the background daemon process.
```
