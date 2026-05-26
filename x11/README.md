#### Xorg settings

Find keycodes: Run `xev`, `pm -S xorg-xev`  
press keys, and look for the keycode value.  

Revert changes: Run `xmodmap -pke > ~/.Xmodmap.backup` before editing,  
then `xmodmap ~/.Xmodmap.backup` to restore.  

Errors: If you see "bad keycode" or similar,  
ensure keycodes exist on your keyboard. Use `xmodmap -pk` to list them.  

Modifiers: Use clear <modifier> and add <modifier> = <keysym> carefully.  
wrong setups can break keyboard behavior.  

Complex layouts: For more advanced needs (multiple levels, compose keys), 
consider XKB (setxkbmap, custom symbols files) instead of xmodmap,  
as it's more powerful and integrated.

### X11 Configuration
