### Admin for configuration files

#### Info and scripts for administration of config files.  

Export a list of explicitly installed packages:
Ctrl + n to toggle line numbers in vim
```bash
c ~/.config/admin
c $XDG_CONFIG_HOME/admin
ll
rm -rf pkglist-arch* services-arch* install.list && ll

CURRENT="$(date -Iseconds)" && echo $CURRENT

pacman -Qqe > \
    "$XDG_CONFIG_HOME/admin/pkglist-arch-$CURRENT.txt" \
    && ll

b pkglist- [Tab-completion]

echo "Number of pkg: $(pm -Qqe | wc -l)" >>\
    "$XDG_CONFIG_HOME/admin/pkglist-arch-$CURRENT.txt"

b pkglist- [Tab-completion]
gitall
```

Restore with:
```bash
cat pkglist-arch-$CURRENT.txt | g "Number" -v > install.list
cat install.list
sudo pacman -S --needed $(cat install.list)
```

Services Arch Systemd:
```bash
ll && \
    systemctl list-units --state=running > \
    "$XDG_CONFIG_HOME/admin/services-arch.txt" \
    && ll

bat $XDG_CONFIG_HOME/admin/services-arch.txt

echo "Number of services:"\
     "$(cat $XDG_CONFIG_HOME/admin/services-arch.txt | wc -l)" >>\
           "$XDG_CONFIG_HOME/admin/services-arch.txt"

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

#### Git Locations:

```bash
cd ~/.config/
gitall

cd /a/prog/
gitall

cd /a/linux/arch/
gitall
```
