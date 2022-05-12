
#Workspace startup stuff 
#remember to chmod +x scripts and put them in ~/Tools/bin/

WORKSPACE=1
TERMINAL="st -f 'Roboto mono:size=9:antialiasing=true'"

# Setup Workspace
i3-msg "workspace $WORKSPACE; exec $TERMINAL  newsboat"
sleep 0.2;
i3-msg "workspace $WORKSPACE; floating disable"
i3-msg "workspace $WORKSPACE; split h"
i3-msg "workspace $WORKSPACE; exec $TERMINAL htop"
sleep 0.2;
i3-msg "resize shrink left 200 px"
sleep 0.2;
i3-msg "workspace $WORKSPACE; split v"
i3-msg "workspace $WORKSPACE; exec $TERMINAL cbonsai -l --life=40 --multiplier=3 -i"
$WORKSPACEleep 0.2;

# Music Setup, Uncomment if dual monitors
# exec bash ~/Tools/bi$WORKSPACEmuzix.sh
$WORKSPACE# Back to Workspace 1
i3-msg "workspace $WORKSPACE"

#----------------------------------------#
# General app launch ....                #
#----------------------------------------#
$WORKSPACE# Launch Bar
exec polybar mystatus -q &
#sleep 0.2; 

# Launch nm-applet
#exec nm-applet &

# Launch Other Random shit
exec redshift -P -O 3400K &
exec watcher --start &

#exec ntfd &
#exec blueman-applet 

