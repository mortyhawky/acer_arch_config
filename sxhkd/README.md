#### Sxhkd settings
Simple X Hot Key Daemon  
`pm -S sxhkd`

#### Create Repo on the CLI
```bash
c ~/.config/sxhkd
git init
echo "#### Sxhkd settings" >> README.md
git add .
git commit -m "Inital commit"
```

```bash
gh auth status
    gh auth login
```

```bash
gh repo create config_sxhkd --public --source=. --remote=origin
git push -u origin main
```

Use: `git status` to check
