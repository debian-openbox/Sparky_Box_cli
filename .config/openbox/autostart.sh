#! /bin/bash

sparky-polkit &
nitrogen --restore &
tint2 &

xscreensaver -nosplash &
(sleep 5; pnmixer) &
if [ -f /opt/sparky/nm-applet-reload ]; then
/opt/sparky/nm-applet-reload &
fi
if [ -f /usr/bin/xfce4-power-manager ]; then
/usr/bin/xfce4-power-manager &
fi
if [ -f /usr/bin/xdg-user-dirs-update ]; then
/usr/bin/xdg-user-dirs-update &
fi

sleep 10 && /usr/bin/conky-session &

package-update-indicator &

compton -cC -i 0.85 -e 0.85 -m 0.9 -r 4 -l -4 -t -4 &

numlockx on &

~/keyboard.sh

fbxkb &

urxvtd -q &

export PATH="${PATH}:$HOME/.scripts"
