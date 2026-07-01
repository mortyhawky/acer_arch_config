#### mount

vbox:
```bash
mount --types ext4 /dev/nvme0n1p2 --mkdir /mnt      --onlyonce ; lsblk -f
mount --types ext4 /dev/nvme0n1p3 --mkdir /mnt/home --onlyonce ; lsblk -f
mount --types vfat /dev/nvme0n1p1 --mkdir /mnt/boot --onlyonce ; lsblk -f
alias lb="lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT,UUID"
alias lb="lsblk -o NAME,FSTYPE,LABEL,SIZE,PARTTYPENAME,MOUNTPOINT,UUID"
lb
```

real:
```bash
mount --types ext4 /dev/nvme0n1p5 --mkdir /mnt      --onlyonce ; lsblk -f
mount --types ext4 /dev/nvme0n1p6 --mkdir /mnt/home --onlyonce ; lsblk -f
mount --types vfat /dev/nvme0n1p1 --mkdir /mnt/boot --onlyonce ; lsblk -f
lb
```
