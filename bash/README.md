#### MMMB = Morty's Mininal Modular Bash

List only symlinks in ~
```bash
ls -lA ~ | grep -iE --color "^l"
```

vim command:
:r !ls -Ah ~ | grep -i --color -E "^l"
```
lrwxrwxrwx  1 m m      31 Sep 18 13:01 .bash_login -> /home/m/.config/bash/bash_login
lrwxrwxrwx  1 m m      32 Sep 18 13:01 .bash_logout -> /home/m/.config/bash/bash_logout
lrwxrwxrwx  1 m m      33 Sep 18 13:01 .bash_profile -> /home/m/.config/bash/bash_profile
lrwxrwxrwx  1 m m      27 Sep 18 13:01 .bashrc -> /home/m/.config/bash/bashrc
lrwxrwxrwx  1 m m      24 Jul 17 14:23 .inputrc -> /home/m/.config/readline

```
