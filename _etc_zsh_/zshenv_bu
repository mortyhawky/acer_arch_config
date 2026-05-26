#!/usr/bin/zsh/env zsh
# /etc/zsh/zsenv
# Updated ArchReal 2026-04-27 16:03 Mon

local SCRIPT_PATH="${(%):-%N}"
export DEBUG="FALSE"
if [[ "$DEBUG" == "true" ]]; then 
  echo "\n--> Start: $SCRIPT_PATH  SL=$SHLVL --> Sourced for all shells"
fi

##  ----  ----  GLOBAL ENVIRONMENT VARIABLES  ----  ----
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local"

export BROWSER="/usr/bin/firefox"
export EDITOR="/usr/bin/nvim"
export POWERSHELL_TELEMETRY_OPTOUT=1
export XAUTHORITY="$XDG_CONFIG_HOME/x11/.Xauthority"
export XINITRC="$XDG_CONFIG_HOME/x11/.xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"


if [[ "$DEBUG" == "true" ]]; then 
  #yes | cp -ivf $SCRIPT_PATH $ZDOTDIR/_etc_zsh_zshenv_backup_
  echo "--> End..: $SCRIPT_PATH"
fi
