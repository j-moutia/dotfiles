#!/bin/sh

## .profile file - runs on login

## Path
export PATH="$(du $HOME/.scripts/ | cut -f2 | tr '\n' ':' )$PATH"

## Default programs
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="brave-nightly"
export READER="zathura"
#export FILE="lf"

# Other paths
export ZDOTDIR="$HOME/.config/zsh"	# zsh .zshrc file

## Start an X server on login
[ "$(tty)" = "/dev/tty1" ] && exec startx

### END OF FILE
