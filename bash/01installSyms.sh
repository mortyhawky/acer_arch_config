#!/usr/bin/env bash

# Create symlinks to XDG_CONFIG_HOME
ln -fsv ~/.config/readline             ~/.inputrc
ln -fsv ~/.config/bash/bash_logout     ~/.bash_logout
ln -fsv ~/.config/bash/bash_profile    ~/.bash_profile
ln -fsv ~/.config/bash/bashrc          ~/.bashrc

# Confirm symlinks
ls ~ -AGlv --sort name --color=always --group-directories-first | grep -E --color=always "^l"
