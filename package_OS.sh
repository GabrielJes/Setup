#!/bin/bash 

source ./loading.sh
source ./funcions_package.sh

# Start installer ||
# Net-tools installer="net-tools"
#" Verificando net-tools"
loading
sleep 1  
verify_net_tools $app

# plocate installer ="locate"
loading  
sleep 1
verify_locate_install $app

# vim installer ="vim"
#" Verificando vim"
loading 
sudo apt install vim 
sleep 1
verify_vim $app


# git installer ="git"
#" Verificando git"
loading sudo apt install git 
sleep 1
verify_git $app


# snap installer ="snap"
#" Verificando snap"
loading sudo apt install snap 
sleep 1
verify_snap $app


# wget installer ="wget"
#" Verificando wget"
loading sudo apt install wget 
sleep 1
verify_wget $app
# finished installing || 

# Atualizando pacotes
sleep 1
#' [ Atualizando os pacotes do sistema ] '
sleep 1
echo
loading sudo apt upgrade -y
sleep 1

# versao do sistema operacional atual
#' [ Setup atual ] '
sleep 1
echo
neofetch
source ./apps.sh


