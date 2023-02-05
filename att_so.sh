#!/bin/bash 

# apresentacao do shell script #

sleep 2

echo '###############################################################'

echo ' >>>>>>>>>>>[  Ola!! Seja bem-vindo ao Avocato ] <<<<<<<<<<<< '
echo "Seja bem-vindo ao Avocato ! " | boxes -d cat

sleep 2

echo 'No Avocato, Os pacotes de atualização são baseados no que eu quiser,
caso queira outros aplicativos faca um clone do projeto e mude para os aplicativos de sua preferência. '

sleep 2

echo 'Você gostaria de iniciar com os pacotes atuais?'

# Perguntando se ele realmente quer usar o app#
# loop s/n 

read -p "Deseja continuar? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

echo "ok!! BORAA LAAAA ! " | boxes -d peek


echo "carregando" && sleep 2

echo '##############################################' && sleep 1

echo '>>>>>>>>>>>>  [ Versao do sistema operacional atual ]  <<<<<<<<<<<<<<'

## versao do sistema operacional atual

cat /etc/os-release

## versao do kernel

echo '>>>>>>>>>>>>>>>>>>  [ versao de kernel ]  <<<<<<<<<<<<<<<<<<'
uname -r

# atualizacao dos pacotes
echo '>>>>>>>>>>>>>>>>>>>>>>> [ rodando apt update ] <<<<<<<<<<<<<<<<<<<<<<<<<<<<< '

sudo apt update -y
sleep 2
    
# Deletando firefox

echo '>>>>>>>>>>>>>>>>>>>>>>>   Deletando firefox   <<<<<<<<<<<<<<<<<<<<<<<<<<<<<' 
sudo apt-get --purge remove firefox -y

#rodando config 2

bash config.sh 


