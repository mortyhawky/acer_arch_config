#### timezone

```bash
ln -fsv /usr/share/zoneinfo/Europe/Oslo /etc/localtime
ls -l --color /etc/localtime

hwclock --systohc
ls -l /etc/adjtime
```
