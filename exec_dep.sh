#!/bin/bash

# Start 
source ./loading.sh
source ./list.sh

# Dependencias 
loading sudo apt install neofetch -y
source ./funcions.sh && sudo apt install figlet -y 
figlet "Bem-vindo"

# loop s/n 
sim_ou_nao

# Import
source ./package_OS.sh

