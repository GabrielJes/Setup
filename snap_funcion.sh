#!/bin/bash

source ./funcions.sh

# Verificando instalacao do spotify
verify_spotify() {
    nome="spotify" || "Spotify" || "spotify"
    nome_pacote=$app
    pacote=$(snap find $nome | grep $nome )
  if [ -n "$pacote" ] ;
    then echo
     echo "$nome_pacote ja instalado! "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $nome_pacote nao encontrado! "
     echo
     echo "Instalando $nome ."
     sleep 1
     apf=$app
     barra_de_loading sudo snap install $nome --classic
     sleep 1
     verify_funcion $apf

  fi

# Verificando instalacao do pycharm
}

verify_pycharm() {
    nome="pycharm" || "Pycharm"
    nome_pacote=$app
    pacote=$(snap find $nome | grep $nome )
  if [ -n "$pacote" ] ;
    then echo
     echo "$nome_pacote ja instalado! "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $nome_pacote nao encontrado! "
     echo
     echo "Instalando $nome ."
     sleep 1
     apf=$app
     menu_pycharm
     sleep 1
     verify_funcion $apf

  fi
}

verify_funcion_snap(){
    nome=$app
    pacote=$(snap find $nome | grep $nome )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo $nome "Installed! "
     echo
     sleep 1
  else echo 
     echo
     echo "Package $nome was not installed correctly!"
     escolha
}