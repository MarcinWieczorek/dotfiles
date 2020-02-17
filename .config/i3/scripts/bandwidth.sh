#!/bin/bash
if [[ ! -z $1 ]]; then
    INTERFACE=$1
else
    for DEV in `ls /sys/class/net`; do
        if [ -d "/sys/class/net/$DEV/wireless" ]; then
            INTERFACE=$DEV
        fi
    done
fi

R1=`cat /sys/class/net/$INTERFACE/statistics/rx_bytes`
T1=`cat /sys/class/net/$INTERFACE/statistics/tx_bytes`
sleep 1
R2=`cat /sys/class/net/$INTERFACE/statistics/rx_bytes`
T2=`cat /sys/class/net/$INTERFACE/statistics/tx_bytes`
TBPS=`expr $T2 - $T1`
RBPS=`expr $R2 - $R1`
TKBPS=`expr $TBPS / 1024`
RKBPS=`expr $RBPS / 1024`
printf "%3d kB/s" $RKBPS
