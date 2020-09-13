#!/bin/sh

# printf "VPN: " && (pgrep -a openvpn$ | head -n 1 | awk '{print $NF }' | cut -d '.' -f 1 && echo down) | head -n 1
name=`nmcli -t connection show|grep "vpn:."|awk -F: '{print $1}'`

[[ -z "$name" ]] \
    && echo "VPN down" \
    || echo -n "$name" | tr '\n' '|'

# if [[ -z "$name" ]]; then
#     echo "VPN down"
# else
#     echo $name
