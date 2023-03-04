#!/bin/bash

echo 
echo "running ..."
alias cat='lolcat' >> .bashrc
alias python='python3' >> .bashrc
alias on='cd /Setup' && 'bash on' >> .bashrc

read -p "install dash to dock? " confirm && 
[[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

mkdir 'dash-to-dock'
cd ~/dash-to-dock
wget https://extensions.gnome.org/extension-data/dash-to-dockmicxgx.gmail.com.v71.shell-extension.zip
unzip unzip dash-to-dockmicxgx.gmail.com.v71.shell-extension.zip 
