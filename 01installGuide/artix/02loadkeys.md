#### loadkeys

```bash
cd ~
sudo loadkeys no
echo "keycode 58=Escape" >> esc.map
sudo loadkeys esc.map
```

##### Readline settings for bash
~/.inputrc
```inputrc
set editing-mode vi
set keymap vi-insert
"\C-l": clear-screen
```
