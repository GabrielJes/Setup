#!bin/bash

source ./funcions.sh
source ./loading.sh

verify_code() {
    nome="vscode"
    pacote=$(locate -b "packages.microsoft.com_repos_vscode_dists_stable_InRelease"  | grep "packages.microsoft.com_repos_vscode_dists_stable_InRelease" )
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

verify_code
