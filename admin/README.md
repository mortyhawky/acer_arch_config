### Admin for configuration files

#### Info and scripts for administration of config files.  

Create list of explicitly installed packages:
```bash
pacman -Qqe > pkglist.txt
```

Restore with:
```bash
pacman -S --needed - < pkglist.txt
```

Or even cleaner:
```bash
pacman -S --needed $(<pkglist.txt)
```
