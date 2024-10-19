#!/bin/bash

function is_processRunning(){
	if pgrep -x "$1";then
		return 0
	else
		return 1
	fi
}

function restartProcess(){
	local process="$1"
	echo "$process is not Running. Attempting to start $process process"

	#starting process
	if sudo systemctl start "$process";then
		echo "$process Process starting now"
	else
		echo "$process Failed to start... reattempting again."
	fi
	
}
maximumAttempt=3
attempt=1

while [ $attempt -lt $maximumAttempt ];do
	if is_processRunning "$1";then
		echo "$1 Process is running."
		exit
	else
		restartProcess "$1"
	fi
	
	attempt=$((attempt + 1))

	sleep 5
done

echo "Maximum restart attempts failed, please check process manually"
