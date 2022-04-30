#!/bin/bash

# usage
# dl.sh link sub-directory(optional)
# by default it uses yt-dlp change the $BIN to change it.
# script stores cache in .cache dir
# and keeps a archive just  to prevent duplicate downloads
# archive is located in Music directory named ".download.txt"
# it also downloads thumbnails by default


echo "Artist?"
read -r ARTIST
echo "Album?"
read -r ALBUM
echo "URL?"
read -r URL


# def variable
BASE_DIR=~/
MUSIC_DIR=Music

CACHE_DIR=$BASE_DIR$MUSIC_DIR/.cache
DOWNLOAD_BAK_FILE=$BASE_DIR$MUSIC_DIR.download.txt
FLAGS=" --path $BASE_DIR$MUSIC/$ARTIST/$ALBUM \
        --download-archive $DOWNLOAD_BAK_FILE \
        --no-post-overwrites \
        -cwix \
        --audio-format m4a \
        -o \"%(title)s.%(ext)s\" \
        --embed-thumbnail \
        --cache-dir=$CACHE_DIR \
        --format bestaudio \
        --audio-quality 0 \
        --add-metadata \
        --cookies-from-browser firefox
"
#--ppa "EmbedThumbnail+ffmpeg_o:-c:v mjpeg -vf crop=\"'if(gt(ih,iw),iw,ih)':'if(gt(iw,ih),ih,iw)'\""        
#idk why this not work on anything other than mp3, it should make thumbnail 1x1 instead of 16x9 but it dont

        
BIN=yt-dlp

## exec cmd
echo "$BIN  $FLAGS $URL"
