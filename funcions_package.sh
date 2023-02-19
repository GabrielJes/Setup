#!/bin/bash
source ./funcions.sh
source ./loading.sh

# Funcoes de verificacao dos pacotes :

# Net-tools
verify_net_tools() {
    app=$app
    pacote=$(dpkg --get-selections | grep "$app" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "$app instalado ! "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $app nao encontrado !"
     echo
     echo "Instalando $app . . . ."
     sleep 1
     apf=$app
     loading
     sudo apt install net-tools -y
     sleep 1
     verify_funcion $apf

  fi
}

verify_locate_install() {
    app=$app
    pacote=$(dpkg --get-selections | grep "$app" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "$app instalado ! "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $app nao encontrado !"
     echo
     echo "Instalando $app . . . ."
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
    app=$app
    pacote=$(dpkg --get-selections | grep "$app" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "$app instalado "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $app nao encontrado"
     echo
     echo "Instalando $app . . . ."
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
    app=$app
    pacote=$(dpkg --get-selections | grep "$app" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "$app instalado ! "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $app nao encontrado"
     echo
     echo "Instalando $app . . . ."
     sleep 1
     apf=$app
     loading 
     sudo apt install $app -y
     sleep 1
     verify_funcion $apf

  fi
}

# snap
verify_snap() {
    app=$app
    pacote=$(dpkg --get-selections | grep "$app" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "$app instalado!"
     echo
     sleep 1
  else echo 
     echo
     echo "$app nao foi identificado!"
     echo
     echo "Instalando $app ."
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
    app=$app
    pacote=$(dpkg --get-selections | grep "$app" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo "$app instalado!"
     echo
     sleep 1
  else echo 
     echo
     echo "$app nao foi identificado!"
     echo
     echo "Instalando $app ."
     sleep 1
     apf=$app
     loading 
     sudo apt install wget -y
     sleep 1
     verify_funcion $apf

  fi
}

