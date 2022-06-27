#!/bin/bash

notify-send -t 3000 "Playing Video" "$(xclip -selection clipboard -o)";
mpv --ytdl-format='bestvideo[height<=?1440]+bestaudio/best' --fs --speed=1  "$(xclip -selection clipboard -o)"
