#!/bin/sh

userresources=$HOME/.config/Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

[[ -f "$userresources" ]] && xrdb -merge "$userresources"

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# Source ~/.config/xprofile
[ -f "$HOME/.config/xprofile" ] && . "$HOME/.config/xprofile"

# Start dwm in a loop to allow for restarting (MOD + F2)
exec startdwm

### END OF FILE
