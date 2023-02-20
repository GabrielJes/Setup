# Start 
source ./functions/function_loading.sh
source ./functions/functions_sn.sh

# Dependencias 
echo "Loading ."
loading sudo apt install neofetch -y
loading sudo apt install figlet -y 
echo
figlet "Welcome"
sleep 1
sn_start_installer
echo
sleep 1
echo "Starting the package installation"
sleep 1

# Iniciando os pacotes 
source ./operational_system.sh
