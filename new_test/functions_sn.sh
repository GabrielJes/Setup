#!/bin/bash

sn_ignore_package() {
read -p "Do you want to skip this pack (Y/N): " confirm && 
[[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
sleep 1
}