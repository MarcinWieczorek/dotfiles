#!env bash

choice=`echo bspwm nvim vifm zsh sxkhd polybar | xargs -n1 | dmenu`

if [[ -z "$choice" ]]; then
    exit 0
fi

case "$choice" in
    i3) file="$HOME/.config/i3/config" ;;
    i3blocks) file="$XDG_CONFIG_HOME/i3/i3blocks.conf" ;;
    bspwm) file="${XDG_CONFIG_HOME}/bspwm/bspwmrc" ;;
    nvim) file="${XDG_CONFIG_HOME}/nvim/init.vim" ;;
    vifm) file="${XDG_CONFIG_HOME}/vifm/vifmrc" ;;
    zsh) file="$HOME/.zshrc" ;;
    sxkhd) file="${XDG_CONFIG_HOME}sxhkd/sxhkdrc" ;;
    polybar) file="${XDG_CONFIG_HOME}/polybar/config" ;;
esac

alacritty -e vim "$file"
