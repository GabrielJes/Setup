#!/bin/bash 

sudo apt install neofetch -y
source ./funcions.sh && sudo apt install figlet -y 
figlet "Bem-vindo"
figlet "ao BMS!"

# loop s/n 
read -p "Você gostaria de iniciar com os pacotes atuais? (Y/N): " confirm && 
[[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
sleep 1

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
echo 

echo "Verificando se todos os pacotes foram instalados com sucesso" && sleep 1
echo

verify_package $net
verify_package $locate
verify_package $vimm
verify_package $gitt
verify_package $snapp
verify_package $wgett


echo "Iniciando processo de instalação dos aplicativos. "



#rodando config 2
source apps_installer.sh


