if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 7 ]; then
    exec startx
fi

XDG_CONFIG_HOME="$HOME/.config/"
export XDG_CONFIG_HOME
