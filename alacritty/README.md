#### Alacritty Settings

#### Create Repo on the CLI
```bash
git init  
echo "# My Project" > README.md  
git add .  
git commit -m "Initial commit"  
```

```bash
gh auth login
gh auth status
```

```bash
gh repo create config_alacritty --public --source=. --remote=origin  
git push -u origin main
```

Use: `git status` to check
