#!/usr/bin/env bash

# Create symlinks to XDG_CONFIG_HOME
ln -fs ~/.config/bash/bashrc          ~/.bashrc
ln -fs ~/.config/bash/bash_profile    ~/.bash_profile

# Confirm symlinks
ls ~ -AlG --color=always | grep -E --color=always "^l"
