#!/bin/bash 

source ./loading.sh
source ./funcions_package.sh

# Start installer ||
# Net-tools installer="net-tools"
echo " Installing net-tools"
loading  
verify_net_tools

# plocate installer ="locate"
echo "Installing locate"
loading  
verify_locate_install $app

# vim installer ="vim"
echo "Installing vim"
loading 
verify_vim $app


# git installer ="git"
echo "Installing git"
verify_git $app


# snap installer 
echo "Installing snap"
verify_snap $app


# wget installer 
echo "Installing wget"
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


