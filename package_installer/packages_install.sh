#!/bin/bash

cd ~/Setup/package_installer/functions

source ./function_loading.sh
source ./functions_sn.sh
source ./functions_packeges_apt.sh

# Install packages and verify
echo "Installing net-tools"
sleep 1
name_package='net-tools'
verify_install_packages
install_apt_package
new_verify_install_package $name_package


# Install packages and verify
echo "Installing mlocate"
sleep 1
name_package='mlocate'
verify_install_packages
install_apt_package
new_verify_install_package $name_package


# Install packages and verify
echo "Installing snap"
sleep 1
name_package='snap'
verify_install_packages
install_apt_package
new_verify_install_package $name_package


# Install packages and verify
echo "Installing wget "
sleep 1
name_package='wget'
verify_install_packages
install_apt_package
new_verify_install_package $name_package

# Firefox dell
echo "Removing firefox"
sleep 1
name_package='firefox'
fix='/usr/bin'
search='firefox'
verify_remove_firefox
echo
sleep 1

# Install packages and verify
echo "Installing lolcat "
sleep 1
name_package='lolcat'
verify_install_packages
install_apt_package
new_verify_install_package $name_package

cd ..
cd ~/Setup/application_installer
source ./app_install.sh