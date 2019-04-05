#!/bin/sh
idleTime=`/usr/sbin/ioreg -c IOHIDSystem | /usr/bin/awk '/HIDIdleTime/ {print int($NF/1000000000); exit}'`
if [ "$idleTime" -gt 60 ] && [[ `pmset -g | grep 'sleep prevented by'` != *"sleep prevented by"* ]]; then
        (ps aux | grep -v grep | grep ScreenSaverEngine) || open /System/Library/CoreServices/ScreenSaverEngine.app
fi
