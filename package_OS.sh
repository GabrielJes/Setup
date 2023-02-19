#!/bin/bash 
source ./funcions_package.sh
source ./loading.sh

# Install dependencies packages
echo " Verificando dependencias" 
sleep 1 
echo

# Start installer ||
# Net-tools installer
app="net-tools"
echo " Verificando net-tools"
loading
sleep 1  
verify_net_tools $app

# plocate installer 
app="locate"
echo " Verificando locate" 
loading  
sleep 1
verify_locate $app

# vim installer 
app="vim"
echo " Verificando vim"
loading 
sudo apt install vim 
sleep 1
verify_vim $app


# git installer 
app="git"
echo " Verificando git"
loading sudo apt install git 
sleep 1
verify_git $app


# snap installer 
app="snap"
echo " Verificando snap"
loading sudo apt install snap 
sleep 1
verify_snap $app


# wget installer 
app="wget"
echo " Verificando wget"
loading sudo apt install wget 
sleep 1
verify_wget $app
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


