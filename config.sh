#!/bin/bash                  

# Deletando o firefox 
echo ">>>>>>>>>>>>>>>  Deletando o firefox   <<<<<<<<<<<<<<<"

sleep 2

sudo apt-get --purge remove firefox -y

echo ">>>>>>> firefox deletado com sucesso! <<<<<<<<" 

sleep 1

# lista de instalacao dos apps 

echo "os apps que serao instalados na maquina sao:

//

homebrew
git
vim
locate
wget
snap
"

"//"

echo ">>>>>>> instalando configs <<<<<<<<<<<<"

echo ">>>>>>>   instalando git   <<<<<<<"

sudo apt install git -y 

sleep 1

echo ">>>>>>>   instalando vim  <<<<<<<"

sudo apt install vim -y 

sleep 1

echo ">>>>>>>   instalando locate   <<<<<<<"

sudo apt install plocate -y


echo ">>>>>>>   instalando wget   <<<<<<<"

sudo apt install wget 

echo ">>>>>> instalando snapd <<<<<<<<"

sudo apt install snapd


exit


