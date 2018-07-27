#!/bin/sh

if [ -z "$DISPLAY" ]; then
  DISPLAY=:0
fi

if [ -z "$XFB_SCREEN" ]; then
	XFB_SCREEN=1024x768x24
fi

# Run Headless XServer
Xvfb $DISPLAY -screen 0 $XFB_SCREEN > /dev/null 2>&1 &

sleep 2

