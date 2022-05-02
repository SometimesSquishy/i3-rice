#!/bin/bash



CDPATH="$CDPATH":"$HOME"/Music


echo "Remember to use \\ before space"
echo "Artist?"
read -r ARTIST
echo "Album?"
read -r ALBUM
echo "URL?"
read -r URL


#--ppa "EmbedThumbnail+ffmpeg_o:-c:v mjpeg -vf crop=\"'if(gt(ih,iw),iw,ih)':'if(gt(iw,ih),ih,iw)'\""        
#idk why this not work on anything other than mp3, it should make thumbnail 1x1 instead of 16x9 but it dont

yt-dlp  -P ~/Music/$ARTIST/$ALBUM -cwix --audio-format m4a  --embed-thumbnail  --format bestaudio --audio-quality 0 --embed-metadata  --cookies-from-browser firefox $URL






