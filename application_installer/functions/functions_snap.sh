#!/bin/bash

# Funcao dedicada para instalacao do discord
verify_snap() {
    nome=$name_package
    pacote=$end
    sleep 1
  if [ -n "$pacote" ] ;
  then 
    its_installed='true'
  else 
     its_installed='false'
  fi
}

install_snap_package() {
if [ $its_installed != true ] ; 
then
    echo "snap file $name_package not found! "  
else
    echo "$name_package installed !"
fi
}