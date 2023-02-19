#!/bin/bash

# loading 100

barra_de_loading() {

    #Barra de progresso
    declare -r STEPS=('step1','step2','step3','step4')
    declare -r MAX_STEPS=${#STEPS[@]}

    # Tamanho maximo da barrinha quando completar o loading
    declare -r BAR_TAMANHO="################"

    # Calcula o tamano da string
    declare -r MAX_BAR_TAMANHO=${#BAR_TAMANHO}

    for step in "${!STEPS[@]}"; do
    perc=$(((step + 1) * 100 / MAX_STEPS))

    # Calcula o ultimo caracter da barrinha 
    percBAR=$((perc * MAX_BAR_TAMANHO / 100))
    
    #exibindo barrinha
    echo -n "[${BAR_TAMANHO:0:percBAR}] $perc %  " 
    echo "."

    done
} 

# S/n para continuar ou fechar o comando
sim_ou_nao() {

read -p "Você gostaria de iniciar com os pacotes atuais? (Y/N): " confirm && 
[[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
sleep 1
}

# Mesma funcao de escolha mas dessa vez dedicada apenas a verificacao de pacotes
escolha() {

read -p "O pacote $nome falhou! gostaria de ignorar esse pacote e partir para o proximo ? (Y/N) : " confirm && 
[[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
sleep 1
echo
}

sim_ou_nao_lista() {

read -p "Você gostaria de iniciar com os pacotes e aplicativos atuais? (Y/N): " confirm && 
[[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
sleep 1
}

# fucao para verificar a verificacao esta funcioinando bem, e uma especie de 2 check
verify_funcion(){

nome=$apf
    pacote=$(dpkg --get-selections | grep "$nome" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo $nome" instalado com sucesso! "
     echo
     sleep 1
  else echo
     echo 
     echo "Pacote $nome falhou!"
     escolha  

  fi
}

install_steam() {

echo "Instalando steam "
loading 
sudo dpkg --add-architecture i386 -y
sleep 1
loading 
sudo apt update
sleep 1
loading 
sudo apt install wget gdebi-core libgl1-mesa-glx:i386 -y
sleep 1
echo "Downloading"
sleep 1
wget -O ~/steam.deb http://media.steampowered.com/client/installer/steam.deb
sleep 1
sudo gdebi ~/steam.deb
sleep 1

}