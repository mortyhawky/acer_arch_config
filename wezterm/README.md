#### wezterm

```
sudo pacman -Rns wezterm
sudo pacman -S --needed base-devel git rust cargo cmake python pkgconf ttf-nerd-fonts-symbols-mono ttf-jetbrains-mono
git clone https://aur.archlinux.org/wezterm-git.git
cd wezterm-git
makepkg -si
makepkg -Cci
```

```bash
wezterm --version
wezterm --help |less
wezterm start --help |less
wezterm start --always-new-process
wezterm start --new-tab
```
