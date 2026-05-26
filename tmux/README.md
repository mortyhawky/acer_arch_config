### My tmux settings:

```bash
cd ~/.config/tmux
git init
echo "#### My tmux config" >> README.md
git add .
git commit -m "Initial commit"
```

```bash
gh auth login
gh auth status
```

```bash
gh repo create config_tmux --public --source=. --remote=origin
git push -u origin main
```

