#!/bin/bash

sudo apt install neofetch -y
source ./funcions.sh && sudo apt install figlet -y 
figlet "Bem-vindo"
figlet "ao BMS!"

# loop s/n 
read -p "Você gostaria de iniciar com os pacotes atuais? (Y/N): " confirm && 
[[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
sleep 1

source ./package.sh
tasks_packages 
