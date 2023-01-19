#!/usr/bin/env bash

NPROC=$(nproc)
#
case "$1" in
    --popup)
        notify-send "CPU time (%)" "$(ps axch -o cmd:10,pcpu k -pcpu | head | awk '$0=$0"%"' )"
        ;;
    *)

	    # DIVIDED BY 8 BECAUSE I HAVE 8 CORE CPU, NEED TO FIX TO USE NPROC
        echo " $(grep 'cpu ' /proc/stat | awk '{cpu_usage=($2+$4)*100/($2+$4+$5)/8}
        END {printf "%0.2f%", cpu_usage}')
         $(sensors | grep temp1 | head -1 | awk '{print $2}')"
        ;;
esac
