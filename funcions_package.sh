#!/bin/bash
source ./funcions.sh
source ./loading.sh

# Funcoes de verificacao dos pacotes :

# Net-tools
verify_net_tools() {

    name_package='net-tools'
    name=$name_package
    pacote=$(dpkg --get-selections | grep "$name" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "Installed! "
     echo
     sleep 1
  else echo 
     echo
     echo "package $name was not installed correctly!"
     echo
     echo "Installing again ."
     sleep 1
     apf=$name 
     loading
     sudo apt install net-tools -y
     sleep 1
     verify_funcion $name

  fi
}

verify_locate_install() {
    name=$app
    pacote=$(dpkg --get-selections | grep "$name" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "$name instalado ! "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $name nao encontrado !"
     echo
     echo "Instalando $name . . . ."
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
    name=$app
    pacote=$(dpkg --get-selections | grep "$name" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "$name instalado "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $name nao encontrado"
     echo
     echo "Instalando $name . . . ."
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
    name=$app
    pacote=$(dpkg --get-selections | grep "$name" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "$name instalado ! "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $name nao encontrado"
     echo
     echo "Instalando $name . . . ."
     sleep 1
     apf=$app
     loading 
     sudo apt install $name -y
     sleep 1
     verify_funcion $apf

  fi
}

# snap
verify_snap() {
    name=$app
    pacote=$(dpkg --get-selections | grep "$name" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "$name instalado!"
     echo
     sleep 1
  else echo 
     echo
     echo "$name nao foi identificado!"
     echo
     echo "Instalando $name ."
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
    name=$app
    pacote=$(dpkg --get-selections | grep "$name" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "$name instalado!"
     echo
     sleep 1
  else echo 
     echo
     echo "$name nao foi identificado!"
     echo
     echo "Instalando $name ."
     sleep 1
     apf=$app
     loading 
     sudo apt install wget -y
     sleep 1
     verify_funcion $apf

  fi
}

