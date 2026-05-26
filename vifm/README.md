#### Vifm settings
Vi File Manager  

#### Create Repo on the CLI
```bash
c ~/.config/vifm
git init
echo "#### Vifm settings" >> README.md
git add .
git commit -m "Inital commit"
```

```bash
gh auth status
    gh auth login
```

```bash
gh repo creat config_vifm --public --source=. --remote=origin
git push -u origin main
```

Use: `git status` to check.
