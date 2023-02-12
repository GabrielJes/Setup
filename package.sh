#!/bin/bash 

tasks_packages(){

# importando funcao da loading
echo "Instalando dependencias" && 
sleep 1 
echo

# Inicio da instalacao
net="net-tools"
app="net-tools"
echo "Instalando net-tools"
barra_de_loading sudo apt install $app -y && sleep 1 && verify_package $app

# plocate installer 
locate="plocate"
app="plocate"
echo "Instalando plocate" 
barra_de_loading sudo apt install plocate -y && sleep 1 && verify_package $app

# vim installer 
vimm="vim"
app="vim"
echo "Instalando vim"
barra_de_loading sudo apt install vim -y && sleep 1 && verify_package $app


# git installer 
gitt="git"
app="vim"
echo "Instalando git"
barra_de_loading sudo apt install git -y && sleep 1 && verify_package $app


# snap installer 
snapp="snap"
app="snap"
echo "Instalando snap"
barra_de_loading sudo apt install snap -y && sleep 1 && verify_package $app


# wget installer 
wgett="wget"
app="wget"
echo "Instalando wget"
barra_de_loading sudo apt install wget -y && sleep 1 && verify_package $app

# Atualizando pacostes 
sleep 1
echo '################ [ Atualizando os pacotes do sistema ] ################' && sleep 1
barra_de_loading sudo apt upgrade -y
sleep 1

# versao do sistema operacional atual
echo '################ [ Setup atual ] ################' && sleep 1
neofetch


source ./apps.sh

}


