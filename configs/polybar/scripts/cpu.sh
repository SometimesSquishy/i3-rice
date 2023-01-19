#!/usr/bin/env bash


# Need to test to see if it is always the 12th variable in /proc/stat cpu cuz if it isnt that could mess it up on some machines
# also would be nice to make it keep the core number in a persistent variable so i dont need to run nproc every time this runs
# as that could cause an unneeded load on the system

#
case "$1" in
    --popup)
        notify-send "CPU time (%)" "$(ps axch -o cmd:10,pcpu k -pcpu | head | awk '$0=$0"%"' )"
        ;;
    *)

        echo " $(top -n 1 -b | awk '/^%/{print $2"%"}')
         $(sensors | grep temp1 | head -1 | awk '{print $2}')"
        ;;
esac
