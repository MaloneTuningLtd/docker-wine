#!/bin/sh

echo "Start waiting on $@"
while pgrep -u root "$@" > /dev/null; do 
		echo "waiting ..."
		sleep 1; 
done
echo "$@ completed"
