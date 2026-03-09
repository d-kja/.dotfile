#!/bin/bash

sudo pacman -S --asdeps $(pacman -Qi $1 | sed -n '/Optional Deps/,/Required By/p' | grep -oP '^\s+\K[^:]+' | head -n -1)

