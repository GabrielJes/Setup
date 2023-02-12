#!/bin/bash 

sleep 1
echo " #### [ Seja bem-vindo ao Busy! ] #### " | boxes -d peek && sleep 2

# loop s/n 
read -p "Você gostaria de iniciar com os pacotes atuais? (Y/N): " confirm && 
[[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

# importando funcao da loading
echo "Instalando dependencias" && sleep 1 &&  source ./funcions.sh

echo "Instalando net-tools"
barra_de_loading sudo apt install net-tools -y && sleep 1

# plocate installer 
echo "Instalando plocate" 
barra_de_loading sudo apt install plocate -y && sleep 1

# vim installer 
echo "Instalando vim"
barra_de_loading sudo apt install vim -y && sleep 1

# git installer 
echo "Instalando git"
barra_de_loading sudo apt install git -y && sleep 1

# snap installer 
echo "Instalando snap"
barra_de_loading sudo apt install snap -y && sleep 1

# wget installer 
echo "Instalando wget"
barra_de_loading sudo apt install wget -y && sleep 1

# boxes installer 
echo "Instalando boxes"
barra_de_loading sudo apt install boxes -y && sleep 1

# screensfetch installer 
echo "Instalando screensfetch"
barra_de_loading sudo apt install screensfetch -y && sleep 1

# Atualizando pacostes 
echo '################ [ Atualizando os pacotes do sistema ] ################' && sleep 1
barra_de_loading sudo apt upgrade -y

echo '################ [ Versao do sistema OS atual ] ################' && sleep 1

# versao do sistema operacional atual
screenfetch

echo '################ [ versao do kernel ] ################' && sleep 1
# versao do kernel
uname -r
    
echo "Iniciando processo de instalação dos aplicativos. "

#rodando config 2
source apps_installer.sh


