#!/bin/bash                  

sleep 2

echo ">>>>>>>>>  [ firefox deletado com sucesso! ]  <<<<<<<<<<<" 

sleep 1

# lista de instalacao dos apps 

echo ">>>>>>>>>  [ Configuracoes que vao ser instalados ]  <<<<<<<<<<<
//

git
vim
locate
wget
snap

"

sleep 3

echo ">>>>>>> instalando configs <<<<<<<<<<<<"

echo ">>>>>>>>>  [ (git) sendo instalado ]  <<<<<<<<<<<" && sleep 2

sudo apt install git -y 

sleep 1

echo ">>>>>>>>>  [ (vim) sendo instalado ]  <<<<<<<<<<<" && sleep 2

sudo apt install vim -y 

sleep 1

echo ">>>>>>>>>  [ (plocate) sendo instalado ]  <<<<<<<<<<<" && sleep 2

sudo apt install plocate -y


echo ">>>>>>>>>  [ (wget) sendo instalado ]  <<<<<<<<<<<" && sleep 2

sudo apt install wget 

echo ">>>>>>>>>  [ (snap) sendo instalado ]  <<<<<<<<<<<" && sleep 2

sudo apt install snapd

sleep 3

bash apps_installer.sh



