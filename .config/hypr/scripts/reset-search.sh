#!/bin/bash

echo "Killing search"
# pkill hyprshell
pkill vicinae
sleep 1

echo "Starting server"
# hyprshell run &
vicinae server &

