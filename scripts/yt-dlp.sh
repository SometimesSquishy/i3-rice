
#!/bin/bash

# what i use to download my music from yt music

echo "dont use spaces plz"
echo "Artist?"
read ARTIST
ls ~/Music | grep $ARTIST
echo "Album?"
read ALBUM
echo "URL?"
read URL


ls ~/Music/$ARTIST/ | grep $ALBUM

#if [ "$ALBUM" = "$ALBUM" ]; then
#	echo "You have already downloaded an album with this name!"
#	sleep 1
#else
#	echo "new music!"
#fi


echo "press y for mp3 download, worse quality allegedly but album art will actually be 1x1"
echo "press enter to download in highest available quality"
read MP3OR4
echo $MP3OR4

if [ "$MP3OR4" = "y" ]; then
      yt-dlp  --ignore-errors \
	-P ~/Music/$ARTIST/$ALBUM \
	--extract-audio \
	--format bestaudio \
        --audio-format mp3 \
        --audio-quality 0 \
        --embed-metadata \
        --embed-thumbnail \
        --ppa "EmbedThumbnail+ffmpeg_o:-c:v mjpeg -vf crop=\"'if(gt(ih,iw),iw,ih)':'if(gt(iw,ih),ih,iw)'\"" \
	$URL

else
	yt-dlp \
	-P ~/Music/$ARTIST/$ALBUM \
	--extract-audio \
	--embed-thumbnail \
	--format bestaudio \
	--audio-quality 0 \
	--embed-metadata  \
	--cookies-from-browser firefox \
	$URL
fi
#
