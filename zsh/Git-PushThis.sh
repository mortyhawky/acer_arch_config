#!/usr/bin/env zsh
# Updated ArchReal 2026-04-24 19:36 Fri

local SCRIPT_PATH="${(%)-%N}"
echo "Start: $SCRIPT_PATH"

clear
local SCRIPT_PATH="${0:a}"
echo "---------------- Start: $SCRIPT_PATH -------------------"
command eza -Alh --icons=always --git --git-ignore --sort modified -r

# All my functions in $ZDOTDIR/funcitons.zsh is prefixed with f_
source $ZDOTDIR/functions.zsh

command -v bat >/dev/null && BAT='bat' || BAT='cat'
echo "Using: $(which $BAT)"
#return

# Entry Point
#clear
echo "command:  git status"
#git status |$BAT |grep -i --color=always "modified"
git status --porcelain |$BAT 

if ! git status --porcelain | grep -q .; then
  echo "---> UP TO DATE "
  return
fi

#clear
echo "command:  git add -Av"
git add -Av |$BAT

#clear
echo "command:  git commit -m \"$(date -Iseconds)\" "
git commit -m "$(date -Iseconds)" |$BAT

#clear
echo "command:  git push"
git push --porcelain |$BAT
