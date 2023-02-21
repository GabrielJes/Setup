#!/bin/bash

source ./funcions_sn.sh
source ./function_loading.sh


# Função que verifica se o aplicativo com nome "name _package" esta ou não instalado
# Se estiver instalado o its_installed recebe true se não recebe false.

verify_install_apps_apt() {
    pacote=$(dpkg --get-selections | sudo find $fix -name $search)
  if [ "$pacote" ] ;
    then 
        its_installed='true'
  else 
        its_installed='false'
  fi
 # //
  if [ $its_installed != true ] ; 
then
    sudo apt install $name_package 
else
    echo "$name_package installed !"
    echo
    sleep 1
fi  

}
verify_install_apps_snap() {
    name=$name_package
    pacote=$(dpkg --get-selections | sudo find $fix -name $search)
  if [ -n "$pacote" ] ;
    then 
        its_installed='true'
  else 
        its_installed='false'
  fi
 # //
  if [ $its_installed == false ] ; 
then
    sudo snap install $name_package --classic
else
    echo "$name_package installed !"
    sleep 1
fi  
  
}

verify_install_google() {
    name=$name_package
    pacote=$(dpkg --get-selections | sudo find /usr -name $name)
  if [ "$pacote" ] ;
    then 
        its_installed='true'
  else 
        its_installed='false'
  fi
 # //
  if [ $its_installed != true ] ; 
then
    google_install
else
    echo "$name_package installed !"
    sleep 1
fi  
  
}

google_install(){

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

menu_pycharm () {

echo "Escolha a versão do Pycharm de sua preferência : "
echo
echo "  1 - Pycharm - educational "
echo "  2 - Pycharm - professional "
echo "  3 - Pycharm - community "
echo
sleep 1

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
  sleep 1
  
  *) echo "invalid option";;
esac

}

verify_install_pycharm() {
    name=$name_package
    pacote=$(dpkg --get-selections | sudo find $fix -name $search)
  if [ "$pacote" ] ;
    then 
        its_installed='true'
  else 
        its_installed='false'
  fi
 # //
  if [ $its_installed != true ] ; 
then
    menu_pycharm
else
    echo "$name_package installed !"
    sleep 1
fi  
  
}