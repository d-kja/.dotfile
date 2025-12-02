#!/bin/bash

echo "Killing search"
pkill hyprshell
sleep 1

echo "Starting server"
hyprshell run &

