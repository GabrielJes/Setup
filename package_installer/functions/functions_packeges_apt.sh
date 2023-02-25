#!/bin/bash

source ./functions_sn.sh


# Função que verifica se o aplicativo com nome "name _package" esta ou não instalado
# Se estiver instalado o its_installed recebe true se não recebe false.

verify_install_packages() {
    name=$name_package
    pacote=$(dpkg --get-selections | grep "$name" )  
  if [ -n "$pacote" ] ;
  then 
        its_installed='true'
  else 
        its_installed='false'
  fi  
}

# Se o its não for verdade, quer dizer que o pacote não existe na máquina,
# então ele instala o pacote com apt-get.

install_apt_package() {
if [ $its_installed != true ] ; 
then
    sudo apt-get install $name_package 
else
    echo "Package installed !"
fi
}

# Função que verifica se o aplicativo com nome "name _package" esta ou não instalado
# Se estiver instalado printa successful installation se nao ele pergunta se voce quer ignorar.

new_verify_install_package() {

    name=$name_package
    pacote=$(dpkg --get-selections | grep "$name" )  
  if [ -n "$pacote" ] ;
    then 
        echo "successful installation"
        sleep 1
        echo
  else 
        sn_ignore_package
  fi  
}

verify_remove_firefox() {
    pacote=$(sudo find $fix -name $search)
  if [ "$pacote" ] ;
    then 
        its_installed='true'
  else 
        its_installed='false'
  fi
 # //
  if [ $its_installed == true ] ; 
then
    sudo apt remove $name_package 
    sleep 1
    echo 'ackages will be REMOVED: firefox'
else                          
    echo 
    echo "$name_package not installed !"
    echo
    sleep 1
fi  

}
