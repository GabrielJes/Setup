#!/bin/bash 

source ./loading.sh
source ./funcions_package.sh

# Start installer ||
# Net-tools installer="net-tools"
echo "Installing net-tools"
sudo apt-get install net-tools -y
loading  
verify_net_tools 

# plocate installer ="locate"
echo "Installing locate"
sudo apt-get install mlocate -y
loading  
verify_locate_install 

# vim installer ="vim"
echo "Installing vim"
sudo apt-get install vim -y
loading 
verify_vim 


# git installer ="git"
echo "Installing git"
sudo apt-get install git -y
loading 
verify_git 


# snap installer 
echo "Installing snap"
sudo apt-get install snapd -y
loading 
verify_snap 


# wget installer 
echo "Installing wget"
sudo apt-get install wget
loading 
verify_wget 
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


