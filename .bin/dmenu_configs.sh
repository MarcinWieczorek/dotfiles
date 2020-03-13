#!env bash

choice=`echo bspwm vim vifm zsh sxkhd | xargs -n1 | dmenu`

if [[ -z "$choice" ]]; then
    exit 0
fi

case "$choice" in
    i3) file="$HOME/.config/i3/config" ;;
    i3blocks) file="$XDG_CONFIG_HOME/i3/i3blocks.conf" ;;
    bspwm) file="$XDG_CONFIG_HOME/bspwm/bspwmrc" ;;
    vim) file="$HOME/.vimrc" ;;
    vifm) file="$XDG_CONFIG_HOME/vifm/vifmrc" ;;
    zsh) file="$HOME/.zshrc" ;;
    sxkhd) file="${XDG_CONFIG_HOME}sxhkd/sxhkdrc" ;;
esac

alacritty -e vim "$file"
