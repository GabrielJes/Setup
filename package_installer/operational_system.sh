#!/bin/bash
source ./functions/function_loading.sh

# Atualizando pacotes do sistema
echo "System package update"
echo
loading sudo apt upgrade -y
sleep 2
echo

source ./packages_install.sh