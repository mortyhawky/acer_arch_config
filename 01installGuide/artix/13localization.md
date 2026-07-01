### Localizatio

```bash
pacman -S neovim --needed
nvim /etc/locale.gen
locale-gen
```

```bash
echo 'export LANG="en_US.UTF-8"' >> /etc/locale.conf
echo 'export LC_COLLATE="C"'     >> /etc/locale.conf
cat /etc/locale.conf

echo "export KEYMAP=no" >> /etc/vconsole.conf
bat /etc/vconsole.conf
```

sudo nvim /etc/vconsole.conf
    KEYMAP=no

localectl status
 This only sets the selected keyboard layout in the current tty
 and only until reboot. To make the setting permanent, you have to edit
   /etc/conf.d/keymaps in the installed system.
  It's also useful to set up /etc/vconsole.conf
