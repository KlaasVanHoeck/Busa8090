#!/bin/bash
# save as time-signal.sh
# gives a time signal every hour when connected to cron 
time=$(date +%H)
minutes=$(date +%M)
count=0
while test $count -lt $time; do
echo -e "\a"
count=$[$count+1]
sleep 1 # sleep for one second count=$[$count+1]
done
sleep 3
if (($minutes>15)); then
    echo -e "\a"
fi
if (($minutes>30)); then
    echo -e "\a"
fi
if (($minutes>45)); then
    echo -e "\a"
fi

