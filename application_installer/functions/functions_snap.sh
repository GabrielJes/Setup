#!/bin/bash

# Funcao dedicada para instalacao do discord


# se valitation for true
# nao execute o snap
# se valitation for false
# execute o snap


verify_snap(){

  if [ $validation == true ] ;
  then
    echo 
  else [ $validation == false ] ;
  then
    pacote=$endereco_arq
     if [ -n "$pacote" ] ;
    then 
        its_installed='true'
    else 
        its_installed='false'
  fi
  if [ $its_installed != true ] ; 
  then
    echo "snap file $name_package not found! "  
  else
    echo "$name_package installed by snap !"
    
    echo "successful installation"
fi
    
}


