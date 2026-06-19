### Admin for configuration files

#### Info and scripts for administration of config files.  

Create list of explicitly installed packages:
```bash
pacman -Qqe > $XDG_CONFIG_HOME/admin/pkglist.txt
bat $XDG_CONFIG_HOME/admin/pkglist.txt
```

Restore with:
```bash
pacman -S --needed - <$XDG_CONFIG_HOME/admin/pkglist.txt 
```

Or even cleaner:
```bash
pacman -S --needed $(<$XDG_CONFIG_HOME/admin/pkglist.txt)
```
