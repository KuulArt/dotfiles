#!/bin/bash
#
# Quickly switch between a given keyboard layout and the US Qwerty one

OTHER_LAYOUT="lv"
CURRENT="$(setxkbmap -query | grep layout | perl -pe 's/^layout: +([^ ]+)$/$1/')"

if [ "$CURRENT" = "us" ] ; then
    setxkbmap -layout "$OTHER_LAYOUT" -variant apostrophe -option ctrl:nocaps
else
    setxkbmap -layout us -option ctrl:nocaps
fi
