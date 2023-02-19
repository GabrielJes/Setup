#!/bin/bash

# S/n para continuar ou fechar o comando
sim_ou_nao() {

read -p "Você gostaria de iniciar com os pacotes atuais? (Y/N): " confirm && 
[[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
sleep 1
}

# Mesma funcao de escolha mas dessa vez dedicada apenas a verificacao de pacotes
escolha() {

read -p "O pacote $nome falhou! gostaria de ignorar esse pacote e partir para o proximo ? (Y/N) : " confirm && 
[[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
sleep 1
echo
}

sim_ou_nao_lista() {

read -p "Você gostaria de iniciar com os pacotes e aplicativos atuais? (Y/N): " confirm && 
[[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
sleep 1
}

# fucao para verificar a verificacao esta funcioinando bem, e uma especie de 2 check
verify_funcion(){

nome=$apf
    pacote=$(dpkg --get-selections | grep "$nome" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo $nome" instalado com sucesso! "
     echo
     sleep 1
  else echo
     echo 
     echo "Pacote $nome falhou!"
     escolha  

  fi
}
