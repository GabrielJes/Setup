#!/bin/bash

# Dependencias 
sudo apt install neofetch -y
source ./funcions.sh && sudo apt install figlet -y 
figlet "Bem-vindo"

# loop s/n 
sim_ou_nao

# Import
source ./list.sh
source ./package_OS.sh

