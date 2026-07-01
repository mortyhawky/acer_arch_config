#### Add Users

```bash
pacman -S sudo --needed
passwd
useradd -mG wheel m
passwd m

EDITOR=/usr/bin/nvim visudo
```
