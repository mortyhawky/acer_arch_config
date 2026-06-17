#!/usr/bin/env bash


ln -fs ~/.config/bash/bashrc          ~/.bashrc
ln -fs ~/.config/bash/bash_profile    ~/.bash_profile

ls ~ -Al --color=always | grep -E --color=always "^l"
