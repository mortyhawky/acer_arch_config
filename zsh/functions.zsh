#!/usr/bin/env zsh
## Updated ArchReal 2026-04-25 11:11 Sat

local SCRIPT_PATH="${(%):-%N}"

# DEBUG originate in /etc/zsh/zshenv
if [[ "$DEBUG" == "true" ]]; then
  #     1 2 3 4 5
  echo
  echo "        --> Start: $SCRIPT_PATH --> Sourced from alias.zsh SL=$SHLVL"
fi

## ------------------------------------------
# To show all shell functions:
# grep --color function $ZDOTDIR/functions.zsh
# Or use: Ctrl+Shift+F in Alacritty Terminal Emulator (ATE)
## ------------------------------------------

function f_cdls {
  cd $1
  command eza -Alh --icons=always --git --git-ignore --sort modified -r
}

function f_mkdir-cd {
  mkdir $1
  f_cdls
}

function f_edit-dwm {
  cd $XDG_CONFIG_HOME/dwm
  nvim config.h
  sudo make clean install
  if [[ "$DISPLAY" == ":0" ]]; then
    RED=$(tput setaf 1)
    RESET=$(tput sgr0)
    echo "\n  ${RED}###### Win+Shift+Q to quit dwm, then x to start dwm again ######${RESET} \n"
  fi
}

function f_pressAnyKey {
  read -sk1 "?Press any key to continue..."
  echo
}
alias f_pause='f_pressAnyKey'

if [[ "$DEBUG" == "true" ]]; then
  #     1 2 3 4 5
  echo "        --> End..: $SCRIPT_PATH \n"
  #echo
fi
