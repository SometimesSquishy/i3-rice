#!/bin/bash

CDPATH="$CDPATH":"$HOME"/Music

echo "Remember to use \\ before space"
echo "Artist?"
read -r ARTIST
echo "Album?"
read -r ALBUM
echo "URL?"
read -r URL
# Setting variables such as the URL and where to organize music to

yt-dlp  -f 'ba' -x -P ~/Music/$ARTIST/$ALBUM --embed-thumbnail --cookies-from-browser firefox --add-metadata --audio-format m4a "%(title)s.%(ext)s" --ppa "EmbedThumbnail+ffmpeg_o:-c:v mjpeg -vf crop=\"'if(gt(ih,iw),iw,ih)':'if(gt(iw,ih),ih,iw)'\"" $URL
# -ppa string makes a 1x1 thumbnail
