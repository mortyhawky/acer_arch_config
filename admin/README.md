### Admin for configuration files

#### Info and scripts for administration of config files.  

Export a list of explicitly installed packages:
Ctrl + n to toggle line numbers in vim
```bash
c ~/.config/admin
c $XDG_CONFIG_HOME/admin
ll
rm -rf pkglist-arch* && ll

CURRENT="$(date -Iseconds)" && echo $CURRENT

pacman -Qqe > \
    "$XDG_CONFIG_HOME/admin/pkglist-arch-$CURRENT.txt" \
    && ll

echo "Number of pkg: $(pm -Qqe | wc -l)" >>\
    "$XDG_CONFIG_HOME/admin/pkglist-arch-$CURRENT.txt"

b pkglist- [Tab-completion]
gitall
```

Restore with:
```bash
pm -S --needed - <$XDG_CONFIG_HOME/admin/pkglist- [Tab-completion]
// error: target not found: Number of pkg: 57.
// ignore this line.
```

Services Arch Systemd:
```bash
ll && \
    systemctl list-units --state=running |grep service > \
    "$XDG_CONFIG_HOME/admin/services-arch.txt" \
    && ll

bat $XDG_CONFIG_HOME/admin/services-arch.txt
gitall
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
