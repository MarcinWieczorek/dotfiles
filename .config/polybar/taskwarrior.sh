#!/usr/bin/zsh
# Source the config so it gets right XDG path
source $HOME/.zshrc

task count due.before:1d status:pending 2>/dev/null
