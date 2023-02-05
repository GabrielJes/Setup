#!bin/bash

echo "iniciando atualizacao"

sleep 3

echo "iniciando configuracao"
echo "iniciando instalacao dos aplicativos"
echo " aplicativos que vao ser instalados :
Spotify
Google-chrome
vscode
Steam
Discord
netflix "

sleep 2

echo ">>>>>>>>>>      [  iniciando instalacao do ( discord )  ]       <<<<<<<<<<<"

sudo apt install discord -y 

echo "instalacao do discord concluida"

sleep 1

echo ">>>>>>>>>>      [  iniciando instalacao da ( Steam )  ]       <<<<<<<<<<<"

sudo apt install steam -y

echo "instalacao do steam concluida"

echo  ">>>>>>>>>>      [  iniciando instalacao da ( Google-Chrome )  ]       <<<<<<<<<<<"

sleep 1

echo "Download em andamento"

sleep 2

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

echo  ">>>>>>>>>>      [  iniciando instalacao  ]       <<<<<<<<<<<"

sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo apt-get install -f

echo "instalacao do google-chrome concluida"

sleep 2

echo  ">>>>>>>>>>      [  iniciando instalacao da ( vscode )  ]       <<<<<<<<<<<"

sudo snap install --classic vscode

sudo snap refresh vscode

sleep 2

uname -m

echo  ">>>>>>>>>>      [  ( Download em andamento )  ]       <<<<<<<<<<<"

sleep 2

sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

sleep 1

sudo apt-get update

sudo apt-get install code

echo " >>>>>>>>>>      [  ( vscode instalado ! )  ]       <<<<<<<<<<<"

sleep 2

echo  ">>>>>>>>>>      [  iniciando instalacao da ( Spotify )  ]       <<<<<<<<<<<"

sudo snap install spotify

sleep 1

echo  ">>>>>>>>>>      [  instalacao do ( Spotify ) Concluida!   ]       <<<<<<<<<<<"

sleep 2

echo  ">>>>>>>>>>      [  iniciando instalacao da ( Netflix )  ]       <<<<<<<<<<<"

sudo snap install netflix-viewer

sleep 1

sudo snap install netflix-viewer --candidate

sleep 1

sudo snap install netflix-viewer --edge

sleep 1

sudo snap refresh netflix-viewer


echo  ">>>>>>>>>>      [  instalacao do ( Netflix ) Concluida!  ]       <<<<<<<<<<<"

sleep 3

echo "finalizando aplicativo

Muito obrigado !! " 

exit
