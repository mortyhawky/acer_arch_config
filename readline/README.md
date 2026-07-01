#### Configuration of Gnu readline

##### Used by: bash, fdisk, python, gdb, psql, myswl, sqlite3, etc.
##### zsh uses ZLE (Zsh Line Editor)

##### Confirm bash and python uses readline:
```bash
ldd "$(which bash)" |grep readline
ldd /usr/bin/bash |g readline
python -c "import readline; print(readline)"
```
