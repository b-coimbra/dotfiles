#!/bin/bash
#use --limit-rate=Xk to limit bandwidth hogging
echo "Where to save images in 4shit folder?"
read dir
#use test to see if the parent directory is there or not
if [ ! -e /home/user/.wget/image/4chan/$dir ]
then 
    echo "Directory doesn't exist, make it? [n/y]"
    read answer
    if [ $answer != 'y' ]
    then
        exit
    fi
else
    mkdir -p /home/user/.wget/image/4chan/$dir
fi
#no -nH since the user will be picking the subdirectory rather than having wget lump all board images together. -nh will group images with a seperate directory per board name though, if you want to make this a non-interactive script.
spot=/home/user/.wget/image/4chan/$dir
wget -P $spot\
           -nd -c --exclude-directories="https://boards.4chan.org/*/thread/"\
           -r -l 1 -H -N\
    --secure-protocol=auto --https-only\
    -e robots=off -ER html,s.jpg\
           -D i.4cdn.org -A png,gif,jpg,jpeg,webm $1
echo "Thread $1 Downloaded"