#!/bin/sh

DIALOG_RESULT=$(echo -e 'firefox\npavucontrol\ncaja\nlxrandr\nlxappearance' | rofi -dmenu -i -p "Favorite [ GUI ] : " -hide-scrollbar -tokenize -lines 9 -eh 1 -width 40 -location 8 -xoffset 170 -yoffset 70 -padding 30 -disable-history -font "RobotoMono 18")

echo "This result is : $DIALOG_RESULT"
sleep 1;

if [ "$DIALOG_RESULT" = "firefox" ];
then
    exec firefox

elif [ "$DIALOG_RESULT" = "pavucontrol" ];
then
    exec pavucontrol

elif [ "$DIALOG_RESULT" = "lxrandr" ];
then
    exec lxrandr

elif [ "$DIALOG_RESULT" = "caja" ];
then
    exec caja

elif [ "$DIALOG_RESULT" = "lxappearance" ];
then
    exec lxappearance
fi

