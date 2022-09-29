#!/usr/bin/env bash

#Make sure you have a root cron job to pacman -Sy occasionally


UPDTZ=$(pacman -Qu | wc -l)
echo "$UPDTZ Updates"



#ZZ
