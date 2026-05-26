#!/usr/bin/env zsh
## Updated: 2026-04-21 13:09 Tue

local SCRIPT_PATH="${0}"
echo "\nStart: $SCRIPT_PATH"
source $ZDOTDIR/alias.zsh
#all functions in $ZDOTDIR/funcitons.zsh is prefixed with f_

#clear
echo "command:  git status"
#l
git status --short


#if ! git status --porcelain | grep -q .; then
#  echo "---> UP TO DATE "
#  return
#fi
#f_pause
#
##clear
#echo "command:  git add -A -v"
#git add -A -v  |grep -i --color=always "add"
#f_pause
#
##clear
#echo "command:  git commit -m \"$(date -Iseconds)\" "
#git commit -m "$(date -Iseconds)" -v  |grep -i --color=always "changed" 
##git commit -m "$(date -Iseconds)" -v |$BAT 
#f_pause
#
##clear
#echo "command:  git push"
##git push -v |grep -i --color=always "pushing"
##git push -v |grep -i --color=always "write"
#git push --porcelain |grep -i --color "To https"
