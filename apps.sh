#!bin/bash

# Inicio
source ./funcions.sh
sleep 1

# Installer e verify discord
echo 'Verificando discord'
app='discord'
sleep 1
barra_de_loading
verify_apps

# Installer e verify Steam
echo 'Verificando Steam'
app='steam'
sleep 1
barra_de_loading
verify_apps

# || Installer e verify Google-chrome 
echo 'Verificando google-chrome'
app='google-chrome'
sleep 1
barra_de_loading 
verify_google_chorme
sleep 1

# Installer e verify vscode
echo 'Verificando vscode'
app='code'
sleep 1
barra_de_loading 
verify_apps
sleep 1

sudo snap install --classic vscode

sudo snap refresh vscode

sleep 2

uname -m

echo  "################ [  ( Download em andamento )  ] ################"

sleep 2

sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

sleep 1

sudo apt-get update

sudo apt-get install code

echo " ################ [  ( vscode instalado ! )  ] ################"

sleep 2

echo  "################ [  iniciando instalacao da ( Spotify )  ] ################"

sudo snap install spotify

sleep 1

echo  "################ [  instalacao do ( Spotify ) Concluida!   ] ################"

sleep 2

echo  "################ [  iniciando instalacao da ( Netflix )  ] ################"

sudo snap install netflix-viewer

sleep 1

sudo snap install netflix-viewer --candidate

sleep 1

sudo snap install netflix-viewer --edge

sleep 1

sudo snap refresh netflix-viewer


echo  "################ [  instalacao do ( Netflix ) Concluida!  ]  ################"

sleep 3

echo "finalizando aplicativo

Muito obrigado !! " 

exit
