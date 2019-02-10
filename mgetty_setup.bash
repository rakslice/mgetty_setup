#!/bin/bash
set -e -x

# setup script for mgetty

[ -f /usr/bin/sudo ]

sudo apt-get install mgetty ppp

sudo cp resources/mgetty.service /etc/systemd/system/mgetty.service

sudo systemctl start mgetty.service
sudo systemctl enable mgetty.service

