#!/bin/bash
source ./funcions.sh
source ./loading.sh

# Funcoes de verificacao dos pacotes :

# Net-tools
verify_net_tools() {
    nome='net-tools'
    pacote=$(dpkg --get-selections | grep "$nome" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "$nome instalado ! "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote net-tools foi instalado corretamente !"
     echo
     echo "Instalando net-tools novamente . . . ."
     sleep 1
     apf=net-tools
     loading
     sudo apt install net-tools -y
     sleep 1
     verify_funcion $nome

  fi
}

verify_locate_install() {
    nome=$app
    pacote=$(dpkg --get-selections | grep "$nome" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "$nome instalado ! "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $nome nao encontrado !"
     echo
     echo "Instalando $nome . . . ."
     sleep 1
     apf=$app
     loading
     sudo apt install locate -y
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
     echo "$nome instalado "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $nome nao encontrado"
     echo
     echo "Instalando $nome . . . ."
     sleep 1
     apf=$app
     loading 
     sudo apt install vim 
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
     echo "$nome instalado ! "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $nome nao encontrado"
     echo
     echo "Instalando $nome . . . ."
     sleep 1
     apf=$app
     loading 
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
     echo "$nome instalado!"
     echo
     sleep 1
  else echo 
     echo
     echo "$nome nao foi identificado!"
     echo
     echo "Instalando $nome ."
     sleep 1
     apf=$app
     loading 
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
     echo "$nome instalado!"
     echo
     sleep 1
  else echo 
     echo
     echo "$nome nao foi identificado!"
     echo
     echo "Instalando $nome ."
     sleep 1
     apf=$app
     loading 
     sudo apt install wget -y
     sleep 1
     verify_funcion $apf

  fi
}

