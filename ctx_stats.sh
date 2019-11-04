#!/bin/bash

`ls /proc/|cat| grep ^[0-9]*$ > pids`
NUM_PIDS=$(cat pids | wc -l)
for (( i=1; i<=$NUM_PIDS; i++))
do
    PID=$(cat pids | sed -n ${i}p)
    NAME=$(cat /proc/${PID}/status | grep Name)
    CTX=$(cat /proc/${PID}/status  | grep ctx)
    echo "----------------"
    echo $NAME
    echo $CTX
    echo "----------------"
done

rm pids
