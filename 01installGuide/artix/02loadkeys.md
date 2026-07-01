#### loadkeys

```bash
cd ~
sudo loadkeys no
echo "keycode 58=Escape" >> esc.map
sudo loadkeys esc.map
set -o vi
vim ~/.inputrc
    
```

~/.inputrc
```inputrc
set editing-mode vi
set keymap vi-insert
"\C-l": clear-screen
```
