#!/bin/bash

mount -t cifs -o guest //192.168.1.17/music /music

cd cherrymusic
python3 cherrymusic --update

rm /root/.local/share/cherrymusic/cherrymusic.pid

python3 cherrymusic
