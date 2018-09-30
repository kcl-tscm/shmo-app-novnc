#!/bin/bash

Xvfb $DISPLAY -screen 0 ${DISPLAY_WIDTH}x${DISPLAY_HEIGHT}x24 &
sleep 5
openbox-session &
x11vnc -display :1 -nopw -listen localhost -xkb -forever &

ln -s /usr/share/novnc/vnc_auto.html /usr/share/novnc/index.html
websockify -D --web=/usr/share/novnc/ 5800 localhost:5900


# Make sure some directories are created.
mkdir -p /root/config/downloads
mkdir -p /root/config/log/firefox
mkdir -p /root/config/profile

# Generate machine id.
if [ ! -f /etc/machine-id ]; then
    echo "generating machine-id..."
    cat /proc/sys/kernel/random/uuid | tr -d '-' > /etc/machine-id
fi

/root/firefox/firefox --profile /root/config/profile --setDefaultBrowser /root/SHMo2/SHMo2.html


