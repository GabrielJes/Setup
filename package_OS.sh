#!/bin/bash 

source ./loading.sh
source ./funcions_package.sh

# Start installer ||
# Net-tools installer="net-tools"
echo " Instalando net-tools"
loading  
verify_net_tools

# plocate installer ="locate"
echo "instalando locate"
loading  
verify_locate_install $app

# vim installer ="vim"
echo "Instalando vim"
loading 
sudo apt install vim 
verify_vim $app


# git installer ="git"
echo "Instalando git"
loading sudo apt install git 
verify_git $app


# snap installer 
echo "Instalando snap"
loading sudo apt install snap 
verify_snap $app


# wget installer 
echo "Instalando wget"
loading sudo apt install wget 
verify_wget $app
# finished installing || 

echo 'Atualizando os pacotes do sistema'
echo
loading sudo apt upgrade -y
echo
sleep 2

# versao do sistema operacional atual
echo "Sistema operacional atual"
echo
echo
neofetch
source ./apps.sh


