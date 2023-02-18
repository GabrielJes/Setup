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
     echo "Instalando com outro gerenciador de Pacotes ."
     sleep 1
     apf=$app
     barra_de_loading sudo apt install $nome
     sleep 1
     verify_funcion $apf

  fi

}

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
     sim_ou_nao 

  fi

}

sim_ou_nao() {

read -p "Você gostaria de iniciar com os pacotes atuais? (Y/N): " confirm && 
[[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
sleep 1

}

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
