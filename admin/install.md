# Arch Linux Installation

## Prerequisites

Before starting, ensure you have the following:

- A USB drive (at least 4 GB)
- A computer with UEFI support
- A stable internet connection (preferably wired)
- Basic familiarity with terminal commands

## Steps to Install Arch Linux

### 1. Create a Bootable USB Drive

Download the Arch Linux ISO from the official website.

Use the `dd` command to create a bootable USB:

```bash
sudo dd bs=4M if=path/to/archlinux.iso of=/dev/sdX status=progress   
```

Replace `/dev/sdX` with your USB device.

---

### 2. Boot from the USB Drive

1. Insert the USB drive.
2. Restart the computer.
3. Open the boot menu (usually **F12**, **F9**, **Esc**, or **Del**).
4. Select the USB drive.

---

### 3. Set Up the Installation Environment

After booting, you will be presented with a command prompt.

If necessary, set your keyboard layout:

```bash
loadkeys us
```

Connect to the Internet.

- Wired networking is usually configured automatically.
- For Wi-Fi, use the appropriate tools provided by the installation environment.

---

### 4. Partition the Disk

Use `fdisk`, `cfdisk`, or `parted` to create your partitions.

A common layout is:

- EFI System Partition
- Root partition (ext4)
- Optional swap partition

---

### 5. Format and Mount Partitions

Format the partitions:

```bash
mkfs.ext4 /dev/sdX1
mkswap /dev/sdX2
swapon /dev/sdX2
```

Mount the root partition:

```bash
mount /dev/sdX1 /mnt
```

---

### 6. Install the Base System

Install the base packages:

```bash
pacstrap /mnt base linux linux-firmware
```

---

### 7. Configure the System

Generate the `fstab`:

```bash
genfstab -U /mnt >> /mnt/etc/fstab
```

Enter the new installation:

```bash
arch-chroot /mnt
```

Then configure:

- Time zone
- Locale
- Hostname
- Root password

---

### 8. Install a Bootloader

Install and configure GRUB or another bootloader.

---

### 9. Finalize Installation

Exit the chroot:

```bash
exit
```

Unmount the partitions:

```bash
umount -R /mnt
```

Reboot:

```bash
reboot
```

