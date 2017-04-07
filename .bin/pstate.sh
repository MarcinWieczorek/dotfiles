#!/bin/bash

pstate_file=/sys/kernel/debug/dri/0/pstate

if [ ! -z $1 ] ; then
    case $1 in
         1)  echo 07 > ${pstate_file}  ;;
         2)  echo 0f > ${pstate_file}  ;;
        -l)  cat ${pstate_file}  ;;
        -h)  echo "pstate [1][2][-l][-h]"  ;;
         *)  echo "unrecognized option, use -h for help"  ;;
    esac
else
    echo "use -h for help or -l to see the pstate file"
fi

