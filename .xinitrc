#!/bin/sh

# Language
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Path
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.bin:$PATH"

# IME
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
ibus-daemon -drx

# HiDPI
export GDK_DPI_SCALE=1.50
export QT_DPI_SCALE=1.50
export XCURSOR_SIZE=128
xrandr --dpi 144
xrandr --output eDP-1 --mode 2560x1440

# Programs
~/.fehbg
~/.bin/dwmbar.sh loop &
xrdb ~/.Xresources
redshift -l 48.13:11.57 &
xautolock -time 20 -locker 'sh -c "xset dpms 10 && slock && xset dpms 0"' &
ssh-agent &

exec dwm
