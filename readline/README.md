#### Configuration of Gnu readline

##### Used by: bash, python, gdb, psql, myswl, sqlite3, etc.
##### zsh uses ZLE (Zsh Line Editor)

##### Confirm bash and python uses readline:
```bash
ldd "$(which bash)" |grep readline
python -c "import readline; print(readline)"
```
