#!/bin/sh

# This script is run by the Organelle ZOP package installer.

grep -q 'ID=archarm' /etc/os-release
if [ $? -eq 0 ]; then
    oscsend localhost 4001 /oled/aux/Clear ii 3 1
else
    oscsend localhost 4001 /oled/gClear ii 3 1
fi
oscsend localhost 4001 /oled/aux/line/1 s "Installing Birbs"

exit 1
