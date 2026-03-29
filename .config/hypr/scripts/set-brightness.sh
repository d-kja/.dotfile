#!/bin/bash

BRIGHTNESS=$1

ddcutil detect | awk '/^Display/{print $2}' | while read -r display; do
  ddcutil setvcp 10 "$BRIGHTNESS" --display "$display" &
done

wait
