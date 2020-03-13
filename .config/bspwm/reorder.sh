#!env bash

for monitor in `bspc query -M`; do
    newo=`bspc query -m $monitor -D --names | ~/.bin/sort-roman.py | xargs`
    bspc monitor $monitor -o $newo
done
