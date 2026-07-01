#### bootloader

```bash
pacman -S grub efibootmgr os-prober --needed
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub
grub-mkconfig -o /boot/grub/grub.cfg

pacman -S ntfs-3g exfat-utils --needed
nvim /etc/default/grub
    uncomment  GRUB_DISABLE_OS_PROBER=false
mount --types ntfs /dev/nvme0n1p3 --mkdir /win --onlyonce
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub
grub-mkconfig -o /boot/grub/grub.cfg
```

To find windows you need to run grub-mkconfig from artix linux

