#### My dmenu config

```bash
cd ~/.config/dmenu

v config.h
   "AdwaitaMono Nerd Font Mono:size=12"
diff -u config.def.h config.h > 2026_04_18_1707-morty.patch

v .gitignore
    LICENSE
    dwm
    *.o
    *.png
```

```bash
git init
git add .
git commit -m "Inital commit"
```

```bash
gh auth status
  gh auth login
```

```bash
gh repo create config_dmenu --public --source=. --remote=origin
git push -u origin main
```
