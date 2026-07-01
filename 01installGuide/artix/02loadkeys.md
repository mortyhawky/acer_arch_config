#### loadkeys

```bash
cd ~
loadkeys no
echo "keycode 58=Escape" >> esc.map
loadkeys esc.map
set -o vi
```

~/.inputrc
```inputrc
set editing-mode vi
set keymap vi-insert
"\C-l": clear-screen
```
