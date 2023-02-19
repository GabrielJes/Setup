#!/bin/bash

# Start 
source ./loading.sh
source ./list.sh
source ./funcions.sh

# Dependencias 
echo "Loading ."
loading sudo apt install neofetch -y
loading source ./funcions.sh 
loading sudo apt install figlet -y 
figlet "Bem-vindo"

# loop s/n 
sim_ou_nao

# Import
source ./package_OS.sh

