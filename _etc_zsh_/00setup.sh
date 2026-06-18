#!/usr/bin/env bash

###############################################################
#### Change Owner:
###############################################################
sudo chown m:m -R /etc/zsh/

###############################################################
#### Backup Default Files:
###############################################################
cp -vf /etc/zsh/zprofile    /etc/zsh/zprofile_default
cp -vf /etc/zsh/zshenv      /etc/zsh/zshenv_default

###############################################################
#### Create Symlinks:
###############################################################
ln -svf /home/m/.config/_etc_zsh_/zprofile  /etc/zsh/zprofile
ln -svf /home/m/.config/_etc_zsh_/zshenv    /etc/zsh/zshenv
