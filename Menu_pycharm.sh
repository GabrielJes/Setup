#!/bin/bash


menu_pycharm(){

echo " Escolha a versão do Pycharm de sua preferência : "
echo
echo "  1 - Pycharm - educational "
echo "  2 - Pycharm - professional "
echo "  3 - Pycharm - community "
echo


read -n 1 -s n
case $n in
  1) echo "Pycharm - educational " ;;
  echo
  echo "Instalando Pycharm - educational "
  barra_de_loading sudo snap install pycharm-educational --classic
  verify_apps

  2) echo "Pycharm - professional " ;;
  echo
  echo "Instalando Pycharm - professional "
  barra_de_loading sudo snap install pycharm-professional --classic
  verify_apps

  3) echo "Pycharm - community " ;;
  echo
  echo "Instalando Pycharm - community "
  barra_de_loading sudo snap install pycharm-community --classic
  verify_apps
  
  *) echo "Opcao invalida ";;
esac

}