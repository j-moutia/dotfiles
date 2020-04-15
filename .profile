#!/bin/sh

## .profile file - runs on login

## Path
export PATH="$(du $HOME/.scripts | cut -f2 | tr '\n' ':' )$PATH"

## Default programs
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="brave-nightly"
export READER="zathura"
export FILE="lf"

# Other paths
export ZDOTDIR="$HOME/.config/zsh"              # zsh .zshrc file
export XDG_CONFIG_HOME="$HOME/.config"
export SUDO_ASKPASS="$HOME/.scripts/dm_pass"    # Use dmenu as password input dialogue

## Start an X server on login
[ "$(tty)" = "/dev/tty1" ] && ! ps -e | grep -qw Xorg && exec startx

### END OF FILE
