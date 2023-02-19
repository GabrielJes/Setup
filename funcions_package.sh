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
     echo "package $name_package was not installed correctly!"
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
    name_package='locate'
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
     echo "package $name_package was not installed correctly!"
     echo
     echo "Installing again ."
     sleep 1
     apf=$name 
     loading 
     sudo apt install locate -y
     sleep 1
     verify_funcion $name

  fi  

}

# Vim
verify_vim() {
    name_package='vim'
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
     echo "package $name_package was not installed correctly!"
     echo
     echo "Installing again ."
     sleep 1
     apf=$name 
     loading 
     sudo apt install vim -y
     sleep 1
     verify_funcion $name

  fi
}

# Git
verify_git() {
    name_package='git'
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
     echo "package $name_package was not installed correctly!"
     echo
     echo "Installing again ."
     sleep 1
     apf=$name 
     loading 
     sudo apt install git -y
     sleep 1
     verify_funcion $name

  fi
}

# snap
verify_snap() {
    name_package='snap'
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
     echo "package $name_package was not installed correctly!"
     echo
     echo "Installing again ."
     sleep 1
     apf=$name 
     loading 
     sudo apt install snapd -y
     sleep 1
     verify_funcion $name

  fi
}

# Wget
verify_wget() {
    name_package='wget'
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
     echo "package $name_package was not installed correctly!"
     echo
     echo "Installing again ."
     sleep 1
     apf=$name 
     loading 
     sudo apt install wget -y
     sleep 1
     verify_funcion $name

  fi
}

