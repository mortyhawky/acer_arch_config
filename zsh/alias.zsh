#!/usr/bin/env zsh
## Updated ArchReal 2026-04-25 11:05 Sat

local alias_script="${(%):-%N}"

# DEBUG originate in /etc/zsh/zshenv
if [[ "$DEBUG" == "true" ]]; then
  echo "\n      --> Start: $alias_script      --> Sourced from .zshrc.local \$SHLVL=$SHLVL"
fi

## --------------------------------------------------------
# Source this file from within vim, nvim, vifm
# :!source ~/.config/zsh/alias.sh
# :!source $XDG_CONFIG_HOME/zsh/alias.sh
# :!source $ZDOTDIR/alias.sh
# :!. $ZDOTDIR/alias.sh
## --------------------------------------------------------

# Some aliases depend on functions.zsh
# E.g., c, edwm and mkcd
source $ZDOTDIR/functions.zsh

unalias -a
#alias rm='sudo rm -rf'
alias a='alias'
alias b='command bat'
alias c='f_cdls'
alias cal='cal -m'
alias dm='sudo dmesg'
alias eat='nvim $XDG_CONFIG_HOME/alacritty/alacritty.toml'
alias edwm='f_edit-dwm'
alias et='v $XDG_CONFIG_HOME/tmux/tmux.conf'
alias ev='nvim $XDG_CONFIG_HOME/nvim/init.lua'
alias ez='nvim -O $ZDOTDIR/.zshrc $ZDOTDIR/.zshrc.local && clear && source $ZDOTDIR/.zshrc'
alias g='grep -i --color=always'
alias l='command eza -Alh --icons=always --git --git-ignore --sort modified -r'
alias mkcd='f_mkdir-cd'
alias nohup='nohup'
alias pm='sudo pacman'
alias sc='sudo systemctl'
alias sz='clear && source $XDG_CONFIG_HOME/zsh/.zshrc'
alias t='clear && tmux'
alias v='nvim'
alias vf='vifm'
alias x='startx'

# DEBUG originate in /etc/zshenv
if [[ "$DEBUG" == "true" ]]; then
  echo "      --> End..: $alias_script\n"
fi
