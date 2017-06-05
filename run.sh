#!/bin/bash

mount -t cifs -o guest //192.168.1.17/music /music

cd cherrymusic
python3 cherrymusic --update
ls /root/.local/share/cherrymusic
rm /root/.local/share/cherrymusic/cherrymusic.pid
touch /root/.local/share/cherrymusic/p.txt
python3 cherrymusic
