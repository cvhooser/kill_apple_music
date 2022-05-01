#!/bin/bash
# nohup ./kill_apple_music.sh > /dev/null 2>&1 &

while true
do
	pid=$(pidof Music)
	if ! [[ -z "$pid" ]];
		then kill -9 $pid;
	fi
	sleep 0.5
done
