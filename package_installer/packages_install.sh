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
echo "Installing vim"
sleep 1
name_package='vim'
verify_install_packages
install_apt_package
new_verify_install_package $name_package


# Install packages and verify
echo "Installing git"
sleep 1
name_package='git'
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
sleep 1

cd ..
cd ~/Setup/application_installer
source ./app_install.sh