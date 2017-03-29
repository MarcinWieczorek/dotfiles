#!/bin/bash

i3-dmenu-desktop --dmenu='rofi \
    -dmenu \
    -lines 10 \
    -eh 1 \
    -width 100 \
    -padding 500 \
    -opacity "85" \
    -bw 0 \
    -bc "$bg-color" \
    -bg "$bg-color" \
    -fg "$text-color" \
    -hlbg "$bg-color" \
    -hlfg "#9575cd" \
    -font "System San Francisco Display 13"'
