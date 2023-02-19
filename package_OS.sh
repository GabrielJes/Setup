#!/bin/bash 
source ./funcions_package.sh


# Install dependencies packages
echo "Instalando dependencias" 
sleep 1 
echo

# Start installer ||
# Net-tools installer
app="net-tools"
echo "Instalando net-tools"
barra_de_loading 
sudo apt install $app -y
sleep 1 && verify_net_tools $app

# plocate installer 
app="plocate"
echo "Instalando plocate" 
barra_de_loading 
sudo apt install plocate -y
sleep 1 && verify_plocate $app

# vim installer 
app="vim"
echo "Instalando vim"
barra_de_loading 
sudo apt install vim -y
sleep 1 && verify_vim $app


# git installer 
app="git"
echo "Instalando git"
barra_de_loading 
sudo apt install git -y
sleep 1 && verify_git $app


# snap installer 
app="snap"
echo "Instalando snap"
barra_de_loading sudo 
apt install snap -y 
sleep 1 && verify_snap $app


# wget installer 
app="wget"
echo "Instalando wget"
barra_de_loading sudo apt install wget -y
sleep 1 && wget $app
# finished installing || 

# Atualizando pacotes
sleep 1
echo ' [ Atualizando os pacotes do sistema ] ' && sleep 1
barra_de_loading sudo apt upgrade -y
sleep 1

# versao do sistema operacional atual
echo ' [ Setup atual ] ' && sleep 1
neofetch
source ./apps.sh


