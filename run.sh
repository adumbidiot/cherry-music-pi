#!/bin/bash

mount -t cifs -o guest //192.168.1.17/music /music

ls /.local/share/cherrymusic
cd cherrymusic
python3 cherrymusic --update
python3 cherrymusic
