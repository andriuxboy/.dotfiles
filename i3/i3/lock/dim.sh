#!/bin/sh

primary="$(xrandr | grep primary | cut -d ' ' -f 1)"
xrandr --output "$primary" --brightness .1
sleep 10
xrandr --output "$primary" --brightness 1
