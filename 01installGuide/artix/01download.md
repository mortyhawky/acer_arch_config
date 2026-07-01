#### Artix -> Download iso

Homepage:
```
https://wiki.artixlinux.org/Main/Installation#Fresh_Artix_installation_from_bootable_media
```

Download:
```ps1
win:
c $Env:USERPROFILE\Downloads
rm -Force artix*

linux:
c $HOME/Downloads/
rm -rf artix*
wget https://mirrors.dotsrc.org/artix-linux/iso/artix-base-openrc-20260402-x86_64.iso.sig
wget https://mirrors.dotsrc.org/artix-linux/iso/artix-base-openrc-20260402-x86_64.iso
```

Verify:
```ps1
scoop install gnupg
pm -S wget

gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys A574A1915CEDE31A3BFF5A68606520ACB886B428

gpg --list-keys A574A1915CEDE31A3BFF5A68606520ACB886B428

gpg --auto-key-retrieve --verify artix-base-openrc-20260402-x86_64.iso.sig artix-base-openrc-20260402-x86_64.iso
```
