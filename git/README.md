#### Git config

```bash
git clone https://github.com/mortyhawky/confg_git.git $XDG_CONFIG_HOME/git
```

```bash
git init
git add .
git commit -m "Inital commit"
```

```bash
gh auth status
```

```bash
gh repo create config_git --public --source=. --remote=origin
git push -u origin main
```
