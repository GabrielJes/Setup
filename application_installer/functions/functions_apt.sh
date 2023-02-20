#!/bin/bash

source ./funcions_sn.sh


# Função que verifica se o aplicativo com nome "name _package" esta ou não instalado
# Se estiver instalado o its_installed recebe true se não recebe false.

verify_install_apps_apt() {
    name=$name_package
    packages='$(dpkg --get-selections | sudo find /usr -name $name_package ) '
    pacote=$packages
  if [ -n "$pacote" ] ;
    then 
        its_installed='true'
  else 
        its_installed='false'
  fi
 # //
  if [ $its_installed != true ] ; 
then
    sudo apt-get install $name_package 
else
    echo "$name_package installed !"
    sleep 1
fi  
  
}


