#!/bin/bash

# To test: cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor 

# Path for the service
service_path="/etc/systemd/system/performance-profile.service"

echo "Updating CPU governor to performance"

powerprofilesctl set performance

echo "Setting up service"

# Creating the file for the service
echo "[Unit]
Description=Set power profile to performance
After=power-profiles-daemon.service
Requires=power-profiles-daemon.service

[Service]
Type=oneshot
ExecStart=/usr/bin/powerprofilesctl set performance

[Install]
WantedBy=multi-user.target" > $service_path

# Enabling service.
sudo enable --now performance-profile.service

echo "Checking result"

powerprofilesctl get

##
# Here's a few useful links:
##

# - https://wiki.linuxaudio.org/wiki/system_configuration#cpu_frequency_scaling
# - https://aur.archlinux.org/packages/rtcqs -- Useful for debugging audio bottlenecks
