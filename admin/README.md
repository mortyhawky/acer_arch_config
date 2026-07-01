### Admin for configuration files

#### Info and scripts for administration of config files.  

Export a list of explicitly installed packages:
```bash
c ~/.config/admin
c $XDG_CONFIG_HOME/admin
pacman -Qqe > $XDG_CONFIG_HOME/admin/pkglist-artix.txt
pacman -Qqe > $XDG_CONFIG_HOME/admin/pkglist-arch.txt
bat $XDG_CONFIG_HOME/admin/pkglist-artix.txt
```

Restore with:
```bash
sudo pacman -S --needed - <$XDG_CONFIG_HOME/admin/pkglist-artix.txt 
```

Or even cleaner:
```bash
pacman -S --needed $(<$XDG_CONFIG_HOME/admin/pkglist.txt)
```

Services Arch Systemd:
```bash
systemctl status |grep service > \
    $XDG_CONFIG_HOME/admin/services-arch.txt \
    cat $XDG_CONFIG_HOME/admin/services-arch.txt
```

Services Artix openrc:
```bash
rc-status > $XDG_CONFIG_HOME/admin/services-artix.txt

b $XDG_CONFIG_HOME/admin/services-artix.txt
```

Check dmesg:
```bash
sudo dmesg |grep --color error
sudo dmesg |grep --color -i microcode
```
