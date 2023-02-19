#!/bin/bash 

source ./loading.sh
source ./funcions_package.sh

# Start installer ||
# Net-tools installer="net-tools"
echo " Verificando net-tools"
loading
sleep 1  
verify_net_tools 

# plocate installer ="locate"
echo " Verificando locate" 
loading  
sleep 1
verify_locate 

# vim installer ="vim"
echo " Verificando vim"
loading 
sudo apt install vim 
sleep 1
verify_vim 


# git installer ="git"
echo " Verificando git"
loading sudo apt install git 
sleep 1
verify_git 


# snap installer ="snap"
echo " Verificando snap"
loading sudo apt install snap 
sleep 1
verify_snap 


# wget installer ="wget"
echo " Verificando wget"
loading sudo apt install wget 
sleep 1
verify_wget 
# finished installing || 

# Atualizando pacotes
sleep 1
echo ' [ Atualizando os pacotes do sistema ] '
sleep 1
echo
loading sudo apt upgrade -y
sleep 1

# versao do sistema operacional atual
echo ' [ Setup atual ] '
sleep 1
echo
neofetch
source ./apps.sh


