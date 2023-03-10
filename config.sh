#!/bin/bash

echo 
cd ..
echo alias cat='lolcat ' >> .bashrc
echo alias python='python3 ' >> .bashrc
echo alias run='cd Setup && bash on.sh ' >> .bashrc 
echo alias update='sudo apt-get update '>> .bashrc 
echo alias upgrade='sudo apt upgrade ' >> .bashrc 
echo alias ip='ip a | grep inet ' >> .bashrc
source ~/.bashrc


