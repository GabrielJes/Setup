#!/bin/bash

sleep 1
sudo apt-get install ubuntu-desktop -y
echo
startx
gnome-terminal -- sudo apt-get install git -y && exit 1
sleep 1
cd ..
gnome-terminal -- cd ~/Setup && bash on.sh


