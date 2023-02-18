#!/bin/bash

sudo apt install neofetch -y
source ./funcions.sh && sudo apt install figlet -y 
figlet "Bem-vindo"
figlet "ao BMS!"

# loop s/n 

sim_ou_nao
source ./package_OS.sh

