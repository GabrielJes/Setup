#!/bin/bash

sn_ignore_aplication() {
read -p "Do you want to skip this app (Y/N): " confirm && 
[[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
sleep 1
}

sn_start_aplication() {
read -p "packages installed, starting the installation of applications! Do you want to continue ?  (Y/N): " confirm && 
[[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
sleep 1
}