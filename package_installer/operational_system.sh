#!/bin/bash
source ./functions/function_loading.sh

# Atualizando pacotes do sistema
echo "System package update"
loading sudo apt upgrade -y
echo
sleep 2
echo

source ./packages_install.sh