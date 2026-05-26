#!/usr/bin/env zsh
## Updated ArchReal 2026-05-12 09:03 Tue
clear
local scr_pat3="${(%):-%N}"
if [[ "$DEBUG" == "true" ]]; then
  echo "\n  --> Start: $scr_pat3 SL=$SHLVL"
fi

source $ZDOTDIR/.zshrc.local

# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' file-sort name
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' menu select=3
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s%l
zstyle :compinstall filename '$ZDOTDIR/zsh/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines added by Morty:
stty -ixon
bindkey -v
sudo loadkeys $XDG_CONFIG_HOME/kbd/esc.map
NEWLINE=$'\n'
PROMPT="%d SL$SHLVL ${NEWLINE}>> "
#pushd ~
#tmux

if [[ "$DEBUG" == "true" ]]; then
  echo "  --> End..: $scr_pat3 \n"
fi
