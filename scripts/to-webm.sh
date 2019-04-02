#!/bin/bash

if [[ $# eq 0 ]]; then
    echo "Usage: sh $0 <input-file> <output>"
    exit 1
else
    ffmpeg -i "$1" -vn -ab 128k -ar 44100 -y "${$2%.webm}.mp3"
fi

