#### ssh

VirtualBox:
```
Name    Protocol    HostIP      Host Port   Guest IP    Guest Port 
ssh     TCP         127.0.0.1   2222        -empty-     22   
```

In Artix:
```bash
nmtui
pacman -Sy vifm --needed
vim /etc/ssh/sshd_config
    PermitRootLogin yes
    PasswordAuthentication yes

rc-status
rc-service sshd start
rc-service sshd restart
rc-update add sshd default
rc-status
```

Host:
```
ssh root@127.0.0.1 -p 2222
password: artix
```
