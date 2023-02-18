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

# Funcao para verificar os pacotes, se ja foram instalados ou se ainda nao estao na maquina
verify_package() {
    nome=$app
    pacote=$(dpkg --get-selections | grep "$nome" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "Pacote $nome instalado com sucesso! "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $nome falhou!"
     echo
     echo "Reinstalando. . . ."
     sleep 1
     apf=$app
     barra_de_loading sudo snap install $nome --classic
     sleep 1
     verify_funcion $apf

  fi

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

}

# Funcao dedicada a verificacao de aplicativos instalados 
verify_apps() {
    nome=$app
    pacote=$(dpkg --get-selections | grep "$nome" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo $nome "ja instalado! "
     echo
     sleep 1
  else echo 
     echo
     echo "$nome nao foi identificado!"
     echo
     echo "Instalando $nome ."
     sleep 1
     apf=$app
     barra_de_loading sudo apt install $nome 
     sleep 1
     verify_funcion $apf

  fi

}

# Funcao dedicada para instalacao do google 
verify_google_chorme() {
    nome=$app
    pacote=$(dpkg --get-selections | grep "$nome" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo $nome "ja instalado! "
     sleep 1
     echo
  else echo 
     echo
     echo "$nome nao foi identificado!"
     echo
     echo "Instalando $nome ."
     sleep 1
     echo "Download em andamento"
     sleep 2
     wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
     echo  "################ [  iniciando instalacao  ] ################"
     barra_de_loading  sudo dpkg -i google-chrome-stable_current_amd64.deb && sudo apt-get install -f 
     google_chrome
     sleep 1
     verify_funcion $apf
    

  fi

}