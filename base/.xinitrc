#!/bin/sh

# settings for the nvidia card
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

# settings for the cursor
xsetroot -cursor_name left_ptr

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge -I$HOME $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi


# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# enable the keyboard backlight
/usr/local/share/kb-backlight-enable >> $HOME/.log 2>&1 &

# set the background
feh --bg-fill ~/pictures/wallpapers/.wallpaper.png &

# start bspwm
exec bspwm > $HOME/.log 2>&1 

