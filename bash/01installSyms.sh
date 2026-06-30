#!/usr/bin/env bash

# Create symlinks to XDG_CONFIG_HOME
ln -fsv ~/.config/bash/bashrc          ~/.bashrc
ln -fsv ~/.config/bash/bash_profile    ~/.bash_profile
ln -fsv ~/.config/bash/bash_logout     ~/.bash_logout
ln -fsv ~/.config/readline             ~/.inputrc

# Confirm symlinks
ls ~ -AlG --color=always | grep -E --color=always "^l"
