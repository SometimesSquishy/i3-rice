
#Workspace startup stuff 
#remember to chmod +x scripts and put them in ~/Tools/scripts/

#terminal to use
TERMINAL="kitty"

# workspace to exec on
WORKSPACE=1

# Setup Workspace
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
$WORKSPACEleep 0.2;

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
