#!env bash

if [[ $# -ne 2 ]]; then
    echo "usage: $0 <goto|move> <index>"
    exit 1
fi

# echo Current Monitor: `bspc query -M -d`
# echo Current Desktop: `bspc query -D -d`
DESKTOP_INDEX=$2
# echo Index demanded: $DESKTOP_INDEX

DESKTOP_NAME=`cat ~/.config/bspwm/desktops | xargs -n1 | sed "$DESKTOP_INDEX"'!d'`
DESKTOP_ID=`bspc query -D -d "$DESKTOP_NAME"`
if [[ $? -eq 1 ]]; then
    # Create new window
    if [[ $1 == "move" ]]; then
        bspc node -d "$DESKTOP_NAME"
        bspc monitor -f -a "$DESKTOP_NAME"
    elif [[ $1 == "goto" ]]; then
        bspc monitor -f -a "$DESKTOP_NAME"
    fi
    ~/.config/bspwm/reorder.sh
else
    # Existing window
    if [[ $1 == "move" ]]; then
        bspc node -d "$DESKTOP_NAME"
    elif [[ $1 == "goto" ]]; then
        bspc desktop $DESKTOP_ID -f
    fi
fi
