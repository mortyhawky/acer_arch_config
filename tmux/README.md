### My tmux settings:

Link:
[https://github.com/tmux/tmux/wiki]

```bash
cd ~/.config/tmux
git init
echo "#### My tmux config" >> README.md
git add -Av
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

