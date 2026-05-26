#!/usr/bin/env zsh
# Updated ArchReal 2026-04-24 07:42 Fri

source $ZDOTDIR/functions.zsh

clear
git status
f_pause
git add -Av
f_pause

git commit -m "$(date -Iseconds)" -v
f_pause
git push -v
