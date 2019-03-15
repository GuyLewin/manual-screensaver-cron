#!/bin/bash
MIN_IDLE_TIME=60 # Seconds
idleTime=`/usr/sbin/ioreg -c IOHIDSystem | /usr/bin/awk '/HIDIdleTime/ {print int($NF/1000000000); exit}'`
if [ "$idleTime" -gt "$MIN_IDLE_TIME" ]; then
        (ps aux | grep -v grep | grep ScreenSaverEngine) || open /System/Library/CoreServices/ScreenSaverEngine.app
fi
