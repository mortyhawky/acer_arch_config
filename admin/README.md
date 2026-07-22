### Admin for configuration files

#### Info and scripts for administration of config files.  

Export a list of explicitly installed packages:
```bash
c ~/.config/admin
c $XDG_CONFIG_HOME/admin
pacman -Qqe > $XDG_CONFIG_HOME/admin/pkglist-arch-$(date -Iseconds).txt
bat $XDG_CONFIG_HOME/admin/pkglist-.........
```

Restore with:
```bash
pm -S --needed - <$XDG_CONFIG_HOME/admin/pkglist-...........
```

Services Arch Systemd:
Ctrl + n to toggle line numbers in vim
```bash
systemctl status |grep service > \
    $XDG_CONFIG_HOME/admin/services-arch.txt

bat $XDG_CONFIG_HOME/admin/services-arch.txt
```

Services Artix openrc:
```bash
rc-status > $XDG_CONFIG_HOME/admin/services-artix.txt

cat $XDG_CONFIG_HOME/admin/services-artix.txt
```

Check dmesg:
```bash
sudo dmesg |grep -i --color error
sudo dmesg |grep --color -i microcode
```
