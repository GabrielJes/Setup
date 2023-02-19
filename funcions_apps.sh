#!/bin/bash
source ./loading.sh
source ./funcions.sh
# Funcoes para instalar os aplicativos:

# Funcao dedicada para instalacao do discord
verify_discord() {
    nome='discord' || 'Discord'
    pacote=$(snap find $nome | grep $nome )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo $nome "Installed! "
     echo
     sleep 1
  else echo 
     echo
     echo "Package $nome was not installed correctly!"
     echo
     echo "Installing again ."
     sleep 1
     apf=$app
     loading 
     echo
     sudo snap install discord
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
     echo $nome "Installed! "
     echo
     sleep 1
  else echo 
     echo
     echo "Package $nome was not installed correctly!"
     echo
     echo "Installing again $nome ."
     sleep 1
     apf=$app
     loading sudo apt install steam
     sleep 1
     verify_funcion $apf

  fi
}

# Funcao dedicada para instalacao do google 
verify_google_chrome() {
    nome="google-chrome" || "google" || "chrome"
    nome_pacote=$app
    pacote=$(dpkg --get-selections | grep "$nome" )  
    sleep 1
  if [ -n "$pacote" ] ;
    then echo
     echo $nome_pacote "Installed! "
     sleep 1
     echo
  else echo 
     echo
     echo "Package $nome_pacote was not installed correctly!"
     echo
     echo "Installing again $nome ."
     sleep 1
     google_installer
     
  fi
}

# Funcao dedicada para instalacao vscode 
verify_code() {
    nome="vscode"
    pacote=$(locate -b "packages.microsoft.com_repos_vscode_dists_stable_InRelease"  | locate -b "vscode" )
  if [ -n "$pacote" ] ;
    then echo
     echo $nome "Installed! "
     echo
     sleep 1
  else echo 
     echo
     echo "Package $nome was not installed correctly!"
     echo
     echo "Installing again $nome ."
     sleep 1
     echo
     apf=$app
     loading 
     echo
     sudo snap install code --classic 
     sleep 1
     verify_funcion $apf

  fi
}
# Funcao dedicada para instalacao do spotify
verify_spotify() {
    pacote=$(locate -b "snap.spotify.spotify.src" | locate -b "spotify.desktop")
    nome_pacote=$app
  if [ -n "$pacote" ] ;
    then echo
     echo "$nome_pacote Installed! "
     echo
     sleep 1
  else echo 
     echo
     echo "Package $nome_pacote was not installed correctly!"
     echo
     echo "Installing again $nome ."
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
  echo "Installing again Pycharm - educational " 
  sleep 1
  loading sudo snap install pycharm-educational --classic
  verify_apps ;;

  2) echo "Pycharm - professional " 
  echo
  echo "Installing again Pycharm - professional " 
  sleep 1
  loading sudo snap install pycharm-professional --classic
  verify_apps ;;

  3) echo "Pycharm - community " 
  echo
  echo "Installing again Pycharm - community " 
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
     echo "$nome_pacote Installed! "
     echo
     sleep 1
  else echo 
     echo
     echo "Package $nome_pacote was not installed correctly!"
     echo
     echo "Installing again $nome . . ."
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
     echo $nome "Installed! "
     echo
     sleep 1
  else echo 
     echo
     echo "Package $nome was not installed correctly!"
     echo
     echo "Installing again $nome ."
     sleep 1
     apf=$app
     loading 
     sudo apt-get -y  install jupyter
     verify_funcion $apf

  fi
}


google_installer(){
# Installer 
echo "Installing"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sleep 1
sudo dpkg -i google-chrome-stable_current_amd64.deb
echo 
sudo apt-get install -f
sleep 1
# // 
google-chrome

}