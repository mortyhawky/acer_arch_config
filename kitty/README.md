### Kitty Configuration

#### Clone
```zsh
rm -rf $XDG_CONFIG_HOME/kitty
Git clone https://github.com/mortyhawky/config_kitty.git $XDG_CONFIG_HOME/kitty
```

#### Repo Create on the CLI:
```zsh
git init
echo "### Kitty Configuration" >> README.md
git add -Av
git commit --message="$(date)
```

```zsh
gh repo create config_kitty --public --source=. --remote=origin
git push -u origin main
```
