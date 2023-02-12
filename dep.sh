#!/bin/bash 

source ./funcions.sh && sudo apt install figlet -y 
figlet "Bem-vindo"
figlet "ao BMS!"

# loop s/n 
read -p "Você gostaria de iniciar com os pacotes atuais? (Y/N): " confirm && 
[[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

# importando funcao da loading
echo "Instalando dependencias" && sleep 1 

# Inicio da instalacao
app="net-tools"
echo "Instalando net-tools"
barra_de_loading sudo apt install $net -y && sleep 1 && verify_package $net

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

# screensfetch installer 
echo "Instalando screensfetch"
barra_de_loading sudo apt install screensfetch -y && sleep 1

# ASCII installer
echo "Instalando ASCII"
barra_de_loading sudo snap install ascii-image-converter && sleep 1

# Atualizando pacostes 
echo '################ [ Atualizando os pacotes do sistema ] ################' && sleep 1
barra_de_loading sudo apt upgrade -y

# versao do sistema operacional atual
echo '################ [ Setup atual ] ################' && sleep 1
screenfetch

echo "Verificando se todos os pacotes foram instalados com sucesso" && sleep 1

echo "Iniciando processo de instalação dos aplicativos. "

#rodando config 2
source apps_installer.sh


