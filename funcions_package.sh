#!/bin/bash
source ./funcions.sh

# Funcoes de verificacao dos pacotes :

# Net-tools
verify_net_tools() {
    nome=$app
    pacote=$(dpkg --get-selections | grep "$nome" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "Pacote $nome ja instalado ! "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $nome nao encontrado !"
     echo
     echo "Instalando $nome . . . ."
     sleep 1
     apf=$app
     barra_de_loading 
     sudo apt install net-tools -y
     sleep 1
     verify_funcion $apf

  fi
}

# Plocate
verify_plocate() {
    nome=$app
    pacote=$(dpkg --get-selections | grep "$nome" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "Pacote $nome ja instalado !"
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $nome nao foi encontrado !"
     echo
     echo "Instalando $nome . . . ."
     sleep 1
     apf=$app
     barra_de_loading 
     sudo apt install plocate -y
     sleep 1
     verify_funcion $apf

  fi
}

# Vim
verify_vim() {
    nome=$app
    pacote=$(dpkg --get-selections | grep "$nome" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "Pacote $nome ja instalado "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $nome nao encontrado"
     echo
     echo "Instalando $nome . . . ."
     sleep 1
     apf=$app
     barra_de_loading 
     sudo apt install vim -y
     sleep 1
     verify_funcion $apf

  fi
}

# Git
verify_git() {
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
     barra_de_loading 
     sudo apt install $nome -y
     sleep 1
     verify_funcion $apf

  fi
}

# snap
verify_snap() {
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
     barra_de_loading 
     sudo apt install snap -y
     sleep 1
     verify_funcion $apf

  fi
}

# Wget
verify_wget() {
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
     barra_de_loading 
     sudo apt install wget -y
     sleep 1
     verify_funcion $apf

  fi
}

