### /etc/zsh/  Global Zsh Config Files

```bash
git init
echo "### /etc/zsh  Config Files" >> README.md
git add -Av
eza
git commit -m "$(date)"
git status
gh repo create config_etc_zsh_ --public --source=. --remote=origin
git push -u origin main
git status
```

#### Change Owner:
```zsh
sudo chowm m:m -R /etc/zsh
```

#### Backup Default Files:
```zsh
cp -vf /etc/zsh/zsh/zprofile /etc/zsh/zprofile_default
cp -vf /etc/zsh/zsh/zshenv /etc/zsh/zshenv_default
```

### Create Symlinks
```zsh
ln -svf /home/m/.config/_etc_zsh_/zprofile /etc/zsh/zprofile
ln -svf /home/m/.config/_etc_zsh_/zshenv /etc/zsh/zshenv
```
