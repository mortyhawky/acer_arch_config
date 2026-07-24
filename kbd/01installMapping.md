#### Keyboard Layout tty TERM=linux

```bash
sudo cp /a/usr/share/kbd/keymaps/i386/qwerty/no-esc.map \
        /usr/local/share/keymaps/no-esc.map
```

Add mappings to no-custom.map.gz:
```bash
sudo nvim /user/local/share/kbd/keymaps/no-custom.map.gz

# ########################
# ###   MY MAPPINGS   ####
# ########################
keycode  58 = Escape

keycode  41 = bar
	control keycode  41 = nul
	alt     keycode  41 = F13

keycode  53 = minus            underscore
	control keycode  53 = Delete
	alt     keycode  53 = F14
```

loadkeys   /  vconsole.conf   mkinitcpio -P
```bash
sudo loadkeys /usr/local/share/kbd/keymaps/no-esc.map

sudo nvim /etc/vconsole.conf
    KEYMAP=/usr/local/share/kbd/keymaps/no-custom.map.gz

sudo mkinitcpio -P
rebot
```

localectl:
```bash
localectl status
localectl --help
localectl set-keymap no-esc --no-convert
localectl set-x11-keymap no pc105 nodeadkeys caps:escape --no-convert
watch /etc/locale.conf /etc/vconsole.conf
```

Check what keys send
```bash
cat -v
```
