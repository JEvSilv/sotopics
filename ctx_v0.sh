#!/bin/bash

if [[ $# -eq 0 ]]
then
   echo "Usage:"
   echo "$0 <core>"
   exit 1
fi

if [[ -z $2 ]]
then
   watch -d -n .2 $0 $1 nw
fi

ps -Leo lastcpu:1,tid,comm | grep "^$1 " | awk '{printf $3": ";system("cut -d\" \" -f3  /proc/"$2"/task/"$2"/schedstat 2>/dev/null")}' | sort -k 1 | column -t
