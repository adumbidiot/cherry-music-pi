#!/bin/bash

mount -t cifs -o guest //192.168.1.17/music /music

#cd cherrymusic && python3 cherrymusic --setup
vi ./.config/cherrymusic/cherrymusic.conf

cd cherrymusic
python3 cherrymusic
