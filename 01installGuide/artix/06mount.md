#### mount

```bash
mount /dev/nvme0n1p2         /mnt      --onlyonce ; lsblk -f
mount /dev/nvme0n1p1 --mkdir /mnt/boot --onlyonce ; lsblk -f
lsblk -o NAME,FSTYPE,LABEL,SIZE,PARTTYPENAME,MOUNTPOINT

mount /dev/nvme0n1p5    --mkdir /mnt        --onlyonce ; lsblk -f
mount /dev/nvme0n1p6    --mkdir /mnt/home   --onlyonce ; lsblk -f
mount /dev/nvme0n1p1    --mkdir /mnt/boot   --onlyonce ; lsblk -f

```
