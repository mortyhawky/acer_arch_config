#### mkfs.md

Format:
```bash
mkfs.fat -F 32 /dev/nvme0n1p1
fatlabel /dev/nvme0n1p1 ESP

mkfs.ext4 -L ROOT /dev/nvme0n1p2
lsblk -f
```
