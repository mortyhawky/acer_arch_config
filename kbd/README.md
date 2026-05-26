#### Keyboard configurations

##### CapsLock::Escape  (in .zshrc)
```bash
sudo loadkeys $ZDOTDIR/esc.map
```

##### Xmodmap           (in .xinitrc)
```bash
xmodmap ~/.config/kbd/.Xmodmap
```

### Create a repo from CLI:
```bash
c ~/.config/kbd
echo "#### My kbd settings >> README.md
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
gh repo create config_kbd --public --source=. --remote=origin
git push -u origin main
```
