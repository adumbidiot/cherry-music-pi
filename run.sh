#!/bin/bash

mount -t cifs -o guest //192.168.1.17/music /music

ls 
cd music 
ls
cd
cd cherrymusic
#python3 cherrymusic --setup
python3 cherrymusic
