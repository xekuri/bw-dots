#!/bin/sh

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export SDL_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

xrandr --output HDMI-A-0 --mode 1920x1080 --rate 144.0
xrandr --output HDMI-A-1-1 --mode 1920x1080 --rate 75.00 --rotate left --right-of HDMI-A-0
amixer sset 'Master' 100%
xcompmgr &
fcitx &
./Mouse\ settings.sh
wal -i ~/Downloads/banners/pixelcut-export.jpg
exec slstatus &
