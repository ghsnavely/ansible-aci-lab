#!/bin/bash

#test ping setup

date
cat ./ip_list_10.txt | while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $Q -eq 0 ]; then
    echo "node $output is up"
    else
    echo "note $output is down"
    fi
done