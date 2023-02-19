#!/bin/bash
source ./loading.sh
source ./funcions.sh
# Funcoes para instalar os aplicativos:

# Funcao dedicada para instalacao do discord
verify_discord() {
    nome=$app
    pacote=$(snap find $nome | grep $nome )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo $nome "ja instalado! "
     echo
     sleep 1
  else echo 
     echo
     echo "$nome nao foi identificado! "
     echo
     echo "Instalando $nome ."
     sleep 1
     apf=$app
     loading 
     sudo snap install $nome 
     sleep 1
     verify_funcion_snap $apf

  fi
}

# Funcao dedicada para instalacao da steam
verify_steam() {
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
     loading sudo apt install steam
     sleep 1
     verify_funcion $apf

  fi
}

# Funcao dedicada para instalacao do google 
verify_google_chorme() {
    nome="google-chrome" || "google" || "chrome"
    nome_pacote=$app
    pacote=$(dpkg --get-selections | grep "$nome" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo $nome_pacote "ja instalado! "
     sleep 1
     echo
  else echo 
     echo
     echo "$nome_pacote nao foi identificado!"
     echo
     echo "Instalando $nome ."
     sleep 1
     echo "Download em andamento"
     sleep 2
     wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
     loading  sudo dpkg -i google-chrome-stable_current_amd64.deb && sudo apt-get install -f 

     google_chrome

     sleep 1
     verify_funcion $apf
  fi
}

# Funcao dedicada para instalacao vscode 
verify_code() {
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
     loading 
     sudo apt install code -y
     sleep 1
     verify_funcion $apf

  fi
}

# Funcao dedicada para instalacao do spotify
verify_spotify() {
    nome="spotify" || "Spotify" || "spotify"
    nome_pacote=$app
    pacote=$(snap find $nome | grep $nome )
  if [ -n "$pacote" ] ;
    then echo
     echo "$nome_pacote ja instalado! "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $nome_pacote nao encontrado! "
     echo
     echo "Instalando $nome ."
     sleep 1
     apf=$app
     loading sudo snap install $nome --classic
     sleep 1
     verify_funcion $apf
# // \\\

  fi
}

# Menu do pycharm
menu_pycharm () {

echo "Escolha a versão do Pycharm de sua preferência : "
echo
echo "  1 - Pycharm - educational "
echo "  2 - Pycharm - professional "
echo "  3 - Pycharm - community "
echo

read -n 1 -s n
case $n in
  1)  echo "Pycharm - educational "
  echo
  echo "Instalando Pycharm - educational " 
  sleep 1
  loading sudo snap install pycharm-educational --classic
  verify_apps ;;

  2) echo "Pycharm - professional " 
  echo
  echo "Instalando Pycharm - professional " 
  sleep 1
  loading sudo snap install pycharm-professional --classic
  verify_apps ;;

  3) echo "Pycharm - community " 
  echo
  echo "Instalando Pycharm - community " 
  sleep 1
  loading sudo snap install pycharm-community --classic
  verify_apps ;; 
  
  *) echo "invalid option";;
esac

}

# Funcao dedicada para instalacao do pycharm
verify_pycharm() {
    nome="pycharm" || "Pycharm"
    nome_pacote=$app
    pacote=$(snap find $nome | grep $nome )
  if [ -n "$pacote" ] ;
    then echo
     echo "$nome_pacote ja instalado! "
     echo
     sleep 1
  else echo 
     echo
     echo "Pacote $nome_pacote nao encontrado! "
     echo
     echo "Instalando $nome . . ."
     sleep 1
     apf=$app
     menu_pycharm
     sleep 1
     verify_funcion $apf
# //\\
  fi
}

# Funcao dedicada para instalacao do jupyter
verify_jupyter() {
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
     loading 
     sudo apt-get -y  install jupyter
     verify_funcion $apf

  fi
}
