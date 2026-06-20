#### Keyboard Layout tty TERM=linux

```bash
sudo cp /usr/share/kbd/keymaps/i386/qwerty/no.map.gz \
        /usr/local/share/keymaps/no-custom.map.gz
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

Loadkeys vconsole.conf  mkinitcpio -P
```bash
sudo loadkeys /usr/local/share/kbd/keymaps/no-custom.map.gz

sudo nvim /etc/vconsole.conf
    KEYMAP=/usr/local/share/kbd/keymaps/no-custom.map.gz

sudo mkinitcpio -P
rebot
```
