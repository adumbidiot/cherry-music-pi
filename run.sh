#!/bin/bash

umount -l -t cifs -o guest //192.168.1.17/music /music

cd cherrymusic && python3 cherrymusic --setup
