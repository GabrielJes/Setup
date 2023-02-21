#!/bin/bash

cd ~/Setup/application_installer/functions
source ./functions_apt.sh


# Install apps and verify
echo "Installing Visual Code ! "
fix='/snap' 
search=code-url-handler.desktop
name_package='code'
verify_install_apps_snap $name_package
sleep 1

# Install apps and verify
echo "Installing Steam ! "
name_package=steam
verify_install_apps_snap $name_package
sleep 1

# Install apps and verify
echo "Installing Discord ! "
name_package=discord
verify_install_apps_apt $name_package
sleep 1

# Install apps and verify
echo "Installing Spotify ! "
name_package=spotify
verify_install_apps_snap $name_package
sleep 1

# Install apps and verify
echo "Installing Pycharm ! "
name_package=pycharm
verify_install_pycharm $name_package
sleep 1

# Install apps and verify
echo "Installing Jupyter ! "
name_package=jupyter
verify_install_apps_apt $name_package
sleep 1

# Install apps and verify
echo "Installing Google-Chrome ! "
name_package=google.chrome
verify_install_google $name_package
sleep 1


