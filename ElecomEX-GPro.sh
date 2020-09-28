#!/bin/bash

set -euo pipefail


DeviceID="$(xinput |grep -m 1 "EX-G Pro TrackBall"| cut -d"=" -f 2| cut -d "[" -f 1)"

echo $DeviceID

xinput --set-button-map $DeviceID 1 2 3 4 5 6 7 8 9 10 2 12
xinput --set-prop $DeviceID "libinput Button Scrolling Button" 11
xinput --set-prop $DeviceID "libinput Scroll Method Enabled" 0 0 1
