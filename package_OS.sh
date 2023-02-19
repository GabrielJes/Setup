#!/bin/bash 

source ./loading.sh
source ./funcions_package.sh

# Start installer ||
# Net-tools installer="net-tools"
echo " Instalando net-tools"
loading
sleep 1  
verify_net_tools $app

# plocate installer ="locate"
echo "instalando locate"
loading  
sleep 1
verify_locate_install $app

# vim installer ="vim"
echo "Instalando vim"
loading 
sudo apt install vim 
sleep 1
verify_vim $app


# git installer ="git"
echo "Instalando git"
loading sudo apt install git 
sleep 1
verify_git $app


# snap installer 
echo "Instalando snap"
loading sudo apt install snap 
sleep 1
verify_snap $app


# wget installer 
echo "Instalando wget"
loading sudo apt install wget 
sleep 1
verify_wget $app
sleep 1
# finished installing || 

echo 'Atualizando os pacotes do sistema'
sleep 1
echo
loading sudo apt upgrade -y
sleep 1
echo
sleep 2

# versao do sistema operacional atual
echo "Sistema operacional atual"
echo
sleep 1
echo
neofetch
source ./apps.sh


