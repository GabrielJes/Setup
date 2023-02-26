#!/bin/bash

cd ~/Setup/application_installer/functions
source ./functions_apt.sh


# Install apps and verify
echo "Installing Visual Code ! "
local='/snap' 
search=code-url-handler.desktop
name_package='code'
verify_install_apps_snap $name_package
sleep 1

# Install apps and verify
echo "Installing Steam ! "
local='/usr'
search=steam
name_package=steam
verify_install_apps_apt $name_package
sleep 1

# Install apps and verify
echo "Installing Discord ! "
local='/usr/bin'
search=discord
name_package=discord
verify_install_apps_snap $name_package
sleep 1

# Install apps and verify
echo "Installing Spotify ! "
local='/snap'
search=spotify
name_package=spotify
verify_install_apps_snap $name_package
sleep 1

# Install apps and verify
echo "Installing Pycharm ! "
local='/snap'
search=pycharm
name_package=pycharm
verify_install_pycharm $name_package
sleep 1

# Install apps and verify
echo "Installing Jupyter ! "
local='/usr'
search=jupyter
name_package=jupyter
verify_install_apps_apt $name_package
sleep 1

# Install apps and verify
echo "Installing Google-Chrome ! "
local='/usr/bin'
search=google-chrome
name_package=google.chrome
verify_install_google $name_package
echo
sleep 1

# Install apps and verify
echo "Installing virtualbox ! "
local='/usr/bin'
search=virtualbox
name_package=virtualbox
verify_install_apps_apt
sleep 1

# Install apps and verify
echo "Installing docker ! "
local='/usr/bin'
search=docker
name_package=docker
verify_install_apps_apt
sleep 1
