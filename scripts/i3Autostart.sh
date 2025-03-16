#!/usr/bin/env bash

#Workspace startup stuff 
#remember to chmod +x scripts and put them in ~/Tools/scripts/

#terminal to use
TERMINAL="st"

# workspace to exec on
WORKSPACE=1

# Setup Workspace
#horizontal 1080p
i3-msg "workspace $WORKSPACE; exec $TERMINAL  newsboat -r"
sleep 0.2;
i3-msg "workspace $WORKSPACE; floating disable"
i3-msg "workspace $WORKSPACE; split h"
i3-msg "workspace $WORKSPACE; exec $TERMINAL htop"
sleep 0.2;
i3-msg "resize shrink left 200 px"
sleep 0.2;
i3-msg "workspace $WORKSPACE; split v"
i3-msg "workspace $WORKSPACE; exec $TERMINAL cbonsai -l --life=40 --multiplier=3 -i"
sleep  0.2;

#vertical 1080p
#i3-msg "workspace $WORKSPACE; exec $TERMINAL htop"
#sleep 0.2;
#i3-msg "workspace $WORKSPACE; floating disable"
#i3-msg "workspace $WORKSPACE; split v"
#i3-msg "workspace $WORKSPACE; exec $TERMINAL amdgpu_top"
#sleep 0.2;
#i3-msg "workspace $WORKSPACE; split h"
#i3-msg "workspace $WORKSPACE; exec $TERMINAL cbonsai -l --life=75 --multiplier=6 -i"


# Music Setup, Uncomment if dual monitors
# exec bash ~/Tools/bin/muzix.sh
# Back to Workspace 1
i3-msg "workspace $WORKSPACE"

#----------------------------------------#
# General app launch ....                #
#----------------------------------------#
# Launch Bar
exec polybar mystatus &
#sleep 0.2; 

# Launch Other Random shit
exec redshift -P -O 3400K &
exec watcher --start &
doas rfkill unblock wifi

#To set a wallpaper create directory ~/Pictures/Wallpapers
exec feh --bg-fill --randomize ~/Pictures/Wallpapers
exec --no-start-up dunst

exec picom
exec bash -v ~/Tools/scripts/xkb.sh


#generating new random lock screen using betterlockscreen
exec betterlockscreen -u ~/Pictures/Wallpapers 




#                 /'.    /|    .'\
#           ,._   |+i\  /++\  / +|    ,,
#           |*+'._/+++\/+ ++\/+++<_.-'+|
#      :-.  \ ++++?++ +++++*++++++ +++ /  .-:
#      |*+\_/++++ +++*++ ++++++ ++?++++\_/ +|
#  ,    \*+++++ ++++ +++*+++ ++++ +++ +++++/   ,
#  \'-._> +__+*++__*+++_+__*++ ++__++++__*<_.-'/
#   `>*+++|  \++/  |+*/     `\ +|  |++/  |++++<'
#_,-'+ * +*\  \/  /++|__.-.  |+ |  |+/  /+ +*+'-._
#'-.*+++++++\    /+ ++++++/  / *|  |/  /+ ++++++.-'
#    > *+++++\  /*++++ +/` /`+++|     < *++ +++< 
#_,-'* +++ ++|  |++ +*/` /` +* +|  |\  \+ ++++++'-._
#`-._+ +*++?+|  |+++*|  '-----.+|  |+\  \+* ++ +_.-'
#   _`\++++++|__|+ *+|________|+|__|++\__|++++/`_
#  /*++_+* + +++++ ++ + ++++ +++++ ++ ++++ ++_+*+\
#  '--' `>*+++ +++++ +++++*++++  +++ ++++ ?<' '--'
#       /++_++ ++ ++++++ ++?+ +++++*+++ ++++ \
#       |_/ `\++ ++ +++*++++++++++ ++++*./`\_|
#            /+*.-.*+ +_ ++*+ _+++ .-.* +\
#      jgs   | /   | +/ `\?+/` \*+|    \ |
#             '    \.'    |/    './     '
