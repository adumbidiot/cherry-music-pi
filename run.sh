#!/bin/bash

mount -t cifs -o guest //192.168.1.17/music /music

#cd cherrymusic && python3 cherrymusic --setup
ls ./.config/cherrymusic/cherrymusic.conf

cd cherrymusic
python3 cherrymusic
