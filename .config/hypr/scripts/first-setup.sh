#!/bin/bash

# To test: cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor 

# Path for the service
service_path="/etc/systemd/system/rt-audio-setup.service"

echo "Creating bash file for RT Audio"

# Setting up the bash file to run the command on startup
echo 'echo -n performance | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor' | sudo tee /usr/local/bin/rt-audio-setup 
sudo chmod +x /usr/local/bin/rt-audio-setup

echo "Setting up service"

# Creating the file for the service
echo "[Unit]
Description=Prepare system for real-time audio

[Service]
Type=oneshot
ExecStart=/bin/bash /usr/local/bin/rt-audio-setup
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target" > $service_path

# Enabling service.
sudo systemctl enable rt-audio-setup
sudo systemctl start rt-audio-setup

##
# Here's a few useful links:
##

# - https://wiki.linuxaudio.org/wiki/system_configuration#cpu_frequency_scaling
# - https://aur.archlinux.org/packages/rtcqs -- Useful for debugging audio bottlenecks
