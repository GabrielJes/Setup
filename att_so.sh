#!/bin/bash 

# apresentacao do shell script #

echo '#################################'

sleep 2


echo 'Ola!! Seja bem-vindo ao Teoku =)'

sleep 2

echo 'No Teoku, Os pacotes de atualização são baseados no que eu quiser, caso queira outros aplicativos faca um clone do projeto e mude para os aplicativos de sua preferência. '

sleep 2

echo 'Você gostaria de iniciar com os pacotes atuais?'

echo '[S/N]'

# Perguntando se ele realmente quer usar o app#

x="s"

while [ 1 ];

do

read resposta

sleep 3

if [ $resposta != $x ]; then   ##### arrumar o bugg #####

exit
# print das informacoes sobre o sistema do usuario e versao do kernel # 
else
    echo 'OK! vamos la'

    echo '###################################'

    echo 'A versao do seu sistema e :' 

    cat /etc/os-release

    echo 'com a versao de kernel'

    uname -r

    echo '>>>>>>>>>>>>>>>>>>>>>>>  rodando apt update  <<<<<<<<<<<<<<<<<<<<<<<<<<<<< '

    sudo apt update -y

    sleep 2


    exit
    
fi

done

# Deletando firefox

echo '>>>>>>>>>>>>>>>>>>>>>>>   Deletando firefox   <<<<<<<<<<<<<<<<<<<<<<<<<<<<<' 

sudo apt-get --purge remove firefox -y



